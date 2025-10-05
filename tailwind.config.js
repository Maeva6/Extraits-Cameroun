import defaultTheme from 'tailwindcss/defaultTheme';
import forms from '@tailwindcss/forms';

/** @type {import('tailwindcss').Config} */
export default {
    // 1. Le 'content' est correct et exhaustif
    content: [
        './vendor/laravel/framework/src/Illuminate/Pagination/resources/views/*.blade.php',
        './storage/framework/views/*.php',
        './resources/**/*.blade.php',
        './resources/js/**/*.jsx',
        './resources/**/*.js',
        './resources/**/*.ts',
        './resources/**/*.tsx',
        './resources/**/*.vue',
        './resources/views/**/*.blade.php',
        './resources/js/Pages/**/*.jsx',
        './resources/js/Components/**/*.jsx',
    ],

    // 2. Définition UNIQUE du thème
    theme: {
        extend: {
            fontFamily: {
                sans: ['Figtree', ...defaultTheme.fontFamily.sans],
            },
            // Ajoutez ici d'autres extensions (couleurs, espacements personnalisés) si nécessaire
        },
    },

    // 3. Le 'safelist' (qui n'est pas le problème ici, mais doit être conservé)
    safelist: [
        'text-yellow-500',
        'bg-yellow-100',
        'bg-yellow-500',
        'hover:text-yellow-600',
        'font-montserrat',
        'font-bold',
        'md:top-20',
        'md:right-4',
        'text-center',
        'text-sm',
        'text-lg',
        'z-50',
        'fixed',
        'top-4',
        'right-2',
    ],

    // 4. Les 'plugins'
    plugins: [
        forms,
    ],
};