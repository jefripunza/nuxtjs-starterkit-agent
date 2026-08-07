<template>
  <div>
    <!-- Hero About -->
    <section class="relative pt-28 pb-12 px-6">
      <div class="absolute top-10 right-10 w-72 h-72 rounded-full bg-pastel-sky/30 blur-3xl"></div>
      <div class="max-w-4xl mx-auto">
        <p class="font-body text-[11px] font-semibold text-portrait-slate uppercase tracking-[0.14em] mb-4">About This Project</p>
        <h1 class="font-display text-[49px] leading-[1.04] tracking-[-0.04em] text-portrait-ink font-semibold">
          NuxtJS StarterKit
          <span class="text-portrait-teal">Agent</span>
        </h1>
        <p class="max-w-2xl mt-6 text-lg leading-relaxed text-portrait-iron">
          A production-ready Nuxt 4 boilerplate featuring universal SSR+CSR rendering, Pinia Colada smart data fetching, and the elegant <span class="italic text-portrait-teal">Portrait</span> design system from Refero.
        </p>
      </div>
    </section>

    <!-- Feature Grid -->
    <section class="max-w-4xl mx-auto px-6 pb-16">
      <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
        <div v-for="feat in features" :key="feat.title" class="bg-white rounded-card p-8 border border-portrait-mist/60 shadow-[0_1px_2px_rgba(0,0,0,0.02),0_3px_6px_rgba(0,0,0,0.03)]">
          <div class="w-10 h-10 rounded-xl bg-pastel-sky/60 flex items-center justify-center mb-4">
            <component :is="feat.icon" class="w-5 h-5 text-portrait-teal" />
          </div>
          <h3 class="font-display text-lg font-semibold text-portrait-ink">{{ feat.title }}</h3>
          <p class="text-sm text-portrait-iron mt-2 leading-relaxed">{{ feat.desc }}</p>
        </div>
      </div>
    </section>

    <!-- Tech Table -->
    <section class="max-w-4xl mx-auto px-6 pb-16">
      <h2 class="font-display text-2xl font-semibold text-portrait-ink mb-6">Tech Stack</h2>
      <div class="bg-white rounded-card border border-portrait-mist/60 overflow-hidden">
        <table class="w-full text-left">
          <thead class="border-b border-portrait-mist/80">
            <tr>
              <th class="px-6 py-4 text-xs font-semibold text-portrait-slate uppercase tracking-wider">Technology</th>
              <th class="px-6 py-4 text-xs font-semibold text-portrait-slate uppercase tracking-wider">Version</th>
              <th class="px-6 py-4 text-xs font-semibold text-portrait-slate uppercase tracking-wider hidden sm:table-cell">Purpose</th>
            </tr>
          </thead>
          <tbody class="divide-y divide-portrait-mist/50">
            <tr v-for="tech in stack" :key="tech.name" class="hover:bg-pastel-sky/20 transition-colors">
              <td class="px-6 py-4 text-sm font-medium text-portrait-ink">{{ tech.name }}</td>
              <td class="px-6 py-4 text-sm text-portrait-body font-mono">{{ tech.version }}</td>
              <td class="px-6 py-4 text-sm text-portrait-iron hidden sm:table-cell">{{ tech.purpose }}</td>
            </tr>
          </tbody>
        </table>
      </div>
    </section>

    <!-- Repository -->
    <section class="max-w-4xl mx-auto px-6 pb-24">
      <div class="bg-white rounded-card p-8 border border-portrait-mist/60 text-center">
        <p class="text-sm text-portrait-slate mb-3">Open Source on GitHub</p>
        <a href="https://github.com/jefripunza/nuxtjs-starterkit-agent" target="_blank" rel="noopener"
           class="inline-flex items-center gap-2 px-6 py-3 font-display font-semibold text-portrait-ink bg-portrait-canvas rounded-pill border border-portrait-mist hover:border-portrait-teal/30 hover:text-portrait-teal transition-all duration-200">
          <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24"><path d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z"/></svg>
          View on GitHub
        </a>
      </div>
    </section>
  </div>
</template>

<script setup>
import { h } from 'vue'

const Bolt = { template: '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5"><path stroke-linecap="round" stroke-linejoin="round" d="M13 10V3L4 14h7v7l9-11h-7z"/></svg>' }
const Globe = { template: '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5"><circle cx="12" cy="12" r="10"/><path d="M2 12h20M12 2a15.3 15.3 0 014 10 15.3 15.3 0 01-4 10 15.3 15.3 0 01-4-10 15.3 15.3 0 014-10z"/></svg>' }
const Layers = { template: '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5"><path d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"/></svg>' }
const Zap = { template: '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5"><polygon points="13 2 3 14 12 14 11 22 21 10 12 10 13 2"/></svg>' }

const features = [
  { title: 'Universal Rendering', desc: 'First load SSR for instant SEO and perceived speed. Subsequent page transitions via CSR with NuxtLink for app-like smoothness.', icon: Globe },
  { title: 'Smart Data Fetching', desc: 'Pinia Colada provides async query management with built-in caching, deduplication, and automatic refetch.', icon: Zap },
  { title: 'Portrait Design', desc: 'Elegant cream-canvas scrapbook aesthetic from Refero — navy ink, rainbow accents, polaroid cards, and pastel washes.', icon: Layers },
  { title: 'Full-Stack Ready', desc: 'Nitro server engine with file-based API routes. One codebase for both frontend and backend endpoints.', icon: Bolt },
]

const stack = [
  { name: 'Nuxt', version: '4.5.2', purpose: 'Vue framework — SSR + CSR hybrid' },
  { name: 'Vue', version: '3.5.41', purpose: 'Reactive UI library' },
  { name: 'Tailwind CSS', version: '6.14', purpose: 'Utility-first CSS framework' },
  { name: 'Pinia', version: '4.0.2', purpose: 'State management' },
  { name: 'Pinia Colada', version: '1.4.2', purpose: 'Async query management' },
  { name: 'GSAP', version: '3.13', purpose: 'Professional animations' },
  { name: 'Nitro', version: '2.13.4', purpose: 'Universal server engine' },
  { name: 'Node.js', version: '20.20', purpose: 'JavaScript runtime' },
]
</script>
