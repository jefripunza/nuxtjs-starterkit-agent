<template>
  <div class="min-h-screen bg-gradient-to-br from-slate-950 via-slate-900 to-slate-950 flex items-center justify-center p-6 overflow-hidden relative">
    <!-- Animated background particles -->
    <div ref="bgCanvas" class="absolute inset-0 opacity-20"></div>

    <!-- Floating gradient orbs -->
    <div ref="orb1" class="absolute w-96 h-96 rounded-full bg-gradient-to-br from-emerald-500/20 to-green-600/10 blur-3xl -top-32 -left-32"></div>
    <div ref="orb2" class="absolute w-72 h-72 rounded-full bg-gradient-to-br from-teal-400/15 to-emerald-500/10 blur-3xl bottom-0 right-0"></div>

    <div class="max-w-3xl w-full text-center relative z-10">
      <!-- Logo with stagger entrance -->
      <div ref="logoWrap" class="mb-10 opacity-0">
        <div class="inline-flex items-center justify-center w-28 h-28 rounded-3xl bg-gradient-to-br from-emerald-400 to-green-600 shadow-2xl shadow-emerald-500/30 ring-1 ring-emerald-300/20">
          <svg class="w-14 h-14 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 10V3L4 14h7v7l9-11h-7z"/>
          </svg>
        </div>
      </div>

      <!-- Badge -->
      <div ref="badge" class="mb-8 opacity-0">
        <span class="inline-flex items-center gap-2 px-5 py-2 bg-emerald-500/10 border border-emerald-500/30 rounded-full text-emerald-400 text-sm font-medium tracking-wider uppercase backdrop-blur-sm">
          <span class="relative flex h-2 w-2">
            <span class="animate-ping absolute inline-flex h-full w-full rounded-full bg-emerald-400 opacity-75"></span>
            <span class="relative inline-flex rounded-full h-2 w-2 bg-emerald-500"></span>
          </span>
          Nuxt 4.5.2 • Production Ready
        </span>
      </div>

      <!-- Main Title -->
      <div ref="titleGroup" class="opacity-0">
        <h1 class="text-6xl sm:text-7xl md:text-8xl font-black text-white tracking-tight leading-none">
          <span ref="titleLine1" class="block opacity-0">NuxtJS</span>
          <span ref="titleLine2" class="block opacity-0 bg-gradient-to-r from-emerald-400 via-green-400 to-teal-300 bg-clip-text text-transparent">StarterKit</span>
          <span ref="titleLine3" class="block opacity-0 text-slate-400">Agent</span>
        </h1>
      </div>

      <!-- Subtitle -->
      <div ref="subtitle" class="mt-8 mb-12 opacity-0">
        <p class="text-xl text-slate-400 font-light leading-relaxed max-w-xl mx-auto">
          Full-stack Vue framework with
          <span class="text-white font-medium">auto-import</span>,
          <span class="text-white font-medium">SSR</span>,
          and smart data fetching
        </p>
      </div>

      <!-- Ping Section -->
      <div ref="pingCard" class="opacity-0">
        <div class="bg-slate-800/30 backdrop-blur-xl border border-slate-700/40 rounded-3xl p-10 mb-8 shadow-2xl shadow-black/20">
          <div class="flex flex-col items-center gap-5">
            <p class="text-slate-500 text-sm font-mono uppercase tracking-widest mb-2">
              Try the API
            </p>

            <button
              @click="doPing"
              :disabled="asyncStatus === 'loading'"
              ref="pingBtn"
              class="group relative inline-flex items-center gap-3 px-10 py-5 bg-gradient-to-r from-emerald-500 via-green-500 to-emerald-600 hover:from-emerald-400 hover:via-green-400 hover:to-emerald-500 disabled:from-slate-700 disabled:via-slate-700 disabled:to-slate-700 text-white font-bold text-lg rounded-2xl shadow-xl shadow-emerald-500/20 hover:shadow-emerald-500/40 disabled:shadow-none transition-all duration-300 cursor-pointer disabled:cursor-not-allowed overflow-hidden"
            >
              <span class="absolute inset-0 bg-gradient-to-r from-transparent via-white/10 to-transparent -translate-x-full group-hover:translate-x-full transition-transform duration-700"></span>
              <span v-if="asyncStatus === 'loading'" class="inline-block w-6 h-6 border-2 border-white/30 border-t-white rounded-full animate-spin"></span>
              <svg v-else class="w-6 h-6 group-hover:scale-110 transition-transform" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z"/>
              </svg>
              <span class="relative z-10">Ping!</span>
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
              <div v-if="state.status === 'success'" ref="responseBox" class="w-full">
                <div class="bg-emerald-950/40 border border-emerald-600/30 rounded-2xl p-6 text-left backdrop-blur-sm">
                  <div class="flex items-center gap-3 mb-4 pb-3 border-b border-emerald-700/30">
                    <span class="inline-flex items-center gap-2">
                      <span class="w-3 h-3 rounded-full bg-emerald-400 shadow-lg shadow-emerald-400/50"></span>
                      <span class="text-emerald-400 font-mono text-sm font-semibold">200 OK</span>
                    </span>
                    <span class="text-emerald-600 text-xs ml-auto font-mono">{{ state.data?.timestamp }}</span>
                  </div>
                  <pre class="text-emerald-300/80 text-sm font-mono leading-relaxed">{{ JSON.stringify(state.data, null, 2) }}</pre>
                </div>
              </div>
            </Transition>

            <!-- Error -->
            <Transition
              enter-active-class="transition-all duration-300 ease-out"
              enter-from-class="opacity-0 translate-y-2"
              enter-to-class="opacity-100 translate-y-0"
            >
              <div v-if="state.status === 'error'" class="w-full">
                <div class="bg-red-950/40 border border-red-600/30 rounded-2xl p-6 backdrop-blur-sm">
                  <p class="text-red-400 text-sm font-mono">{{ state.error?.message || 'Failed to ping' }}</p>
                </div>
              </div>
            </Transition>
          </div>
        </div>
      </div>

      <!-- Tech Stack -->
      <div ref="techStack" class="flex flex-wrap justify-center gap-3 opacity-0">
        <span ref="tag" v-for="tech in techs" :key="tech" class="px-5 py-2 bg-slate-800/60 backdrop-blur-sm border border-slate-700/40 rounded-full text-sm text-slate-400 font-medium hover:border-emerald-500/30 hover:text-emerald-400 transition-all duration-300">
          {{ tech }}
        </span>
      </div>
    </div>
  </div>
</template>

<script setup>
import { ref, onMounted, nextTick } from 'vue'
import { useQuery } from '@pinia/colada'
import gsap from 'gsap'

const techs = ['Nuxt 4.5', 'Tailwind CSS', 'Pinia', 'Pinia Colada', 'SSR', 'Nitro', 'GSAP']

// Refs for animation targets
const logoWrap = ref(null)
const badge = ref(null)
const titleGroup = ref(null)
const titleLine1 = ref(null)
const titleLine2 = ref(null)
const titleLine3 = ref(null)
const subtitle = ref(null)
const pingCard = ref(null)
const pingBtn = ref(null)
const techStack = ref(null)
const responseBox = ref(null)
const orb1 = ref(null)
const orb2 = ref(null)

// Pinia Colada query
const { state, asyncStatus, refetch } = useQuery({
  key: () => ['ping'],
  query: () => $fetch('/api/ping'),
  lazy: true,
})

async function doPing() {
  // Button click animation
  if (pingBtn.value) {
    gsap.fromTo(pingBtn.value, { scale: 1 }, { scale: 0.95, duration: 0.1, yoyo: true, repeat: 1 })
  }
  await refetch()
  // Animate response
  await nextTick()
  if (responseBox.value) {
    gsap.fromTo(responseBox.value, { y: 20, opacity: 0 }, { y: 0, opacity: 1, duration: 0.5, ease: 'power2.out' })
  }
}

onMounted(() => {
  // Main entrance animation timeline
  const tl = gsap.timeline({ defaults: { ease: 'power3.out' } })

  // Orb ambient animations
  gsap.to(orb1.value, {
    x: 100, y: 80,
    duration: 20,
    repeat: -1,
    yoyo: true,
    ease: 'sine.inOut',
  })
  gsap.to(orb2.value, {
    x: -80, y: -60,
    duration: 18,
    repeat: -1,
    yoyo: true,
    ease: 'sine.inOut',
  })

  // Logo — scale in with bounce
  tl.fromTo(logoWrap.value,
    { opacity: 0, scale: 0.5, rotation: -10 },
    { opacity: 1, scale: 1, rotation: 0, duration: 0.8, ease: 'back.out(1.7)' }
  )

  // Badge — fade up
  tl.fromTo(badge.value,
    { opacity: 0, y: 30 },
    { opacity: 1, y: 0, duration: 0.6 },
    '-=0.3'
  )

  // Title group visible
  tl.set(titleGroup.value, { opacity: 1 }, '-=0.2')

  // Title lines — staggered from left
  tl.fromTo(titleLine1.value,
    { opacity: 0, x: -60 },
    { opacity: 1, x: 0, duration: 0.7 }
  )
  tl.fromTo(titleLine2.value,
    { opacity: 0, x: -60 },
    { opacity: 1, x: 0, duration: 0.7 },
    '-=0.5'
  )
  tl.fromTo(titleLine3.value,
    { opacity: 0, x: -60 },
    { opacity: 1, x: 0, duration: 0.6 },
    '-=0.4'
  )

  // Subtitle — fade up
  tl.fromTo(subtitle.value,
    { opacity: 0, y: 20 },
    { opacity: 1, y: 0, duration: 0.6 },
    '-=0.3'
  )

  // Ping card — fade up with scale
  tl.fromTo(pingCard.value,
    { opacity: 0, y: 50, scale: 0.95 },
    { opacity: 1, y: 0, scale: 1, duration: 0.8 },
    '-=0.2'
  )

  // Tech stack tags — stagger fade up
  tl.fromTo(techStack.value,
    { opacity: 1 },
    { opacity: 1, duration: 0.01 }
  )
  tl.fromTo('.tech-tag', // This won't work in SFC, use inline
    { opacity: 0, y: 15 },
    { opacity: 1, y: 0, duration: 0.4, stagger: 0.08 },
    '-=0.3'
  )

  // Actually target the tech stack elements properly
  gsap.fromTo(techStack.value?.children || [],
    { opacity: 0, y: 15 },
    { opacity: 1, y: 0, duration: 0.4, stagger: 0.08, delay: tl.totalDuration() - 0.3 }
  )

  // Floating hover effect on ping button
  if (pingBtn.value && asyncStatus.value !== 'loading') {
    gsap.to(pingBtn.value, {
      y: -3,
      duration: 2,
      repeat: -1,
      yoyo: true,
      ease: 'sine.inOut',
    })
  }
})
</script>
