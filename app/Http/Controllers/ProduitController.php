<?php

namespace App\Http\Controllers;

use App\Models\Produit;
use App\Models\Ingredient;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Inertia\Inertia;


class ProduitController extends Controller
{
    public function index()
    {

        try {
            $produits = Produit::with('categorie:id,name')
                ->select('id', 'nomProduit', 'categorie_id', 'contenanceProduit', 'prixProduit' , 'imagePrincipale', 'senteur', 'quantiteProduit', 'created_at')
                ->orderBy('created_at', 'desc')
                ->get();

            return response()->json([
                'success' => true,
                'data' => $produits->map(function ($produit) {
                    return [
                        'Id' => $produit->id,
                        'nomProduit' => $produit->nomProduit,
                        'Categorie' => $produit->categorie->name ?? 'Inconnue',
                        // 'DateAjout' => $produit->created_at->format('d/m/Y'),
                        'DateAjout' => optional($produit->created_at)->format('d/m/Y') ?? 'Date inconnue',
                        'Quantite' => $produit->quantiteProduit
                    ];
                })
            ]);
        } catch (\Exception $e) {
            Log::error('Erreur lors de la récupération des produits: ' . $e->getMessage());
            return response()->json([
                'success' => false,
                'message' => 'Erreur lors de la récupération des produits: ' . $e->getMessage()
            ], 500);
        }
    }

    public function show($id)
    {
        try {
            // $produit = Produit::with('categorie')->find($id);

            // if (!$produit) {
            //     return response()->json([
            //         'success' => false,
            //         'message' => 'Produit non trouvé'
            //     ], 404);
            // }

            // return response()->json([
            //     'success' => true,
            //     'data' => $produit
            // ]);
             $produit = Produit::with(['categorie', 'ingredients'])
            ->findOrFail($id);

        return response()->json([
            'success' => true,
            'data' => [
                'id' => $produit->id,
                'nomProduit' => $produit->nomProduit,
                'categorie' => $produit->categorie->name,
                'sexeCible' => $produit->sexeCible,
                'familleOlfactive' => $produit->familleOlfactive,
                'quantiteProduit' => $produit->quantiteProduit,
                'quantiteAlerte' => $produit->quantiteAlerte,
                'contenanceProduit' => $produit->contenanceProduit,
                'senteur' => $produit->senteur,
                'prixProduit' => $produit->prixProduit,
                'descriptionProduit' => $produit->descriptionProduit,
                'modeUtilisation' => $produit->modeUtilisation,
                'particularite' => $produit->particularite,
                'personnalite' => $produit->personnalite,
                'imagePrincipale' => $produit->imagePrincipale,
                'estDisponible' => $produit->estDisponible ? "Disponible" : "Indisponible",
                'created_at' => $produit->created_at->format('d/m/Y'),
                'ingredients' => $produit->ingredients // Assurez-vous que la relation est définie dans le modèle Produit
            ]
        ]);
        } catch (\Exception $e) {
            Log::error('Erreur lors de la récupération du produit: ' . $e->getMessage());
            return response()->json([
                'success' => false,
                'message' => 'Erreur lors de la récupération du produit: ' . $e->getMessage()
            ], 500);
        }
    }

    public function store(Request $request)
    {
        try {
            $validated = $request->validate([
                'nom' => 'required|string|max:100',
                'categorie_id' => 'required|integer|exists:categorie,id',
                'sexe' => 'required|in:Homme,Femme,Mixte',
                'famille_olfactive' => 'required|string|max:50',
                'quantite' => 'required|integer|min:0',
                'contenance' => 'required|string|max:20',
                'senteur' => 'sometimes|array',
                'quantite_alerte' => 'required|integer|min:0',
                'prix' => 'required|numeric|min:0.01',
                'description' => 'nullable|string',
                'image_url' => 'nullable|url|max:255',
                'personnalite' => 'nullable|string|max:100',
                'mode_utilisation' => 'nullable|string',
                'particularites' => 'nullable|string',
                'ingredients' => 'required|array',
                'ingredients.*' => 'exists:ingredients,id',
            ]);

            $sexeCible = match($validated['sexe']) {
                'Homme' => 'Homme',
                'Femme' => 'Femme',
                'Mixte' => 'Unisexe',
                default => 'Unisexe'
            };

            $produit = Produit::create([
                'categorie_id' => $validated['categorie_id'],
                'nomProduit' => $validated['nom'],
                'sexeCible' => $sexeCible,
                'familleOlfactive' => $validated['famille_olfactive'],
                'quantiteProduit' => $validated['quantite'],
                'contenanceProduit' => $validated['contenance'],
                'senteur' => $validated['senteurs'][0] ?? null,
                'quantiteAlerte' => $validated['quantite_alerte'],
                'prixProduit' => $validated['prix'],
                'descriptionProduit' => $validated['description'],
                'imagePrincipale' => $validated['image_url'],
                'personnalite' => $validated['personnalite'],
                'modeUtilisation' => $validated['mode_utilisation'],
                'particularite' => $validated['particularites'],
                'estDisponible' => true,
                'dateAjoutProduit' => now()
            ]);

            // Attach the ingredients to the product
            $produit->ingredients()->attach($validated['ingredients']);

            return response()->json([
                'success' => true,
                'data' => $produit
            ], 201);
        } catch (\Exception $e) {
            Log::error('Erreur lors de la création du produit: ' . $e->getMessage());
            return response()->json([
                'success' => false,
                'message' => 'Erreur lors de la création du produit: ' . $e->getMessage()
            ], 500);
        }
    }

    public function update(Request $request, $id)
    {
        try {
            $validated = $request->validate([
                'nom' => 'sometimes|string|max:100',
                'categorie_id' => 'sometimes|integer|exists:categorie,id',
                'sexe' => 'sometimes|in:Homme,Femme,Mixte',
                'famille_olfactive' => 'sometimes|string|max:50',
                'quantite' => 'sometimes|integer|min:0',
                'contenance' => 'sometimes|string|max:20',
                'senteur' => 'sometimes|array',
                'quantite_alerte' => 'sometimes|integer|min:0',
                'prix' => 'sometimes|numeric|min:0.01',
                'description' => 'nullable|string',
                'image_url' => 'nullable|url|max:255',
                'personnalite' => 'nullable|string|max:100',
                'mode_utilisation' => 'nullable|string',
                'particularites' => 'nullable|string',
                'ingredients' => 'sometimes|array',
                'ingredients.*' => 'exists:ingredients,id',
            ]);

            $produit = Produit::findOrFail($id);

            $produit->update($validated);

            // Sync the ingredients to handle updates
            if (isset($validated['ingredients'])) {
                $produit->ingredients()->sync($validated['ingredients']);
            }

            return response()->json([
                'success' => true,
                'data' => $produit
            ]);
        } catch (\Exception $e) {
            Log::error('Erreur lors de la mise à jour du produit: ' . $e->getMessage());
            return response()->json([
                'success' => false,
                'message' => 'Erreur lors de la mise à jour du produit: ' . $e->getMessage()
            ], 500);
        }
    }

    public function destroy($id)
    {
        try {
            $produit = Produit::findOrFail($id);
            $produit->delete();

            return response()->json([
                'success' => true,
                'message' => 'Produit supprimé avec succès'
            ]);
        } catch (\Exception $e) {
            Log::error('Erreur lors de la suppression du produit: ' . $e->getMessage());
            return response()->json([
                'success' => false,
                'message' => 'Erreur lors de la suppression du produit: ' . $e->getMessage()
            ], 500);
        }
    }

//     public function parfumsDeCorps()
// {
//     // On récupère tous les produits de type "parfum de corps"
//     $produits = \App\Models\Produit::whereHas('categorie', function ($query) {
//         $query->where('name', 'Parfum de corps');
//     })
//     ->with('categorie:id,name') // optionnel : charge la catégorie
//     ->get();

//     return Inertia::render('BodyPerfume', [
//         'products' => $produits,
//     ]);
// }
public function parfumsDeCorps()
{

    $produits = \App\Models\Produit::with('categorie:id,name')
        ->where('senteur', 'like', '%corporelle%')
        ->select([
            'id',
            'categorie_id',
            'nomProduit',
            'contenanceProduit',
            'prixProduit',
            'descriptionProduit',
            'imagePrincipale',
            'senteur',
        ])
        ->get();

    return Inertia::render('BodyPerfume', [
        'products' => $produits,
    ]);
}
public function import(Request $request)
    {
        $data = $request->all();

        foreach ($data as $item) {
            $validator = Validator::make($item, [
                'Nom' => 'required|string|max:100',
                'Catégorie' => 'required|exists:categorie,id',
                'Description' => 'nullable|string',
                'Quantité' => 'required|integer|min:0',
                'Contenance' => 'required|string|max:20',
                'Sexe' => 'required|in:Homme,Femme,Unisexe',
                'Personnalité' => 'nullable|string|max:100',
                'Famille Olfactive' => 'nullable|string|max:50',
                'Quantité Alerte' => 'required|integer|min:0',
                'Prix' => 'required|numeric|min:0',
                'Image Principale' => 'nullable|string|max:255',
                'Mode d\'utilisation' => 'nullable|string',
                'Particularité' => 'nullable|string',
                'Senteurs' => 'nullable|string',
                'Ingrédients' => 'required|string', // Assurez-vous que les ingrédients sont requis
            ]);

            if ($validator->fails()) {
                return response()->json([
                    'success' => false,
                    'message' => 'Erreur de validation des données',
                    'errors' => $validator->errors()
                ], 422);
            }

            // Créer le produit
            $produit = Produit::create([
                'nomProduit' => $item['Nom'],
                'categorie_id' => $item['Catégorie'],
                'descriptionProduit' => $item['Description'],
                'quantiteProduit' => $item['Quantité'],
                'contenanceProduit' => $item['Contenance'],
                'sexeCible' => $item['Sexe'],
                'personnalite' => $item['Personnalité'],
                'familleOlfactive' => $item['Famille Olfactive'],
                'quantiteAlerte' => $item['Quantité Alerte'],
                'prixProduit' => $item['Prix'],
                'imagePrincipale' => $item['Image Principale'],
                'modeUtilisation' => $item['Mode d\'utilisation'],
                'particularite' => $item['Particularité'],
                'senteur' => $item['Senteurs'],
            ]);

            // Associer les ingrédients au produit
            if (isset($item['Ingrédients'])) {
                $ingredientIds = array_map('trim', explode(',', $item['Ingrédients']));
                $produit->ingredients()->attach($ingredientIds);
            }
        }

        return response()->json(['message' => 'Données importées avec succès']);
    }

}