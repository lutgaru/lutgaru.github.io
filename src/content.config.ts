import { defineCollection, z } from 'astro:content';
import { glob } from 'astro/loaders';

const blog = defineCollection({
  loader: glob({ pattern: '**/*.{md,mdx}', base: './src/content/blog' }),
  schema: z.object({
    title: z.string(),
    description: z.string(),
    pubDate: z.coerce.date(),
    category: z.string().min(1, "category required").transform((v) => v.toLowerCase().trim()),
    tags: z.array(z.string()).optional(),
  }),
});

export const collections = { blog };
