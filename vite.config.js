import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';
import react from '@vitejs/plugin-react';
import tailwindcss from '@tailwindcss/vite';
import path from 'path';

export default defineConfig({
    plugins: [
        laravel({
            input: ['resources/css/app.css','resources/js/Pages/Dashboard.jsx'],
            refresh: true,
        }),
        react(),
         tailwindcss(),
    ],
    css: {
        postcss: {},
    },
     resolve: {
    alias: {
      '@': path.resolve(__dirname, 'resources/js'),
    },
  },
  //  build: {
  //       rollupOptions: {
  //           input: {
  //               main: 'resources/js/app-client.jsx',
  //               admin: 'resources/js/app-admin.jsx',
  //           },
  //       },
  //   },
});
// import { defineConfig } from 'vite';
// import laravel from 'laravel-vite-plugin';
// import react from '@vitejs/plugin-react';

// export default defineConfig({
//     plugins: [
//         laravel({
//             input: ['resources/css/app.css', 'resources/js/app.jsx'],
//             refresh: true,
//         }),
//         react(),
//     ],
// });

