<template>
  <div>
    <!-- Hero Profile -->
    <section class="relative pt-28 pb-8 px-6">
      <div class="absolute top-20 left-10 w-80 h-80 rounded-full bg-pastel-peach/25 blur-3xl"></div>
      <div class="max-w-2xl mx-auto text-center relative">
        <!-- Avatar -->
        <div class="w-24 h-24 mx-auto mb-6 rounded-full bg-gradient-to-br from-pastel-sky via-pastel-mint to-pastel-peach ring-4 ring-white shadow-lg flex items-center justify-center">
          <span class="text-3xl font-display font-bold text-portrait-ink">JH</span>
        </div>

        <p class="font-body text-[11px] font-semibold text-portrait-slate uppercase tracking-[0.14em] mb-3">Principal Engineer & CEO</p>
        <h1 class="font-display text-[49px] leading-[1.04] tracking-[-0.04em] text-portrait-ink font-semibold">
          Jefri Herdi Triyanto
        </h1>
        <p class="font-display text-xl text-portrait-teal font-medium mt-2">S.T., C.Me</p>

        <div class="flex flex-wrap justify-center gap-3 mt-6">
          <span class="inline-flex items-center px-4 py-1.5 bg-pastel-sky/50 border border-portrait-mist/40 rounded-chip text-xs font-medium text-portrait-ink">AI/ML</span>
          <span class="inline-flex items-center px-4 py-1.5 bg-pastel-mint/50 border border-portrait-mist/40 rounded-chip text-xs font-medium text-portrait-ink">Docker</span>
          <span class="inline-flex items-center px-4 py-1.5 bg-pastel-peach/50 border border-portrait-mist/40 rounded-chip text-xs font-medium text-portrait-ink">CI/CD</span>
          <span class="inline-flex items-center px-4 py-1.5 bg-pastel-sky/50 border border-portrait-mist/40 rounded-chip text-xs font-medium text-portrait-ink">Coolify</span>
          <span class="inline-flex items-center px-4 py-1.5 bg-pastel-mint/50 border border-portrait-mist/40 rounded-chip text-xs font-medium text-portrait-ink">Cloud</span>
          <span class="inline-flex items-center px-4 py-1.5 bg-pastel-peach/50 border border-portrait-mist/40 rounded-chip text-xs font-medium text-portrait-ink">Cyber Security</span>
          <span class="inline-flex items-center px-4 py-1.5 bg-pastel-sky/50 border border-portrait-mist/40 rounded-chip text-xs font-medium text-portrait-ink">Vue/Node</span>
          <span class="inline-flex items-center px-4 py-1.5 bg-pastel-mint/50 border border-portrait-mist/40 rounded-chip text-xs font-medium text-portrait-ink">Python</span>
        </div>
      </div>
    </section>

    <!-- Bio -->
    <section class="max-w-3xl mx-auto px-6 pb-12">
      <div class="bg-white rounded-card p-8 border border-portrait-mist/60 shadow-[0_1px_2px_rgba(0,0,0,0.02),0_3px_6px_rgba(0,0,0,0.03)]">
        <p class="text-lg leading-relaxed text-portrait-body">
          CEO <span class="font-semibold text-portrait-ink">Sawang Teknologi Indonesia</span> — building AI-powered tools for modern businesses.
          Former Tech Lead & Principal Engineer with deep expertise in full-stack development, container orchestration, and AI/ML infrastructure.
          Passionate about bridging the gap between cutting-edge technology and practical business solutions.
        </p>
      </div>
    </section>

    <!-- Experience Timeline -->
    <section class="max-w-3xl mx-auto px-6 pb-16">
      <h2 class="font-display text-2xl font-semibold text-portrait-ink mb-6">Experience</h2>
      <div class="space-y-4">
        <div v-for="(exp, i) in experience" :key="i" class="bg-white rounded-card p-6 border border-portrait-mist/60 shadow-[0_1px_2px_rgba(0,0,0,0.02)] flex flex-col sm:flex-row sm:items-center gap-4">
          <div class="sm:w-32 shrink-0">
            <span class="text-xs font-semibold text-portrait-slate uppercase tracking-wider">{{ exp.period }}</span>
          </div>
          <div>
            <h3 class="font-display text-base font-semibold text-portrait-ink">{{ exp.role }}</h3>
            <p class="text-sm text-portrait-iron mt-1">{{ exp.company }}</p>
          </div>
        </div>
      </div>
    </section>

    <!-- Education & Cert -->
    <section class="max-w-3xl mx-auto px-6 pb-24">
      <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
        <div class="bg-white rounded-card p-6 border border-portrait-mist/60">
          <h3 class="font-display text-base font-semibold text-portrait-ink mb-3">Education</h3>
          <p class="text-sm text-portrait-iron">S.T. Teknik Informatika</p>
          <p class="text-xs text-portrait-slate mt-1">Bachelor of Computer Science</p>
        </div>
        <div class="bg-white rounded-card p-6 border border-portrait-mist/60">
          <h3 class="font-display text-base font-semibold text-portrait-ink mb-3">Certification</h3>
          <p class="text-sm text-portrait-iron">C.Me — Certified Meteorologist</p>
          <div class="flex gap-2 mt-3">
            <span class="inline-flex items-center px-3 py-1 bg-pastel-sky/60 rounded-chip text-xs text-portrait-teal font-medium">AI/ML</span>
            <span class="inline-flex items-center px-3 py-1 bg-pastel-mint/60 rounded-chip text-xs text-portrait-teal font-medium">CyberSec</span>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup>
const experience = [
  { period: 'Sep 2024 — Now', role: 'CEO & Principal Engineer', company: 'Sawang Teknologi Indonesia' },
  { period: '2021 — 2024', role: 'Tech Lead / Principal Engineer', company: 'Remote Technology Solutions' },
  { period: '2018 — 2021', role: 'Senior Full-Stack Developer', company: 'Freelance & Contract' },
]
</script>
