export default defineEventHandler(() => {
  return {
    message: 'pong',
    status: 200,
    timestamp: new Date().toISOString(),
    uptime: process.uptime(),
    framework: 'Nuxt 4.5.2',
    engine: 'Nitro',
    runtime: process.version,
  }
})
