<template>
  <div>
    <!-- Hero -->
    <section class="relative pt-28 pb-8 px-6">
      <div class="absolute top-10 left-20 w-64 h-64 rounded-full bg-pastel-sky/25 blur-3xl"></div>
      <div class="max-w-3xl mx-auto text-center relative">
        <p class="font-body text-[11px] font-semibold text-portrait-slate uppercase tracking-[0.14em] mb-3">Articles & Insights</p>
        <h1 class="font-display text-[49px] leading-[1.04] tracking-[-0.04em] text-portrait-ink font-semibold">
          Latest <span class="text-portrait-teal">Posts</span>
        </h1>
        <p class="max-w-lg mx-auto mt-6 text-lg text-portrait-iron leading-relaxed">
          Thoughts on full-stack development, AI engineering, cloud infrastructure, and building great software.
        </p>
      </div>
    </section>

    <!-- Post Grid -->
    <section class="max-w-5xl mx-auto px-6 pb-16">
      <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        <article v-for="post in posts" :key="post.slug" class="group bg-white rounded-card border border-portrait-mist/60 shadow-[0_1px_2px_rgba(0,0,0,0.02),0_3px_6px_rgba(0,0,0,0.03)] overflow-hidden hover:-translate-y-1 hover:shadow-[0_1px_2px_rgba(0,0,0,0.03),0_4px_12px_rgba(0,0,0,0.06)] transition-all duration-300 cursor-pointer">
          <!-- Post Cover -->
          <div :class="post.bg" class="h-44 flex items-center justify-center">
            <span class="text-5xl">{{ post.emoji }}</span>
          </div>
          <div class="p-6">
            <div class="flex items-center gap-3 mb-3">
              <span class="text-[11px] font-semibold text-portrait-slate uppercase tracking-wider">{{ post.date }}</span>
              <span class="w-1 h-1 rounded-full bg-portrait-fog"></span>
              <span class="text-[11px] font-semibold text-portrait-teal uppercase tracking-wider">{{ post.category }}</span>
            </div>
            <h2 class="font-display text-lg font-semibold text-portrait-ink group-hover:text-portrait-teal transition-colors leading-snug">
              {{ post.title }}
            </h2>
            <p class="text-sm text-portrait-iron mt-2 leading-relaxed line-clamp-2">
              {{ post.excerpt }}
            </p>
            <div class="flex items-center gap-2 mt-4 pt-4 border-t border-portrait-mist/50">
              <div class="w-7 h-7 rounded-full bg-portrait-ink flex items-center justify-center text-white text-[10px] font-bold">JH</div>
              <span class="text-xs text-portrait-slate">Jefri Herdi Triyanto</span>
              <span class="text-xs text-portrait-slate ml-auto">{{ post.readTime }}</span>
            </div>
          </div>
        </article>
      </div>
    </section>

    <!-- Newsletter -->
    <section class="max-w-xl mx-auto px-6 pb-24">
      <div class="bg-white rounded-card p-8 border border-portrait-mist/60 text-center shadow-[0_1px_2px_rgba(0,0,0,0.02)]">
        <div class="w-12 h-12 mx-auto mb-4 rounded-xl bg-pastel-sky/60 flex items-center justify-center">
          <svg class="w-6 h-6 text-portrait-teal" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"/></svg>
        </div>
        <h2 class="font-display text-xl font-semibold text-portrait-ink mb-2">Stay Updated</h2>
        <p class="text-sm text-portrait-iron mb-6">Get notified about new articles and updates.</p>
        <form class="flex gap-3 max-w-sm mx-auto" @submit.prevent="subscribe">
          <input v-model="email" type="email" required
            class="flex-1 px-4 py-2.5 bg-portrait-canvas border border-portrait-mist/80 rounded-[16px] text-sm text-portrait-ink placeholder:text-portrait-fog focus:outline-none focus:border-portrait-teal/50 transition-all"
            placeholder="your@email.com" />
          <button type="submit"
            class="px-5 py-2.5 font-display font-semibold text-sm text-white bg-portrait-ink rounded-pill hover:bg-portrait-teal transition-colors">
            Subscribe
          </button>
        </form>
        <Transition enter-active-class="transition-all duration-300" enter-from-class="opacity-0" enter-to-class="opacity-100">
          <p v-if="subscribed" class="mt-4 text-sm text-portrait-teal font-medium">✓ Subscribed! Welcome aboard.</p>
        </Transition>
      </div>
    </section>
  </div>
</template>

<script setup>
import { ref } from 'vue'

const email = ref('')
const subscribed = ref(false)

const posts = [
  {
    slug: 'nuxt-4-universal-rendering',
    title: 'Nuxt 4 Universal Rendering: SSR + CSR Done Right',
    excerpt: 'How to combine server-side rendering for first load and client-side navigation for SPA-like transitions — the hybrid approach.',
    date: 'Aug 7, 2026',
    category: 'Frontend',
    readTime: '5 min read',
    emoji: '⚡',
    bg: 'bg-pastel-sky/30',
  },
  {
    slug: 'pinia-colada-guide',
    title: 'Mastering Pinia Colada: Smart Data Fetching in Vue',
    excerpt: 'Deep dive into async query management with Pinia Colada — caching, deduplication, optimistic updates, and more.',
    date: 'Aug 3, 2026',
    category: 'State Management',
    readTime: '7 min read',
    emoji: '🍹',
    bg: 'bg-pastel-mint/30',
  },
  {
    slug: 'docker-coolify-deploy',
    title: 'Zero-Downtime Deploy with Coolify + Docker',
    excerpt: 'How to set up automated CI/CD pipelines with Coolify, Docker multi-stage builds, and Cloudflare Tunnels.',
    date: 'Jul 28, 2026',
    category: 'DevOps',
    readTime: '8 min read',
    emoji: '🐳',
    bg: 'bg-pastel-peach/30',
  },
  {
    slug: 'tailwind-design-systems',
    title: 'Building a Design System with Tailwind CSS v6',
    excerpt: 'From utility classes to a cohesive design language — colors, typography, spacing, and component tokens.',
    date: 'Jul 22, 2026',
    category: 'Design',
    readTime: '6 min read',
    emoji: '🎨',
    bg: 'bg-pastel-sky/40',
  },
  {
    slug: 'ai-agents-architecture',
    title: 'Architecting Autonomous AI Agents for Business',
    excerpt: 'Practical patterns for building AI agents that actually deliver value — tools, memory, and orchestration.',
    date: 'Jul 15, 2026',
    category: 'AI/ML',
    readTime: '10 min read',
    emoji: '🤖',
    bg: 'bg-pastel-mint/40',
  },
  {
    slug: 'cloudflare-tunnel-guide',
    title: 'Cloudflare Tunnels: Self-Hosting Without Opening Ports',
    excerpt: 'Complete guide to exposing local services securely with Cloudflare Tunnels, wildcard domains, and MikroTik.',
    date: 'Jul 10, 2026',
    category: 'Infrastructure',
    readTime: '9 min read',
    emoji: '🔒',
    bg: 'bg-pastel-peach/40',
  },
]

function subscribe() {
  subscribed.value = true
  email.value = ''
  setTimeout(() => subscribed.value = false, 4000)
}
</script>
