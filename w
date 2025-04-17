{
  "name": "my-project",
  "version": "1.0.0",
 "homepage": "https://waypointroster.github.io/portfolio-agency/"
}{
  "scripts": {
    "scripts": {
  "dev": "vite",
  "build": "vite build",
  "preview": "vite preview",
  "predeploy": "npm run build",
  "deploy": "gh-pages -d dist"
}npm run build
  }
}
/*
Project: Agency Portfolio Website
Tech stack: React + Vite + Tailwind CSS

Directory Structure:

portfolio-agency/
├── package.json
├── tailwind.config.js
├── postcss.config.js
├── vite.config.js
├── public/
│   └── index.html
├── src/
│   ├── index.jsx
│   ├── App.jsx
│   ├── index.css
│   └── components/
│       └── CreatorCard.jsx
└── README.md
*/

// package.json
{
  "name": "portfolio-agency",
  "version": "1.0.0",
  "private": true,
  "scripts": {
    "dev": "vite",
    "build": "vite build",
    "preview": "vite preview"
  },
  "dependencies": {
    "react": "^18.2.0",
    "react-dom": "^18.2.0"
  },
  "devDependencies": {
    "vite": "^4.0.0",
    "tailwindcss": "^3.0.0",
    "postcss": "^8.0.0",
    "autoprefixer": "^10.0.0"
  }
}

// tailwind.config.js
module.exports = {
  content: ["./index.html", "./src/**/*.{js,jsx}"],
  theme: {
    extend: {},
  },
  plugins: [],
};

// postcss.config.js
module.exports = {
  plugins: {
    tailwindcss: {},
    autoprefixer: {},
  },
};

// vite.config.js
import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';

export default defineConfig({
  plugins: [react()],
});

/* public/index.html */
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Agency Portfolio</title>
  </head>
  <body class="bg-gray-50 text-gray-800">
    <div id="root"></div>
    <script type="module" src="/src/index.jsx"></script>
  </body>
</html>

/* src/index.css */
@tailwind base;
@tailwind components;
@tailwind utilities;

/* src/index.jsx */
import React from 'react';
import ReactDOM from 'react-dom/client';
import App from './App';
import './index.css';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(<App />);

/* src/components/CreatorCard.jsx */
import React from 'react';

export default function CreatorCard({ name, image, bio, links }) {
  return (
    <div className="bg-white rounded-2xl shadow-md p-6 flex flex-col items-center text-center">
      <img src={image} alt={name} className="w-32 h-32 rounded-full object-cover mb-4" />
      <h3 className="text-xl font-semibold mb-2">{name}</h3>
      <p className="text-gray-600 mb-4">{bio}</p>
      <div className="flex space-x-4">
        {links.map((link) => (
          <a key={link.platform} href={link.url} target="_blank" rel="noopener noreferrer" className="text-blue-500 hover:underline">
            {link.platform}
          </a>
        ))}
      </div>
    </div>
  );
}

/* src/App.jsx */
import React from 'react';
import CreatorCard from './components/CreatorCard';

const creators = [
  {
    name: 'Alice Johnson',
    image: 'https://via.placeholder.com/150',
    bio: 'Digital artist and illustrator specializing in fantasy worlds.',
    links: [
      { platform: 'Instagram', url: 'https://instagram.com/alice' },
      { platform: 'Dribbble', url: 'https://dribbble.com/alice' },
    ],
  },
  {
    name: 'Brian Lee',
    image: 'https://via.placeholder.com/150',
    bio: 'Videographer capturing authentic stories.',
    links: [
      { platform: 'YouTube', url: 'https://youtube.com/brian' },
      { platform: 'Vimeo', url: 'https://vimeo.com/brian' },
    ],
  },
  // Add more creators here
];

export default function App() {
  return (
    <div className="min-h-screen p-8">
      <header className="mb-12 text-center">
        <h1 className="text-4xl font-extrabold">Our Creators</h1>
        <p className="text-gray-600 mt-2">Meet the talented creators we collaborate with</p>
      </header>
      <main>
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-8">
          {creators.map((c) => (
            <CreatorCard key={c.name} {...c} />
          ))}
        </div>
      </main>
    </div>
  );
}

/* README.md */
# Agency Portfolio Website

## Setup

1. Install dependencies: `npm install`
2. Run development server: `npm run dev`
3. Build for production: `npm run build`

Customize the `creators` array in `src/App.jsx` to showcase your agency's creators.
npm run deploy  
