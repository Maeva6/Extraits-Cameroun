<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Foundation\Application;
use Illuminate\Support\Facades\Route;
use Inertia\Inertia;
use Illuminate\Http\Request;
use App\Http\Controllers\UserController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\CommandeController;
use App\Http\Controllers\IngredientController;
use App\Http\Controllers\RecommendationController;
use App\Models\Produit;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ProduitController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\Profile\PasswordController;
// use App\Http\Controllers\UserController;
use App\Http\Controllers\CategorieController;
use App\Http\Controllers\FournisseurController;
use App\Http\Controllers\FormuleController;
use App\Http\Controllers\ReapprovisionnementController;
use App\Http\Controllers\ProductionController;
use App\Http\Controllers\EmployeController;
use App\Http\Controllers\PermissionController;
use App\Http\Controllers\ClientController;
use App\Http\Controllers\RapportController;
use App\Http\Controllers\PanierController;
use App\http\controllers\FavoriteController;
use App\Http\Controllers\AccessoireController;
use App\Http\Controllers\ServiceController;
use App\Http\Controllers\LocalisationController;
use App\Http\Controllers\AffectationController;


// 🌐 Pages publiques
Route::get('/', function () {
    return Inertia::render('Welcome', [
        'canLogin' => Route::has('login'),
        'canRegister' => Route::has('register'),
        'laravelVersion' => Application::VERSION,
        'phpVersion' => PHP_VERSION,
    ]);
});

// 🎯 Route QUIZ publique
Route::get('/quiz/resultat', [RecommendationController::class, 'result']);
Route::get('/quiz/fragrance-result', fn () => Inertia::render('FragranceQuizStepfinal'));
Route::get('/quiz/ingredients', fn () => Inertia::render('FragranceQuizStep2'));
Route::get('/quiz/senteurs', fn () => Inertia::render('FragranceQuizStep3'))->name('quiz.senteurs');
Route::get('/quiz/senteurs-homme', fn () => Inertia::render('FragranceQuizStep2Homme'))->name('quiz.senteurs');
Route::get('/famille/parfums-dambiance', fn () => Inertia::render('HomeFragrance'))->name('senteurs');
Route::get('/famille/parfums-de-corps', fn () => Inertia::render('BodyPerfume'))->name('senteurs');
Route::get('/famille/cosmetiques', fn () => Inertia::render('Cosmetiques'))->name('senteurs');
Route::get('/services/gift-set', fn () => Inertia::render('SpecialGiftSet'))->name('senteurs');
Route::get('/notre-histoire', fn () => Inertia::render('About'))->name('about');
Route::get('/contact', fn () => Inertia::render('Contact'))->name('contact');
// Route::get('/famille/accessoires', fn () => Inertia::render('Accessories'))->name('accessoires');
Route::get('/famille/accessoires', [AccessoireController::class, 'index'])->name('accessoires.index');
Route::get('/accessoire/{slug}', [AccessoireController::class, 'show'])->name('accessoire.show');
// Route::get('/product/{slug}', function ($slug) {
//     return Inertia::render('ProductPage', [
//         'slug' => $slug
//     ]);
// });
Route::get('/famille/parfums-de-corps', [ProduitController::class, 'parfumsDeCorps']);
Route::get('/body-perfume', [ProductController::class, 'bodyPerfume'])->name('body.perfume');
// Route::get('/product/{id}', [ProduitController::class, 'show']);
Route::get('/product/{id}', [ProductController::class, 'show'])->name('product.show');
Route::get('/famille/parfums-dambiance', [ProductController::class, 'homeFragrance']);




// ✅ Routes ouvertes aux invités
Route::middleware(['guest'])->group(function () {
    Route::get('/register', [RegisteredUserController::class, 'create'])->name('register');
    Route::post('/register', [RegisteredUserController::class, 'store']);
});

// 🔒 Routes nécessitant une authentification
Route::middleware(['auth'])->group(function () {
    Route::get('/dashboard', fn () => Inertia::render('Dashboard'))->name('dashboard');

    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

    Route::get('/find-my-fragrance', fn () => Inertia::render('FragranceQuizStep1'))->name('quiz');
    Route::get('/fragrance-step2-homme', fn () => Inertia::render('FragranceQuizStep2Homme'))->name('quiz');

    // Route::inertia('/utilisateur', 'User/UserDashboard')->name('user.dashboard');
      Route::get('/user-dashboard', [UserController::class, 'index'])->name('user.dashboard');
    Route::inertia('/mes-favoris', 'FavoritesPage')->name('favorites');
    Route::get('/mes-favoris', [FavoriteController::class, 'index'])->middleware('auth');

    Route::get('/user-dashboard', [CommandeController::class, 'dashboard'])->name('user.dashboard');


    Route::get('/checkout', fn () => Inertia::render('Checkout'))->name('checkout');
    Route::post('/orders', [CommandeController::class, 'store'])->name('orders.store');
    Route::get('/mes-commandes', [CommandeController::class, 'index'])->name('orders.index');
    // Route::get('/admin/commandes', [CommandeController::class, 'store'])->name('orders.show');

    Route::get('/quiz/ingredients-data', [IngredientController::class, 'list'])->name('quiz.ingredients.data');

    Route::post('/logout', [\App\Http\Controllers\Auth\AuthenticatedSessionController::class, 'destroy'])->name('logout');

});
Route::middleware(['auth'])->group(function () {
    Route::put('/password', [PasswordController::class, 'update'])->name('password.update');
    // Route::get('/commandes/admin', fn () => Inertia::render('Admin/commandesAdmin'))->name('produit');
});


// Route::middleware('api')->group(function () {
//     Route::post('/ingredients', [IngredientController::class, 'store']);
// });
// Route::post('/ingredients', [IngredientController::class, 'store']);
 Route::get('/pages/pagesLab/ingredientLab', fn () => Inertia::render('ingredientLab'))->name('quiz');

Route::middleware('auth')->group(function () {
    Route::post('/ingredients', [IngredientController::class, 'store']);
});
//Recuperer les elements de la table ingredients a fin de les afficher
// Route::get('/quiz/ingredients-data', [IngredientController::class, 'index']);
// Route::put('/ingredients/{id}/reapprovisionner', [IngredientController::class, 'reapprovisionner']);
// Route::get('/ingredients/{id}', [IngredientController::class, 'show']);



Route::middleware(['auth'])->group(function () {
    Route::get('/dashboard-admin', function () {
        $user = Auth::user();

        if (!in_array($user->role, ['superadmin', 'administrateur', 'employe'])) {
            abort(403);
        }

        return Inertia::render('Admin/Dashboard', [
            'user' => $user,
        ]);
    })->name('admin.dashboard');
});
Route::middleware(['auth'])->get('/admin/client-stats', [AdminController::class, 'clientStats'])->name('admin.client-stats');

Route::middleware(['auth'])->get('/dashboard', function () {
    $user = Auth::user();
    if (in_array($user->role, ['superadmin', 'administrateur', 'employe'])) {
        return redirect('/dashboard-admin');
    }

    return Inertia::render('Dashboard');
})->name('dashboard');

Route::middleware(['auth'])->group(function () {
    Route::get('/commandes/admin', [AdminController::class, 'index1']);
    // Route::get('/utilisateur/admin', [AdminController::class, 'accesUtilisateur'])->name('acces.utilisateur');
    // Route::get('/formulairecommande/admin', fn () => Inertia::render('formulaire/formulaireCommande'))->name('produit');
    Route::post('/admin/commandes', [CommandeController::class, 'store']);

    
Route::get('/formulairecommande/admin', [CommandeController::class, 'create'])->name('commande.create');
Route::get('/produits/admin', fn () => Inertia::render('Admin/produitAdmin'))->name('produit');
Route::get('/formulaireproduit/admin', fn () => Inertia::render('formulaire/formulaireProduit'))->name('produit');

Route::get('/ingredients/admin', fn () => Inertia::render('Admin/ingredientLab'))->name('produit');
Route::get('/formulaireingredient/admin', fn () => Inertia::render('formulaire/formulaireIngredients'))->name('produit');

Route::get('/fournisseurs/admin', fn () => Inertia::render('Admin/fournisseurAdmin'))->name('produit');
Route::get('/formulairefournisseur/admin', fn () => Inertia::render('formulaire/formulaireFournisseur'))->name('produit');

Route::get('/formules/admin', fn () => Inertia::render('Admin/formuleAdmin'))->name('produit');
Route::get('/formulaireformule/admin', fn () => Inertia::render('formulaire/formulaireFormule'))->name('produit');

Route::get('/reapprovisionnements/admin', fn () => Inertia::render('Admin/reapprovisionnementAdmin'))->name('produit');
Route::get('/formulairereapprovisionnment/admin', fn () => Inertia::render('formulaire/formulaireReapprovisionnementIngredient'))->name('produit');

Route::get('/ventes/admin', fn () => Inertia::render('Admin/venteAdmin'))->name('produit');

Route::get('/employes/admin', fn () => Inertia::render('Admin/employeAdmin'))->name('produit');

Route::get('/clients/admin', fn () => Inertia::render('Admin/clientAdmin'))->name('clients.admin');

Route::get('/historique/admin', fn () => Inertia::render('Admin/historiqueAdmin'))->name('produit');

Route::get('/rapport/admin', fn () => Inertia::render('Admin/rapportAdmin'))->name('produit');

Route::get('/accesutilisateur/admin', fn () => Inertia::render('Admin/accesUtilisateurAdmin'))->name('produit');

Route::get('/productions/admin', fn () => Inertia::render('Admin/productionAdmin'))->name('produit');
Route::get('/formulaireproduction/admin', fn () => Inertia::render('formulaire/formulaireProduction'))->name('produit');

Route::get('/formulaireclient/admin', fn () => Inertia::render('formulaire/formulaireClient'))->name('produit');
});

Route::middleware('api')->prefix('')->group(function () {
    // Produits
    Route::get('produits', [ProduitController::class, 'index']);
    Route::get('produits/{id}', [ProduitController::class, 'show']);
    Route::post('produits', [ProduitController::class, 'store']);
    Route::put('produits/{id}', [ProduitController::class, 'update']);
    Route::delete('produits/{id}', [ProduitController::class, 'destroy']);
    Route::get('produits/search', [ProduitController::class, 'search']);
    
    // Catégories
    Route::get('categories', [CategorieController::class, 'index']);
    Route::post('categories', [CategorieController::class, 'store']);
});
//API pour les ingredients
Route::middleware('api')->group(function () {
    Route::post('/ingredients', [IngredientController::class, 'store']);
});
//Recuperer les elements de la table ingredients a fin de les afficher
Route::get('/ingredients', [IngredientController::class, 'index']);
Route::put('/ingredients/{id}/reapprovisionner', [IngredientController::class, 'reapprovisionner']);
Route::get('/ingredients/{id}', [IngredientController::class, 'show']);

//POUR les fournisseurs
Route::post('/fournisseurs', [FournisseurController::class, 'store']);
Route::get('/fournisseurs', [FournisseurController::class, 'index']);
Route::delete('/fournisseurs/{id}', [FournisseurController::class, 'destroy']);
Route::get('/fournisseurs/{id}', [FournisseurController::class, 'show']);

//Pour les formules: 
Route::post('/formules', [FormuleController::class, 'store']);
Route::get('/formules', [FormuleController::class, 'index']);
Route::get('/formules/{id}', [FormuleController::class, 'show']);

//API pour reapprovisionnements
Route::get('/reapprovisionnements', [ReapprovisionnementController::class, 'index']);
Route::get('/reapprovisionnements/{id}', [ReapprovisionnementController::class, 'show']);


//Pour la productions: 
//Pour envoyer les elements de la production dans la base de donnees
Route::apiResource('productions', ProductionController::class)->only(['index', 'store']);

Route::get('/productions', [ProductionController::class, 'index']);
Route::post('/productions', [ProductionController::class, 'store']);
Route::get('/productions/{id}', [ProductionController::class, 'show']);
Route::delete('/productions/{id}', [ProductionController::class, 'destroy']);

Route::get('/employes/admin', fn () => Inertia::render('Admin/employeAdmin'))->name('produit');
Route::get('/formulaireemploye/admin', fn () => Inertia::render('formulaire/formulaireEmploye'))->name('produit');
Route::post('/admin/users', [UserController::class, 'store'])->name('users.store');

//acces utilisateur
Route::get('/recupeemploye', [UserController::class, 'recupeEmployes']);
Route::get('/users', [UserController::class, 'index']);
 Route::post('/users', [UserController::class, 'store'])->name('users.store');
Route::get('/employes-json', [UserController::class, 'recupeEmployes']);
 //Pour supprimer un employe
Route::delete('/recupeemploye/{id}', [EmployeController::class, 'destroy'])->middleware('auth');
Route::post('/admin/users/{user}/permissions', [PermissionController::class, 'updatePermissions'])->name('admin.users.permissions');

//affichage des utilisateurs connectés
Route::middleware(['web', 'auth'])->group(function () {
    Route::get('/accesutilisateur/admin', [AdminController::class, 'accesUtilisateur'])->name('acces.utilisateur');
    Route::get('/clients/admin', [AdminController::class, 'client'])->name('client.admin');
    Route::get('/rapport/admin', [AdminController::class, 'rapport'])->name('rapport.admin');
    Route::get('/historique/admin', [AdminController::class, 'historique'])->name('client.admin');
    Route::get('/employes/admin', [AdminController::class, 'employes'])->name('employe.admin');
    Route::get('/produits/admin', [AdminController::class, 'produits'])->name('produits.admin');
    Route::get('/ventes/admin', [AdminController::class, 'vente'])->name('ventes.admin');
    Route::get('/ingredients/admin', [AdminController::class, 'ingredientLab'])->name('ingredient.lab');
    Route::get('/productions/admin', [AdminController::class, 'productions'])->name('production.admin');
    Route::get('/fournisseurs/admin', [AdminController::class, 'fournisseur'])->name('fournisseur.admin');
    Route::get('/formules/admin', [AdminController::class, 'formules'])->name('formule.commande');
    Route::get('/reapprovisionnements/admin', [AdminController::class, 'reapprovisionnement'])->name('reapprovisionnement.admin');


});

Route::get('/clients/create', [ClientController::class, 'create'])->name('clients.create');
Route::post('/clients', [ClientController::class, 'store'])->name('clients.store');

//Pour affichage des differents elements des clients
Route::get('/clients', [ClientController::class, 'index1'])->name('clients.index');
Route::delete('/clients/{id}', [ClientController::class, 'destroy']);

//POur la page des ventes
//Pour recuperer les donnees qui sont affichees dans le diagramme de ventes hebdomadaires
Route::get('/ventes-hebdomadaires', [CommandeController::class, 'ventesHebdomadaires']);

//Pour recuperer les donnees qui sont affichees dans le tableau des ventes 
Route::get('/infoventes', [CommandeController::class, 'getVentes']);
Route::delete('/ventedestroy/{id}', [CommandeController::class, 'destroy']);

//Recuperation des elements des cadres de statistiques
Route::get('/rapport-data', [RapportController::class, 'getRapportData']);

//Recuperation des 5 produits les plus vendus
Route::get('/top-produits-vendus', [RapportController::class, 'getTopProduitsVendus']);

//Recuperation des produits par categorie
Route::get('/ventes-par-categorie-senteur', [RapportController::class, 'getVentesParCategorieSenteur']);

Route::get('/details-ventes', [RapportController::class, 'getDetailsVentes']);


Route::middleware('auth')->group(function () {
    Route::get('/panier', [PanierController::class, 'index']);
    Route::post('/panier/ajouter', [PanierController::class, 'ajouter']);
    Route::delete('/panier/{produit_id}', [PanierController::class, 'supprimer']);
    Route::delete('/panier', [PanierController::class, 'vider']);
    
    Route::post('/favorites', [FavoriteController::class, 'store'])->middleware('auth');
    Route::get('/famille/cosmetiques', [ProductController::class, 'cosmetiques'])->name('cosmetiques');

    //New version quizz
    Route::get('/quiz/step4', function () {
    return Inertia::render('FragranceQuizStep4');
});
Route::get('/quiz/step4/homme', function () {
    return Inertia::render('FragranceQuizStep4-homme');
});
Route::get('/quiz/step3-homme', function () {
    return Inertia::render('FragranceQuizStep3-homme');
});
Route::get('/quiz/step5', function (\Illuminate\Http\Request $request) {
    return Inertia::render('FragranceQuizStep5', [
        'selectedSex' => $request->selectedSex,
        'scentType' => $request->scentType,
        'mood' => $request->mood,
        'vibe' => $request->vibe,
    ]);
});
Route::get('/quiz/step5-homme', function (\Illuminate\Http\Request $request) {
    return Inertia::render('FragranceQuizStep5-homme', [
        'selectedSex' => $request->selectedSex,
        'scentType' => $request->scentType,
        'mood' => $request->mood,
        'vibe' => $request->vibe,
    ]);
});
Route::get('/services/gift-set', [ServiceController::class, 'index']);
});
Route::get('/services/{slug}', [ServiceController::class, 'show']);
Route::delete('/favorites/{id}', [FavoriteController::class, 'destroy'])->name('favorites.destroy');



require __DIR__.'/auth.php';
Route::post('/import', [ProduitController::class, 'import']);


//Ajout de la route pour l'import des donnnees par fichier excel
Route::post('/ingredients/import', [IngredientController::class, 'import'])->name('ingredients.import');


//Ajout des routes pour l'import des fournisseurs
Route::post('/fournisseurs/import', [FournisseurController::class, 'import']);

//Ajout des routes pour l'import des formules
Route::post('/formules/import', [FormuleController::class, 'import']);

//Ajout des routes pour l'import des reapprovisionnement des ingredients
Route::post('/reapprovisionnements/import', [ReapprovisionnementController::class, 'import']);

//Ajout des routes pour l'import de clients 
Route::post('/clients/import', [ClientController::class, 'import']);

//Ajout des routes pour l'import des employes
Route::post('/employes/import', [EmployeController::class, 'import'])
     ->middleware(['auth', 'web'])
     ->name('employes.import');


//Routes pour la gestion de la page des rapports
Route::group(['prefix' => 'rapport'], function() {
    Route::get('data', [RapportController::class, 'getRapportData']);
    Route::get('top-produits', [RapportController::class, 'getTopProduitsVendus']);
    Route::get('ventes-categories', [RapportController::class, 'getVentesParCategorieSenteur']);
    Route::get('details-ventes', [RapportController::class, 'getDetailsVentes']);
});

Route::get('/rapport-complet', [RapportController::class, 'getFullReport']);

//API pour afficher les details de la page employes
Route::get('/recupeemploye/{id}', [EmployeController::class, 'show'])->middleware('auth');

//API pour afficher les details de la page des clients
Route::get('/clients/{id}', [ClientController::class, 'show']);

//Route pour redirection vers la page par default de tous les employes sans permissions
Route::get('/admin/acces-utilisateur', [AdminController::class, 'accesUtilisateur'])->name('acces.utilisateur');

Route::patch('/commandes/{id}/status', [CommandeController::class, 'updateStatus'])->name('commandes.updateStatus');

Route::put('/commandes/{id}/status', [CommandeController::class, 'updateStatus'])->name('commandes.updateStatus');

Route::put('/commandes/{id}/statut', [AdminController::class, 'updateStatut'])->name('commandes.updateStatut');

Route::get('/commandes/{id}/details', [AdminController::class, 'showDetails']);


Route::middleware(['auth'])->group(function () {
    // Route pour afficher la page d'affectation
    Route::get('/attribution/admin', function () {
        return Inertia::render('Admin/AffectationStock', [
            'user' => Auth::user(),
        ]);
    })->name('attribution.admin');

    // Routes pour les localisations
    Route::get('/localisations', [LocalisationController::class, 'index'])->name('localisations.index');
    Route::post('/localisations', [LocalisationController::class, 'store'])->name('localisations.store');
    Route::get('/localisations/{id}', [LocalisationController::class, 'show'])->name('localisations.show');
    Route::put('/localisations/{id}', [LocalisationController::class, 'update'])->name('localisations.update');
    Route::delete('/localisations/{id}', [LocalisationController::class, 'destroy'])->name('localisations.destroy');

    // Routes pour les affectations
    Route::get('/affectations', [AffectationController::class, 'index'])->name('affectations.index');
    Route::post('/affectations', [AffectationController::class, 'store'])->name('affectations.store');
    Route::delete('/affectations/{produit}/{localisation}', [AffectationController::class, 'destroy'])->name('affectations.destroy');

    // Routes pour les produits
    Route::get('/produits', [ProduitController::class, 'index'])->name('produits.index');
});
//footer
Route::get('/politique-de-confidentialite', function () {
    return Inertia::render('PrivacyPolicy');
})->name('privacy.policy');
Route::get('/cookies', function () {
    return Inertia::render('Cookies');
})->name('cookies.policy');
Route::get('/conditions-utilisation', function () {
    return Inertia::render('TermsOfUse');
})->name('terms.use');
Route::get('/faq', function () {
    return Inertia::render('FaqPage');
})->name('faq.page');