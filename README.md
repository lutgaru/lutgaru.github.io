# Lutgaru Landing Page

A modern, responsive landing page built with [Astro](https://astro.build) and [Tailwind CSS](https://tailwindcss.com).

## 🚀 Quick Start

### Prerequisites
- Node.js 18+ 
- npm or yarn

### Installation

```bash
npm install
```

### Development

```bash
npm run dev
```

Your site will be running at `http://localhost:3000` by default.

### Production Build

```bash
npm run build
```

### Preview Production Build

```bash
npm run preview
```

## 📁 Project Structure

```
src/
├── components/
│   ├── layout/
│   │   ├── Header.astro      # Navigation header
│   │   └── Footer.astro      # Footer section
│   ├── sections/
│   │   ├── Hero.astro        # Hero banner section
│   │   ├── Expertise.astro   # Expertise/services section
│   │   ├── Projects.astro    # Projects showcase
│   │   ├── Milestones.astro  # Milestones/achievements
│   │   └── CTA.astro         # Call-to-action section
│   └── ui/
│       └── OrbitNode.astro   # Custom UI component
├── layouts/
│   └── BaseLayout.astro      # Base page layout wrapper
├── pages/
│   └── index.astro           # Homepage
└── styles/
    └── global.css            # Global styles & Tailwind imports

public/               # Static assets
astro.config.mjs     # Astro configuration
```

## 🎨 Tech Stack

- **Astro** - Static site generation framework
- **Tailwind CSS** - Utility-first CSS framework
- **TypeScript** - Type-safe development (via tsconfig.json)

## 🔧 Configuration

### Astro Configuration
Edit `astro.config.mjs` to customize build settings, integrations, and deployment options.

### Tailwind Configuration
Tailwind is configured to work with all `.astro`, `.js`, and `.jsx` files in your project. Customize your design tokens in `tailwind.config.js` (if present).

## 📝 Usage

### Creating New Pages
Add `.astro` files to `src/pages/` to automatically create new routes.

### Creating Components
Build reusable components in `src/components/` and import them into pages or layouts.

### Styling
- Use Tailwind utility classes directly in templates
- Add component-specific styles in `<style>` blocks within `.astro` files
- Global styles in `src/styles/global.css`

## 🚀 Deployment

### Build Output
```bash
npm run build
```

Static files are generated in the `dist/` directory.

### Deployment Options
- **Netlify** - Zero-config deployment with `netlify.toml`
- **Vercel** - Push to deploy with automatic builds
- **GitHub Pages** - Static hosting
- **Any static host** - Deploy the `dist/` folder

## 📚 Resources

- [Astro Documentation](https://docs.astro.build)
- [Tailwind CSS Documentation](https://tailwindcss.com/docs)
- [Astro Integrations](https://docs.astro.build/en/guides/integrations-guide/)

## 📄 License

MIT