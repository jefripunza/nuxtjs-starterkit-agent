<template>
  <div class="min-h-screen bg-portrait-canvas font-body text-portrait-body">
    <!-- Sticky Nav Pill -->
    <nav class="sticky top-6 z-50 flex justify-center items-center px-4">
      <div class="flex items-center justify-between bg-white/80 backdrop-blur-xl border border-portrait-mist/80 rounded-pill pl-2 pr-1 py-1 shadow-[0_1px_2px_rgba(0,0,0,0.04),0_2px_8px_rgba(0,0,0,0.04)]">
        <!-- Desktop Nav Links (hidden on mobile) -->
        <div class="hidden md:flex items-center gap-1">
          <NuxtLink to="/" class="px-4 py-2 rounded-pill font-display font-semibold text-base tracking-tight transition-all duration-200 text-portrait-ink"
            :class="isActive('/') ? 'bg-portrait-ink text-white' : 'text-portrait-ink hover:bg-portrait-mist/40'">
            Home
          </NuxtLink>
          <NuxtLink v-for="item in menuItems" :key="item.to" :to="item.to"
            class="px-4 py-2 rounded-pill text-sm font-medium transition-all duration-200"
            :class="isActive(item.to) ? 'bg-portrait-ink text-white' : 'text-portrait-slate hover:bg-portrait-mist/40 hover:text-portrait-ink'">
            {{ item.label }}
          </NuxtLink>
        </div>

        <!-- Mobile: only hamburger button -->
        <button
          ref="hamburger"
          class="md:hidden w-11 h-11 flex items-center justify-center rounded-full hover:bg-portrait-mist/30 transition-colors"
          @click="toggleMenu"
          :aria-label="menuOpen ? 'Close menu' : 'Open menu'"
        >
          <div class="w-5 h-4 flex flex-col justify-between">
            <span class="block h-0.5 w-5 bg-portrait-ink rounded-full transition-all duration-300 origin-center" :class="menuOpen ? 'translate-y-[7px] rotate-45' : ''"></span>
            <span class="block h-0.5 w-5 bg-portrait-ink rounded-full transition-all duration-300" :class="menuOpen ? 'opacity-0 scale-x-0' : ''"></span>
            <span class="block h-0.5 w-5 bg-portrait-ink rounded-full transition-all duration-300 origin-center" :class="menuOpen ? '-translate-y-[7px] -rotate-45' : ''"></span>
          </div>
        </button>
      </div>
    </nav>

    <!-- Mobile Slide-in Menu Overlay -->
    <div
      class="fixed inset-0 bg-portrait-ink/20 backdrop-blur-sm z-40 md:hidden transition-opacity duration-300"
      :class="menuOpen ? 'opacity-100' : 'opacity-0 pointer-events-none'"
      @click="closeMenu"
    />

    <!-- Mobile Slide-in Menu Panel (v-show = selalu di DOM, CSS transform untuk animasi 2 arah) -->
    <div
      ref="menuPanel"
      class="fixed top-0 right-0 h-full w-72 bg-white z-50 shadow-2xl border-l border-portrait-mist/60 flex flex-col md:hidden transition-transform duration-300 ease-in-out will-change-transform"
      :class="menuOpen ? 'translate-x-0' : 'translate-x-full'"
    >
      <!-- Menu Header -->
      <div class="flex items-center justify-between px-6 pt-6 pb-4 border-b border-portrait-mist/60">
        <span class="font-display font-semibold text-portrait-ink">Menu</span>
        <button @click="toggleMenu" class="w-9 h-9 flex items-center justify-center rounded-full hover:bg-portrait-mist/30 transition-colors">
          <svg class="w-5 h-5 text-portrait-ink" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"/></svg>
        </button>
      </div>

      <!-- Menu Links -->
      <nav class="flex-1 px-4 py-6 space-y-1">
        <NuxtLink
          v-for="item in allMenuItems"
          :key="item.to"
          :to="item.to"
          @click="closeMenu"
          class="flex items-center gap-4 px-4 py-3.5 rounded-card transition-all duration-200"
          :class="isActive(item.to) ? 'bg-portrait-ink text-white' : 'text-portrait-ink font-medium hover:bg-pastel-sky/30'"
        >
          <span class="w-9 h-9 rounded-xl flex items-center justify-center text-lg"
            :class="isActive(item.to) ? 'bg-white/20' : 'bg-pastel-sky/50'">
            {{ item.icon }}
          </span>
          {{ item.label }}
        </NuxtLink>
      </nav>

      <!-- Menu Footer -->
      <div class="px-6 py-5 border-t border-portrait-mist/60">
        <p class="text-xs text-portrait-slate">Nuxt 4.5.2 • Portrait Design</p>
      </div>
    </div>

    <!-- Page Content -->
    <NuxtPage />
  </div>
</template>

<script setup>
import { ref, watch } from 'vue'
import { useRoute } from 'vue-router'

const route = useRoute()
const menuOpen = ref(false)

const menuItems = [
  { to: '/about', label: 'About', icon: '📖' },
  { to: '/profile', label: 'Profile', icon: '👤' },
  { to: '/contact', label: 'Contact', icon: '✉️' },
  { to: '/post', label: 'Post', icon: '📝' },
]

const allMenuItems = [
  { to: '/', label: 'Home', icon: '🏠' },
  ...menuItems,
]

function isActive(path) {
  return route.path === path
}

function toggleMenu() {
  menuOpen.value = !menuOpen.value
}

function closeMenu() {
  menuOpen.value = false
}

// Lock body scroll while menu open
watch(menuOpen, (open) => {
  document.body.style.overflow = open ? 'hidden' : ''
})

// Close on Escape
if (process.client) {
  window.addEventListener('keydown', (e) => {
    if (e.key === 'Escape') closeMenu()
  })
}
</script>