import { defineConfig } from 'astro/config';
import mdx from '@astrojs/mdx';

// https://astro.build/config
export default defineConfig({
  integrations: [mdx()],
  site: 'https://edoardob90.github.io',
  base: '/blitzstein-intro-to-probability-solutions',
  outDir: './dist',
  publicDir: './public',
  markdown: {
    shikiConfig: {
      theme: 'github-light',
    },
  },
});
