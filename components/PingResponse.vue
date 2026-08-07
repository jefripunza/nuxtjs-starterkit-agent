<template>
  <div>
    <Transition
      enter-active-class="transition-all duration-500 ease-out"
      enter-from-class="opacity-0 translate-y-4 scale-95"
      enter-to-class="opacity-100 translate-y-0 scale-100"
    >
      <div v-if="data" class="w-full">
        <div class="rounded-card p-6 bg-pastel-mint/40 border border-[#08304c]/10">
          <div class="flex items-center gap-2 mb-4 pb-3 border-b border-portrait-ash/60">
            <span class="w-2.5 h-2.5 rounded-full bg-portrait-teal"></span>
            <span class="font-mono text-sm font-semibold text-portrait-ink">200 OK</span>
            <span class="font-mono text-xs text-portrait-slate ml-auto">{{ data.timestamp }}</span>
          </div>
          <pre class="text-sm font-mono text-portrait-body/80 leading-relaxed">{{ JSON.stringify(data, null, 2) }}</pre>
        </div>
      </div>
    </Transition>

    <Transition
      enter-active-class="transition-all duration-300 ease-out"
      enter-from-class="opacity-0 translate-y-2"
      enter-to-class="opacity-100 translate-y-0"
    >
      <div v-if="error" class="w-full">
        <div class="rounded-card p-6 bg-pastel-peach/40 border border-[#ff4940]/20">
          <p class="text-sm font-mono text-[#ff4940]">{{ error.message || 'Failed to ping' }}</p>
        </div>
      </div>
    </Transition>
  </div>
</template>

<script setup>
defineProps({
  data: { type: Object, default: null },
  error: { type: Object, default: null },
})
</script>
