<template>
  <div>
    <!-- Hero Section — SSR rendered -->
    <section class="relative pt-28 pb-16 px-6">
      <!-- Floating pastel washes -->
      <div class="absolute top-20 left-10 w-64 h-64 rounded-full bg-pastel-sky/40 blur-3xl"></div>
      <div class="absolute top-60 right-10 w-56 h-56 rounded-full bg-pastel-peach/30 blur-3xl"></div>
      <div class="absolute bottom-10 left-1/3 w-48 h-48 rounded-full bg-pastel-mint/30 blur-3xl"></div>

      <div class="max-w-4xl mx-auto text-center relative">
        <!-- Eyebrow -->
        <p class="font-body text-[11px] font-semibold text-portrait-slate uppercase tracking-[0.14em] mb-6">
          Full-Stack Vue Framework
        </p>

        <!-- Display Headline -->
        <h1 class="font-display text-[76px] leading-none tracking-[-0.056em] text-portrait-ink font-semibold">
          Nuxt<span class="italic text-transparent bg-clip-text bg-gradient-to-r from-rainbow-blue via-rainbow-magenta via-rainbow-red via-rainbow-orange via-rainbow-yellow to-rainbow-green">JS</span>
        </h1>
        <h2 class="font-display text-[49px] leading-[1.04] tracking-[-0.04em] text-portrait-teal font-medium mt-3">
          StarterKit
        </h2>
        <p class="font-display text-[39px] leading-[1.08] font-semibold text-portrait-slate/60 mt-2">
          Agent
        </p>

        <!-- Subhead -->
        <p class="max-w-lg mx-auto mt-10 text-lg leading-relaxed text-portrait-iron font-medium">
          Auto-import, SSR, smart data fetching — all in one
          <span class="italic text-transparent bg-clip-text bg-gradient-to-r from-rainbow-blue via-rainbow-magenta to-rainbow-red">beautiful</span>
          framework.
        </p>
      </div>
    </section>

    <!-- Polaroid Cards — SSR rendered -->
    <section class="max-w-4xl mx-auto px-6 pb-12">
      <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
        <div class="group bg-white rounded-card p-6 shadow-[0_1px_2px_rgba(0,0,0,0.02),0_3px_6px_rgba(0,0,0,0.04),0_6px_16px_rgba(0,0,0,0.04)] hover:-translate-y-1 hover:shadow-[0_1px_2px_rgba(0,0,0,0.03),0_4px_8px_rgba(0,0,0,0.06),0_8px_24px_rgba(0,0,0,0.06)] transition-all duration-300 rotate-[-1deg] hover:rotate-0">
          <div class="w-12 h-12 rounded-xl bg-pastel-sky flex items-center justify-center mb-4">
            <svg class="w-6 h-6 text-portrait-teal" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M4 6h16M4 12h16M4 18h7"/></svg>
          </div>
          <h3 class="font-display text-lg font-semibold text-portrait-ink tracking-tight">Nuxt 4.5</h3>
          <p class="text-sm text-portrait-iron mt-2 leading-relaxed">Latest Vue framework with hybrid rendering.</p>
        </div>
        <div class="group bg-white rounded-card p-6 shadow-[0_1px_2px_rgba(0,0,0,0.02),0_3px_6px_rgba(0,0,0,0.04),0_6px_16px_rgba(0,0,0,0.04)] hover:-translate-y-1 hover:shadow-[0_1px_2px_rgba(0,0,0,0.03),0_4px_8px_rgba(0,0,0,0.06),0_8px_24px_rgba(0,0,0,0.06)] transition-all duration-300 rotate-[1.5deg] hover:rotate-0">
          <div class="w-12 h-12 rounded-xl bg-pastel-mint flex items-center justify-center mb-4">
            <svg class="w-6 h-6 text-portrait-teal" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M13 10V3L4 14h7v7l9-11h-7z"/></svg>
          </div>
          <h3 class="font-display text-lg font-semibold text-portrait-ink tracking-tight">Pinia Colada</h3>
          <p class="text-sm text-portrait-iron mt-2 leading-relaxed">Smart data fetching with cache & auto-refetch.</p>
        </div>
        <div class="group bg-white rounded-card p-6 shadow-[0_1px_2px_rgba(0,0,0,0.02),0_3px_6px_rgba(0,0,0,0.04),0_6px_16px_rgba(0,0,0,0.04)] hover:-translate-y-1 hover:shadow-[0_1px_2px_rgba(0,0,0,0.03),0_4px_8px_rgba(0,0,0,0.06),0_8px_24px_rgba(0,0,0,0.06)] transition-all duration-300 rotate-[0.5deg] hover:rotate-0">
          <div class="w-12 h-12 rounded-xl bg-pastel-peach flex items-center justify-center mb-4">
            <svg class="w-6 h-6 text-portrait-teal" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M5 12h14M12 5l7 7-7 7"/></svg>
          </div>
          <h3 class="font-display text-lg font-semibold text-portrait-ink tracking-tight">Universal SSR</h3>
          <p class="text-sm text-portrait-iron mt-2 leading-relaxed">First load SSR, navigation CSR — best of both worlds.</p>
        </div>
      </div>
    </section>

    <!-- Ping Section — ClientOnly to prevent SSR hydration mismatch -->
    <ClientOnly>
      <section class="max-w-2xl mx-auto px-6 pb-24">
        <div class="bg-white rounded-card p-10 shadow-[0_1px_2px_rgba(0,0,0,0.02),0_3px_6px_rgba(0,0,0,0.03),0_8px_24px_rgba(0,0,0,0.04)] border border-portrait-mist/60">
          <p class="text-center font-body text-[11px] font-semibold text-portrait-slate uppercase tracking-[0.14em] mb-6">Try the API</p>

          <div class="flex flex-col items-center gap-4">
            <PingButton />
            <PingResponse />
          </div>
        </div>

        <!-- Tech stack chips -->
        <div class="flex flex-wrap justify-center gap-3 mt-8">
          <span class="inline-flex items-center px-4 py-1.5 bg-white border border-portrait-mist/80 rounded-chip text-xs font-medium text-portrait-slate hover:border-portrait-teal/30 hover:text-portrait-teal transition-all duration-200">Nuxt 4.5</span>
          <span class="inline-flex items-center px-4 py-1.5 bg-white border border-portrait-mist/80 rounded-chip text-xs font-medium text-portrait-slate hover:border-portrait-teal/30 hover:text-portrait-teal transition-all duration-200">Tailwind CSS</span>
          <span class="inline-flex items-center px-4 py-1.5 bg-white border border-portrait-mist/80 rounded-chip text-xs font-medium text-portrait-slate hover:border-portrait-teal/30 hover:text-portrait-teal transition-all duration-200">Pinia</span>
          <span class="inline-flex items-center px-4 py-1.5 bg-white border border-portrait-mist/80 rounded-chip text-xs font-medium text-portrait-slate hover:border-portrait-teal/30 hover:text-portrait-teal transition-all duration-200">Pinia Colada</span>
          <span class="inline-flex items-center px-4 py-1.5 bg-white border border-portrait-mist/80 rounded-chip text-xs font-medium text-portrait-slate hover:border-portrait-teal/30 hover:text-portrait-teal transition-all duration-200">SSR + CSR</span>
          <span class="inline-flex items-center px-4 py-1.5 bg-white border border-portrait-mist/80 rounded-chip text-xs font-medium text-portrait-slate hover:border-portrait-teal/30 hover:text-portrait-teal transition-all duration-200">Nitro</span>
          <span class="inline-flex items-center px-4 py-1.5 bg-white border border-portrait-mist/80 rounded-chip text-xs font-medium text-portrait-slate hover:border-portrait-teal/30 hover:text-portrait-teal transition-all duration-200">GSAP</span>
        </div>
      </section>

      <template #fallback>
        <div class="max-w-2xl mx-auto px-6 pb-24 text-center">
          <div class="bg-white rounded-card p-10 border border-portrait-mist/60">
            <p class="text-portrait-slate">Loading Ping interface...</p>
          </div>
        </div>
      </template>
    </ClientOnly>
  </div>
</template>

<script setup>
// SSR + CSR: This page renders on server first, then hydrates on client
// Pinia Colada components wrapped in ClientOnly to prevent SSR mismatch
</script>
