<template>
  <div class="min-h-screen bg-portrait-canvas font-body text-portrait-body">
    <!-- Sticky Nav Pill -->
    <nav ref="navPill" class="sticky top-6 z-50 flex justify-center px-4">
      <div class="inline-flex items-center gap-8 bg-white/80 backdrop-blur-xl border border-portrait-mist/80 rounded-pill px-8 py-3 shadow-[0_1px_2px_rgba(0,0,0,0.04),0_2px_8px_rgba(0,0,0,0.04)]">
        <span class="text-portrait-ink font-display font-semibold text-base tracking-tight">NuxtJS StarterKit</span>
        <span class="w-px h-5 bg-portrait-ash"></span>
        <span class="text-portrait-slate text-sm font-medium">Agent</span>
      </div>
    </nav>

    <!-- Hero Section -->
    <section class="relative pt-28 pb-16 px-6">
      <!-- Floating pastel washes -->
      <div class="absolute top-20 left-10 w-64 h-64 rounded-full bg-pastel-sky/40 blur-3xl"></div>
      <div class="absolute top-60 right-10 w-56 h-56 rounded-full bg-pastel-peach/30 blur-3xl"></div>
      <div class="absolute bottom-10 left-1/3 w-48 h-48 rounded-full bg-pastel-mint/30 blur-3xl"></div>

      <div class="max-w-4xl mx-auto text-center relative">
        <!-- Eyebrow -->
        <p ref="eyebrow" class="font-body text-[11px] font-semibold text-portrait-slate uppercase tracking-[0.14em] mb-6 opacity-0">
          Full-Stack Vue Framework
        </p>

        <!-- Display Headline -->
        <div ref="headlineGroup" class="opacity-0">
          <h1 class="font-display text-[76px] leading-none tracking-[-0.056em] text-portrait-ink font-semibold">
            Nuxt<span class="italic text-transparent bg-clip-text bg-gradient-to-r from-rainbow-blue via-rainbow-magenta via-rainbow-red via-rainbow-orange via-rainbow-yellow to-rainbow-green">JS</span>
          </h1>
          <h2 class="font-display text-[49px] leading-[1.04] tracking-[-0.04em] text-portrait-teal font-medium mt-3">
            StarterKit
          </h2>
          <p class="font-display text-[39px] leading-[1.08] font-semibold text-portrait-slate/60 mt-2">
            Agent
          </p>
        </div>

        <!-- Subhead -->
        <p ref="subhead" class="max-w-lg mx-auto mt-10 text-lg leading-relaxed text-portrait-iron font-medium opacity-0">
          Auto-import, SSR, smart data fetching — all in one
          <span class="italic text-transparent bg-clip-text bg-gradient-to-r from-rainbow-blue via-rainbow-magenta to-rainbow-red">beautiful</span>
          framework.
        </p>

        <!-- Polaroid Cards Grid -->
        <div ref="cardsGrid" class="grid grid-cols-1 md:grid-cols-3 gap-6 mt-16 opacity-0">
          <!-- Card 1: Nuxt 4 -->
          <div class="group bg-white rounded-card p-6 shadow-[0_1px_2px_rgba(0,0,0,0.02),0_3px_6px_rgba(0,0,0,0.04),0_6px_16px_rgba(0,0,0,0.04)] hover:-translate-y-1 hover:shadow-[0_1px_2px_rgba(0,0,0,0.03),0_4px_8px_rgba(0,0,0,0.06),0_8px_24px_rgba(0,0,0,0.06)] transition-all duration-300 relative rotate-[-1deg] hover:rotate-0">
            <div class="w-12 h-12 rounded-xl bg-pastel-sky flex items-center justify-center mb-4">
              <svg class="w-6 h-6 text-portrait-teal" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M4 6h16M4 12h16M4 18h7"/></svg>
            </div>
            <h3 class="font-display text-lg font-semibold text-portrait-ink tracking-tight">Nuxt 4.5</h3>
            <p class="text-sm text-portrait-iron mt-2 leading-relaxed">Latest Vue framework with hybrid rendering.</p>
          </div>

          <!-- Card 2: Pinia Colada -->
          <div class="group bg-white rounded-card p-6 shadow-[0_1px_2px_rgba(0,0,0,0.02),0_3px_6px_rgba(0,0,0,0.04),0_6px_16px_rgba(0,0,0,0.04)] hover:-translate-y-1 hover:shadow-[0_1px_2px_rgba(0,0,0,0.03),0_4px_8px_rgba(0,0,0,0.06),0_8px_24px_rgba(0,0,0,0.06)] transition-all duration-300 relative rotate-[1.5deg] hover:rotate-0">
            <div class="w-12 h-12 rounded-xl bg-pastel-mint flex items-center justify-center mb-4">
              <svg class="w-6 h-6 text-portrait-teal" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M13 10V3L4 14h7v7l9-11h-7z"/></svg>
            </div>
            <h3 class="font-display text-lg font-semibold text-portrait-ink tracking-tight">Pinia Colada</h3>
            <p class="text-sm text-portrait-iron mt-2 leading-relaxed">Smart data fetching with cache & auto-refetch.</p>
          </div>

          <!-- Card 3: Nitro -->
          <div class="group bg-white rounded-card p-6 shadow-[0_1px_2px_rgba(0,0,0,0.02),0_3px_6px_rgba(0,0,0,0.04),0_6px_16px_rgba(0,0,0,0.04)] hover:-translate-y-1 hover:shadow-[0_1px_2px_rgba(0,0,0,0.03),0_4px_8px_rgba(0,0,0,0.06),0_8px_24px_rgba(0,0,0,0.06)] transition-all duration-300 relative rotate-[0.5deg] hover:rotate-0">
            <div class="w-12 h-12 rounded-xl bg-pastel-peach flex items-center justify-center mb-4">
              <svg class="w-6 h-6 text-portrait-teal" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M5 12h14M12 5l7 7-7 7"/></svg>
            </div>
            <h3 class="font-display text-lg font-semibold text-portrait-ink tracking-tight">Nitro Engine</h3>
            <p class="text-sm text-portrait-iron mt-2 leading-relaxed">Universal server engine with zero-config deploy.</p>
          </div>
        </div>
      </div>
    </section>

    <!-- Ping Section -->
    <section ref="pingSection" class="max-w-2xl mx-auto px-6 pb-24 opacity-0">
      <div class="bg-white rounded-[24px] p-10 shadow-[0_1px_2px_rgba(0,0,0,0.02),0_3px_6px_rgba(0,0,0,0.03),0_8px_24px_rgba(0,0,0,0.04)] border border-portrait-mist/60">
        <p class="text-center font-body text-[11px] font-semibold text-portrait-slate uppercase tracking-[0.14em] mb-6">
          Try the API
        </p>

        <div class="flex flex-col items-center gap-4">
          <!-- Rainbow Border Ping Button -->
          <button
            @click="doPing"
            :disabled="asyncStatus === 'loading'"
            ref="pingBtn"
            class="group relative inline-flex items-center gap-3 px-10 py-4 font-display font-semibold text-lg text-portrait-ink bg-white rounded-pill cursor-pointer disabled:cursor-not-allowed transition-all duration-300 hover:-translate-y-0.5 hover:shadow-[0_1px_2px_rgba(0,0,0,0.04),0_4px_12px_rgba(0,0,0,0.06)]"
          >
            <!-- Rainbow border via pseudo gradient -->
            <span class="absolute inset-0 rounded-pill p-[1.5px] bg-gradient-to-r from-rainbow-blue via-rainbow-magenta via-rainbow-red via-rainbow-orange via-rainbow-yellow to-rainbow-green -z-10"></span>
            <span class="absolute inset-[1.5px] rounded-[26px] bg-white -z-[5]"></span>

            <span v-if="asyncStatus === 'loading'" class="inline-block w-5 h-5 border-2 border-portrait-ink/20 border-t-portrait-ink rounded-full animate-spin"></span>
            <svg v-else class="w-5 h-5 text-portrait-ink/60 group-hover:text-portrait-ink transition-colors" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z"/>
            </svg>
            <span>Ping!</span>
          </button>

          <!-- Success Response -->
          <Transition
            enter-active-class="transition-all duration-500 ease-out"
            enter-from-class="opacity-0 translate-y-4 scale-95"
            enter-to-class="opacity-100 translate-y-0 scale-100"
            leave-active-class="transition-all duration-200 ease-in"
            leave-from-class="opacity-100"
            leave-to-class="opacity-0"
          >
            <div v-if="state.status === 'success'" ref="responseBox" class="w-full mt-4">
              <div class="rounded-card p-6 bg-pastel-mint/40 border border-[#08304c]/10">
                <div class="flex items-center gap-2 mb-4 pb-3 border-b border-portrait-ash/60">
                  <span class="w-2.5 h-2.5 rounded-full bg-portrait-teal"></span>
                  <span class="font-mono text-sm font-semibold text-portrait-ink">200 OK</span>
                  <span class="font-mono text-xs text-portrait-slate ml-auto">{{ state.data?.timestamp }}</span>
                </div>
                <pre class="text-sm font-mono text-portrait-body/80 leading-relaxed">{{ JSON.stringify(state.data, null, 2) }}</pre>
              </div>
            </div>
          </Transition>

          <!-- Error -->
          <Transition
            enter-active-class="transition-all duration-300 ease-out"
            enter-from-class="opacity-0 translate-y-2"
            enter-to-class="opacity-100 translate-y-0"
          >
            <div v-if="state.status === 'error'" class="w-full mt-4">
              <div class="rounded-card p-6 bg-[#ffebd6]/40 border border-[#ff4940]/20">
                <p class="text-sm font-mono text-[#ff4940]">{{ state.error?.message || 'Failed to ping' }}</p>
              </div>
            </div>
          </Transition>
        </div>
      </div>

      <!-- Tech stack chips -->
      <div ref="chips" class="flex flex-wrap justify-center gap-3 mt-8 opacity-0">
        <span v-for="tech in techs" :key="tech"
          class="inline-flex items-center px-4 py-1.5 bg-white border border-portrait-mist/80 rounded-chip text-xs font-medium text-portrait-slate hover:border-portrait-teal/30 hover:text-portrait-teal transition-all duration-200"
        >
          {{ tech }}
        </span>
      </div>
    </section>

    <!-- Footer -->
    <footer class="text-center pb-10">
      <p class="text-xs text-portrait-fog font-medium">Built with Nuxt 4 · Tailwind CSS · Pinia · GSAP</p>
    </footer>
  </div>
</template>

<script setup>
import { ref, onMounted, nextTick } from 'vue'
import { useQuery } from '@pinia/colada'
import gsap from 'gsap'

const techs = ['Nuxt 4.5', 'Tailwind CSS', 'Pinia', 'Pinia Colada', 'SSR', 'Nitro', 'GSAP']

const navPill = ref(null)
const eyebrow = ref(null)
const headlineGroup = ref(null)
const subhead = ref(null)
const cardsGrid = ref(null)
const pingSection = ref(null)
const pingBtn = ref(null)
const responseBox = ref(null)
const chips = ref(null)

const { state, asyncStatus, refetch } = useQuery({
  key: () => ['ping'],
  query: () => $fetch('/api/ping'),
  lazy: true,
})

async function doPing() {
  if (pingBtn.value) {
    gsap.fromTo(pingBtn.value, { scale: 1 }, { scale: 0.96, duration: 0.15, yoyo: true, repeat: 1 })
  }
  await refetch()
  await nextTick()
  if (responseBox.value) {
    gsap.fromTo(responseBox.value, { y: 16, opacity: 0 }, { y: 0, opacity: 1, duration: 0.4, ease: 'power2.out' })
  }
}

onMounted(() => {
  const tl = gsap.timeline({ defaults: { ease: 'power3.out' } })

  // Nav pill slides down
  tl.fromTo(navPill.value, { y: -24, opacity: 0 }, { y: 0, opacity: 1, duration: 0.6 })

  // Eyebrow
  tl.fromTo(eyebrow.value, { opacity: 0, y: 12 }, { opacity: 1, y: 0, duration: 0.5 }, '-=0.3')

  // Headline group
  tl.set(headlineGroup.value, { opacity: 1 }, '-=0.1')
  const h1Children = headlineGroup.value?.querySelectorAll('h1 span, h1, h2, p')
  if (h1Children) {
    tl.fromTo(h1Children, { opacity: 0, x: -40 }, { opacity: 1, x: 0, duration: 0.6, stagger: 0.12 }, '-=0.2')
  }

  // Subhead
  tl.fromTo(subhead.value, { opacity: 0, y: 16 }, { opacity: 1, y: 0, duration: 0.5 }, '-=0.2')

  // Cards grid — stagger from below
  tl.fromTo(cardsGrid.value, { opacity: 0 }, { opacity: 1, duration: 0.1 })
  const cards = cardsGrid.value?.querySelectorAll('.group')
  if (cards) {
    tl.fromTo(cards, { opacity: 0, y: 30 }, { opacity: 1, y: 0, duration: 0.5, stagger: 0.12 }, '-=0.1')
  }

  // Ping section
  tl.fromTo(pingSection.value, { opacity: 0, y: 40 }, { opacity: 1, y: 0, duration: 0.6 }, '-=0.2')

  // Tech chips
  tl.fromTo(chips.value, { opacity: 0 }, { opacity: 1, duration: 0.1 }, '-=0.1')
  const chipEls = chips.value?.children
  if (chipEls) {
    tl.fromTo(chipEls, { opacity: 0, y: 10 }, { opacity: 1, y: 0, duration: 0.3, stagger: 0.06 }, '-=0.1')
  }
})
</script>
