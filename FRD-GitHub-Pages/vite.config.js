import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';

const pagesBasePath = process.env.VITE_BASE_PATH;
const base = pagesBasePath
  ? `/${pagesBasePath.replace(/^\/+|\/+$/g, '')}/`
  : process.env.GITHUB_ACTIONS === 'true'
    ? '/'
    : './';

export default defineConfig({
  base,
  plugins: [react()],
  build: {
    // pdfjs-dist v4 ships modern syntax (top-level await, private fields)
    target: 'es2022',
    chunkSizeWarningLimit: 1600,
  },
  optimizeDeps: {
    esbuildOptions: { target: 'es2022' },
  },
  server: { port: 5173 },
});
