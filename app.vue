<template>
  <div class="min-h-screen bg-portrait-canvas font-body text-portrait-body">
    <!-- Sticky Nav Pill -->
    <nav class="sticky top-6 z-50 flex justify-between items-center px-4 max-w-5xl mx-auto">
      <!-- Brand -->
      <NuxtLink to="/" class="text-portrait-ink font-display font-semibold text-base tracking-tight hover:text-portrait-teal transition-colors bg-white/80 backdrop-blur-xl border border-portrait-mist/80 rounded-pill px-5 py-2.5 shadow-[0_1px_2px_rgba(0,0,0,0.04),0_2px_8px_rgba(0,0,0,0.04)]">
        NuxtJS StarterKit
      </NuxtLink>

      <!-- Desktop Nav Links -->
      <div class="hidden md:inline-flex items-center gap-6 bg-white/80 backdrop-blur-xl border border-portrait-mist/80 rounded-pill px-6 py-2.5 shadow-[0_1px_2px_rgba(0,0,0,0.04),0_2px_8px_rgba(0,0,0,0.04)]">
        <NuxtLink to="/about" class="text-portrait-slate text-sm font-medium hover:text-portrait-ink transition-colors">About</NuxtLink>
        <NuxtLink to="/profile" class="text-portrait-slate text-sm font-medium hover:text-portrait-ink transition-colors">Profile</NuxtLink>
        <NuxtLink to="/contact" class="text-portrait-slate text-sm font-medium hover:text-portrait-ink transition-colors">Contact</NuxtLink>
        <NuxtLink to="/post" class="text-portrait-slate text-sm font-medium hover:text-portrait-ink transition-colors">Post</NuxtLink>
      </div>

      <!-- Mobile Hamburger -->
      <button
        ref="hamburger"
        class="md:hidden relative w-11 h-11 bg-white/80 backdrop-blur-xl border border-portrait-mist/80 rounded-full shadow-[0_1px_2px_rgba(0,0,0,0.04)] flex items-center justify-center group"
        @click="toggleMenu"
        :aria-label="menuOpen ? 'Close menu' : 'Open menu'"
      >
        <span class="sr-only">{{ menuOpen ? 'Close' : 'Menu' }}</span>
        <div class="w-5 h-4 flex flex-col justify-between">
          <span class="block h-0.5 w-5 bg-portrait-ink rounded-full transition-all duration-300 origin-center" :class="menuOpen ? 'translate-y-[7px] rotate-45' : ''"></span>
          <span class="block h-0.5 w-5 bg-portrait-ink rounded-full transition-all duration-300" :class="menuOpen ? 'opacity-0 scale-x-0' : ''"></span>
          <span class="block h-0.5 w-5 bg-portrait-ink rounded-full transition-all duration-300 origin-center" :class="menuOpen ? '-translate-y-[7px] -rotate-45' : ''"></span>
        </div>
      </button>
    </nav>

    <!-- Mobile Slide-in Menu Overlay -->
    <Transition name="overlay">
      <div
        v-if="menuOpen"
        class="fixed inset-0 bg-portrait-ink/20 backdrop-blur-sm z-40 md:hidden"
        @click="closeMenu"
      />
    </Transition>

    <!-- Mobile Slide-in Menu Panel -->
    <Transition name="panel">
      <div
        v-if="menuOpen"
        ref="menuPanel"
        class="fixed top-0 right-0 h-full w-72 bg-white z-50 shadow-2xl border-l border-portrait-mist/60 flex flex-col md:hidden"
      >
        <!-- Menu Header -->
        <div class="flex items-center justify-between px-6 pt-6 pb-4 border-b border-portrait-mist/60">
          <span class="font-display font-semibold text-portrait-ink">Menu</span>
          <button @click="closeMenu" class="w-9 h-9 flex items-center justify-center rounded-full hover:bg-portrait-mist/30 transition-colors">
            <svg class="w-5 h-5 text-portrait-ink" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"/></svg>
          </button>
        </div>

        <!-- Menu Links -->
        <nav class="flex-1 px-4 py-6 space-y-1">
          <NuxtLink
            v-for="item in menuItems"
            :key="item.to"
            :to="item.to"
            @click="closeMenu"
            class="flex items-center gap-4 px-4 py-3.5 rounded-card text-portrait-ink font-display font-medium text-lg hover:bg-pastel-sky/30 transition-all duration-200"
          >
            <span class="w-9 h-9 rounded-xl bg-pastel-sky/50 flex items-center justify-center text-lg">
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
    </Transition>

    <!-- Page Content -->
    <NuxtPage />
  </div>
</template>

<script setup>
import { ref, onMounted, watch } from 'vue'
import gsap from 'gsap'

const menuOpen = ref(false)
const menuPanel = ref(null)

const menuItems = [
  { to: '/about', label: 'About', icon: '📖' },
  { to: '/profile', label: 'Profile', icon: '👤' },
  { to: '/contact', label: 'Contact', icon: '✉️' },
  { to: '/post', label: 'Post', icon: '📝' },
]

function toggleMenu() {
  menuOpen.value = !menuOpen.value
}

function closeMenu() {
  menuOpen.value = false
}

// Animate panel slide-in/out
watch(menuOpen, (open) => {
  if (open) {
    // Prevent body scroll when menu is open
    document.body.style.overflow = 'hidden'
    // Small delay for DOM to render
    setTimeout(() => {
      if (menuPanel.value) {
        gsap.fromTo(menuPanel.value,
          { x: '100%' },
          { x: '0%', duration: 0.35, ease: 'power3.out' }
        )
      }
    }, 10)
  } else {
    document.body.style.overflow = ''
  }
})

onMounted(() => {
  // Close on Escape key
  const handleKey = (e) => {
    if (e.key === 'Escape') closeMenu()
  }
  window.addEventListener('keydown', handleKey)
})
</script>

<style scoped>
/* Overlay transition */
.overlay-enter-active,
.overlay-leave-active {
  transition: opacity 0.3s ease;
}
.overlay-enter-from,
.overlay-leave-to {
  opacity: 0;
}

/* Panel transition for leave (slide back to right) */
.panel-leave-active {
  transition: transform 0.25s ease-in;
}
.panel-leave-to {
  transform: translateX(100%);
}
</style>
