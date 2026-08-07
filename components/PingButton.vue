<template>
  <button
    @click="doPing"
    :disabled="loading"
    class="group relative inline-flex items-center gap-3 px-10 py-4 font-display font-semibold text-lg text-portrait-ink bg-white rounded-pill cursor-pointer disabled:cursor-not-allowed transition-all duration-300 hover:-translate-y-0.5 hover:shadow-[0_1px_2px_rgba(0,0,0,0.04),0_4px_12px_rgba(0,0,0,0.06)]"
  >
    <span class="absolute inset-0 rounded-pill p-[1.5px] bg-gradient-to-r from-rainbow-blue via-rainbow-magenta via-rainbow-red via-rainbow-orange via-rainbow-yellow to-rainbow-green -z-10"></span>
    <span class="absolute inset-[1.5px] rounded-[26px] bg-white -z-[5]"></span>

    <span v-if="loading" class="inline-block w-5 h-5 border-2 border-portrait-ink/20 border-t-portrait-ink rounded-full animate-spin"></span>
    <svg v-else class="w-5 h-5 text-portrait-ink/60 group-hover:text-portrait-ink transition-colors" fill="none" stroke="currentColor" viewBox="0 0 24 24">
      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8 12h.01M12 12h.01M16 12h.01M21 12c0 4.418-4.03 8-9 8a9.863 9.863 0 01-4.255-.949L3 20l1.395-3.72C3.512 15.042 3 13.574 3 12c0-4.418 4.03-8 9-8s9 3.582 9 8z"/>
    </svg>
    <span>Ping!</span>
  </button>
</template>

<script setup>
import { ref } from 'vue'

const loading = ref(false)

const emit = defineEmits(['ping'])

async function doPing() {
  loading.value = true
  emit('ping')
  // Call API directly
  try {
    const res = await $fetch('/api/ping')
    emit('response', res)
  } catch (e) {
    emit('error', e)
  }
  loading.value = false
}
</script>
