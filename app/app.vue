<template>
  <ClientOnly>
    <div class="min-h-screen bg-gradient-to-br from-slate-900 via-green-950 to-slate-900 flex items-center justify-center p-6">
      <div class="max-w-2xl w-full text-center">
        <!-- Logo / Icon -->
        <div class="mb-8">
          <div class="inline-flex items-center justify-center w-24 h-24 rounded-2xl bg-gradient-to-br from-green-400 to-emerald-600 shadow-2xl shadow-green-500/30">
            <svg class="w-12 h-12 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 10V3L4 14h7v7l9-11h-7z"/>
            </svg>
          </div>
        </div>

        <!-- Title -->
        <h1 class="text-5xl md:text-7xl font-extrabold text-white mb-4 tracking-tight">
          NuxtJS
          <span class="bg-gradient-to-r from-green-400 to-emerald-300 bg-clip-text text-transparent">
            StarterKit
          </span>
          Agent
        </h1>

        <!-- Subtitle -->
        <p class="text-lg md:text-xl text-slate-300 mb-2">
          Nuxt 4.5.2 + Tailwind CSS + Pinia + Pinia Colada
        </p>
        <p class="text-sm text-slate-500 mb-12">
          Full-stack Vue framework with auto-import, SSR, and smart data fetching
        </p>

        <!-- Ping Section -->
        <div class="bg-slate-800/50 backdrop-blur-sm border border-slate-700/50 rounded-2xl p-8 mb-8">
          <div class="flex flex-col items-center gap-4">
            <button
              @click="doPing"
              :disabled="asyncStatus === 'loading'"
              class="group relative inline-flex items-center gap-3 px-8 py-4 bg-gradient-to-r from-green-500 to-emerald-600 hover:from-green-400 hover:to-emerald-500 disabled:from-slate-600 disabled:to-slate-700 text-white font-semibold text-lg rounded-xl shadow-lg shadow-green-500/20 hover:shadow-green-500/40 disabled:shadow-none transition-all duration-200 cursor-pointer disabled:cursor-not-allowed"
            >
              <span v-if="asyncStatus === 'loading'" class="inline-block w-5 h-5 border-2 border-white/30 border-t-white rounded-full animate-spin"></span>
              <svg v-else class="w-5 h-5 group-hover:animate-bounce transition-transform" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z"/>
              </svg>
              Ping!
            </button>

            <!-- Response -->
            <div v-if="state.status === 'success'" class="w-full mt-2">
              <div class="bg-emerald-900/30 border border-emerald-700/50 rounded-xl p-4 text-left">
                <div class="flex items-center gap-2 mb-2">
                  <span class="inline-block w-2 h-2 rounded-full bg-emerald-400 animate-pulse"></span>
                  <span class="text-emerald-400 font-mono text-sm font-semibold">{{ state.data?.status || 200 }}</span>
                </div>
                <pre class="text-emerald-200/80 text-sm font-mono whitespace-pre-wrap">{{ JSON.stringify(state.data, null, 2) }}</pre>
              </div>
            </div>

            <!-- Error -->
            <div v-if="state.status === 'error'" class="w-full mt-2">
              <div class="bg-red-900/30 border border-red-700/50 rounded-xl p-4">
                <p class="text-red-400 text-sm font-mono">{{ state.error?.message || 'Failed to ping' }}</p>
              </div>
            </div>
          </div>
        </div>

        <!-- Tech Stack Tags -->
        <div class="flex flex-wrap justify-center gap-3">
          <span class="px-4 py-1.5 bg-slate-800/70 border border-slate-700/50 rounded-full text-xs text-slate-400 font-medium">Nuxt 4.5</span>
          <span class="px-4 py-1.5 bg-slate-800/70 border border-slate-700/50 rounded-full text-xs text-slate-400 font-medium">Tailwind CSS</span>
          <span class="px-4 py-1.5 bg-slate-800/70 border border-slate-700/50 rounded-full text-xs text-slate-400 font-medium">Pinia</span>
          <span class="px-4 py-1.5 bg-slate-800/70 border border-slate-700/50 rounded-full text-xs text-slate-400 font-medium">Pinia Colada</span>
          <span class="px-4 py-1.5 bg-slate-800/70 border border-slate-700/50 rounded-full text-xs text-slate-400 font-medium">SSR</span>
          <span class="px-4 py-1.5 bg-slate-800/70 border border-slate-700/50 rounded-full text-xs text-slate-400 font-medium">Nitro</span>
        </div>
      </div>
    </div>

    <!-- SSR Fallback -->
    <template #fallback>
      <div class="min-h-screen bg-slate-900 flex items-center justify-center">
        <div class="text-center">
          <div class="inline-block w-12 h-12 border-4 border-emerald-500/30 border-t-emerald-400 rounded-full animate-spin mb-4"></div>
          <p class="text-slate-400 text-lg">Loading NuxtJS StarterKit Agent...</p>
        </div>
      </div>
    </template>
  </ClientOnly>
</template>

<script setup>
import { useQuery } from '@pinia/colada'

const { state, asyncStatus, refetch } = useQuery({
  key: () => ['ping'],
  query: () => $fetch('/api/ping'),
  lazy: true,
})

async function doPing() {
  await refetch()
}
</script>
