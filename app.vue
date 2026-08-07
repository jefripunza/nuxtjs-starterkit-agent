<template>
  <div class="min-h-screen bg-portrait-canvas font-body text-portrait-body">
    <!-- Sticky Nav Pill -->
    <nav class="sticky top-6 z-50 flex justify-center px-4">
      <div class="inline-flex items-center gap-8 bg-white/80 backdrop-blur-xl border border-portrait-mist/80 rounded-pill px-8 py-3 shadow-[0_1px_2px_rgba(0,0,0,0.04),0_2px_8px_rgba(0,0,0,0.04)]">
        <NuxtLink to="/" class="text-portrait-ink font-display font-semibold text-base tracking-tight hover:text-portrait-teal transition-colors">
          NuxtJS StarterKit
        </NuxtLink>
        <span class="w-px h-5 bg-portrait-ash"></span>
        <NuxtLink to="/about" class="text-portrait-slate text-sm font-medium hover:text-portrait-ink transition-colors">About</NuxtLink>
        <NuxtLink to="/profile" class="text-portrait-slate text-sm font-medium hover:text-portrait-ink transition-colors">Profile</NuxtLink>
        <NuxtLink to="/contact" class="text-portrait-slate text-sm font-medium hover:text-portrait-ink transition-colors">Contact</NuxtLink>
        <NuxtLink to="/post" class="text-portrait-slate text-sm font-medium hover:text-portrait-ink transition-colors">Post</NuxtLink>
      </div>
    </nav>

    <!-- Page Content -->
    <slot />
  </div>
</template>

<script setup>
// SSR + CSR universal rendering: Nuxt handles it natively
// First load = SSR, subsequent navigation = CSR (NuxtLink)
</script>
