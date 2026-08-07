<template>
  <div>
    <!-- Contact Hero -->
    <section class="relative pt-28 pb-8 px-6">
      <div class="absolute top-10 right-20 w-72 h-72 rounded-full bg-pastel-mint/25 blur-3xl"></div>
      <div class="max-w-3xl mx-auto text-center relative">
        <p class="font-body text-[11px] font-semibold text-portrait-slate uppercase tracking-[0.14em] mb-3">Get in Touch</p>
        <h1 class="font-display text-[49px] leading-[1.04] tracking-[-0.04em] text-portrait-ink font-semibold">
          Let's Work <span class="text-portrait-teal">Together</span>
        </h1>
        <p class="max-w-lg mx-auto mt-6 text-lg text-portrait-iron leading-relaxed">
          Have a project in mind? Questions about NuxtJS StarterKit? Let's connect.
        </p>
      </div>
    </section>

    <!-- Contact Cards -->
    <section class="max-w-3xl mx-auto px-6 pb-12">
      <div class="grid grid-cols-1 sm:grid-cols-3 gap-4">
        <a :href="'mailto:jefri@sawang.tech'" class="group bg-white rounded-card p-6 border border-portrait-mist/60 shadow-[0_1px_2px_rgba(0,0,0,0.02)] text-center hover:-translate-y-1 hover:shadow-[0_1px_2px_rgba(0,0,0,0.03),0_4px_12px_rgba(0,0,0,0.06)] transition-all duration-300">
          <div class="w-12 h-12 mx-auto mb-3 rounded-xl bg-pastel-sky flex items-center justify-center group-hover:scale-110 transition-transform">
            <svg class="w-6 h-6 text-portrait-teal" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"/></svg>
          </div>
          <h3 class="font-display text-sm font-semibold text-portrait-ink">Email</h3>
          <p class="text-xs text-portrait-slate mt-1">jefri@sawang.tech</p>
        </a>

        <a href="https://github.com/jefripunza" target="_blank" rel="noopener" class="group bg-white rounded-card p-6 border border-portrait-mist/60 shadow-[0_1px_2px_rgba(0,0,0,0.02)] text-center hover:-translate-y-1 hover:shadow-[0_1px_2px_rgba(0,0,0,0.03),0_4px_12px_rgba(0,0,0,0.06)] transition-all duration-300">
          <div class="w-12 h-12 mx-auto mb-3 rounded-xl bg-pastel-peach flex items-center justify-center group-hover:scale-110 transition-transform">
            <svg class="w-6 h-6 text-portrait-teal" fill="currentColor" viewBox="0 0 24 24"><path d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z"/></svg>
          </div>
          <h3 class="font-display text-sm font-semibold text-portrait-ink">GitHub</h3>
          <p class="text-xs text-portrait-slate mt-1">@jefripunza</p>
        </a>

        <a href="https://sawang.tech" target="_blank" rel="noopener" class="group bg-white rounded-card p-6 border border-portrait-mist/60 shadow-[0_1px_2px_rgba(0,0,0,0.02)] text-center hover:-translate-y-1 hover:shadow-[0_1px_2px_rgba(0,0,0,0.03),0_4px_12px_rgba(0,0,0,0.06)] transition-all duration-300">
          <div class="w-12 h-12 mx-auto mb-3 rounded-xl bg-pastel-mint flex items-center justify-center group-hover:scale-110 transition-transform">
            <svg class="w-6 h-6 text-portrait-teal" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="1.5" d="M21 12a9 9 0 01-9 9m9-9a9 9 0 00-9-9m9 9H3m9 9a9 9 0 01-9-9m9 9c1.657 0 3-4.03 3-9s-1.343-9-3-9m0 18c-1.657 0-3-4.03-3-9s1.343-9 3-9m-9 9a9 9 0 019-9"/></svg>
          </div>
          <h3 class="font-display text-sm font-semibold text-portrait-ink">Website</h3>
          <p class="text-xs text-portrait-slate mt-1">sawang.tech</p>
        </a>
      </div>
    </section>

    <!-- Contact Form -->
    <section class="max-w-xl mx-auto px-6 pb-24">
      <div class="bg-white rounded-card p-8 border border-portrait-mist/60 shadow-[0_1px_2px_rgba(0,0,0,0.02),0_3px_6px_rgba(0,0,0,0.03)]">
        <h2 class="font-display text-xl font-semibold text-portrait-ink mb-6">Send a Message</h2>
        <form class="space-y-5" @submit.prevent="submitForm">
          <div>
            <label class="block text-xs font-semibold text-portrait-slate uppercase tracking-wider mb-2">Name</label>
            <input v-model="form.name" type="text" required
              class="w-full px-4 py-3 bg-portrait-canvas border border-portrait-mist/80 rounded-[16px] text-sm text-portrait-ink placeholder:text-portrait-fog focus:outline-none focus:border-portrait-teal/50 focus:ring-2 focus:ring-portrait-teal/10 transition-all" placeholder="Your name" />
          </div>
          <div>
            <label class="block text-xs font-semibold text-portrait-slate uppercase tracking-wider mb-2">Email</label>
            <input v-model="form.email" type="email" required
              class="w-full px-4 py-3 bg-portrait-canvas border border-portrait-mist/80 rounded-[16px] text-sm text-portrait-ink placeholder:text-portrait-fog focus:outline-none focus:border-portrait-teal/50 focus:ring-2 focus:ring-portrait-teal/10 transition-all" placeholder="you@example.com" />
          </div>
          <div>
            <label class="block text-xs font-semibold text-portrait-slate uppercase tracking-wider mb-2">Message</label>
            <textarea v-model="form.message" rows="4" required
              class="w-full px-4 py-3 bg-portrait-canvas border border-portrait-mist/80 rounded-[16px] text-sm text-portrait-ink placeholder:text-portrait-fog focus:outline-none focus:border-portrait-teal/50 focus:ring-2 focus:ring-portrait-teal/10 transition-all resize-none" placeholder="Your message..."></textarea>
          </div>
          <button type="submit"
            class="w-full relative inline-flex items-center justify-center gap-2 px-6 py-3 font-display font-semibold text-sm text-white rounded-pill bg-portrait-ink hover:bg-portrait-teal transition-all duration-200">
            <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 19l9 2-9-18-9 18 9-2zm0 0v-8"/></svg>
            Send Message
          </button>
        </form>
        <Transition
          enter-active-class="transition-all duration-300"
          enter-from-class="opacity-0 -translate-y-2"
          enter-to-class="opacity-100 translate-y-0"
        >
          <div v-if="submitted" class="mt-4 p-4 bg-pastel-mint/60 rounded-card border border-[#08304c]/10 text-center">
            <p class="text-sm text-portrait-teal font-medium">✓ Message sent successfully! We'll get back to you soon.</p>
          </div>
        </Transition>
      </div>
    </section>
  </div>
</template>

<script setup>
import { ref, reactive } from 'vue'

const form = reactive({ name: '', email: '', message: '' })
const submitted = ref(false)

function submitForm() {
  submitted.value = true
  form.name = ''
  form.email = ''
  form.message = ''
  setTimeout(() => submitted.value = false, 4000)
}
</script>
