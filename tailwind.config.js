import defaultTheme from 'tailwindcss/defaultTheme';
import forms from '@tailwindcss/forms';

/** @type {import('tailwindcss').Config} */
export default {
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

  theme: {
    extend: {
      fontFamily: {
        sans: ['Figtree', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  safelist: [
    'text-yellow-500',
    'bg-yellow-100',
    'hover:text-yellow-600',
    'font-montserrat',
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

  theme: {
    extend: {
      fontFamily: {
        sans: ['Figtree', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  plugins: [
    forms,
  ],
};
