# =============================================================================
# NuxtJS StarterKit Agent — Multi-stage Docker Build
# =============================================================================
# Stage 1: Build
# =============================================================================
FROM node:20-alpine AS builder

WORKDIR /app

# Copy package files
COPY package.json package-lock.json ./

# Install dependencies
RUN npm ci --legacy-peer-deps

# Copy source code
COPY . .

# Build for production
RUN npm run build

# =============================================================================
# Stage 2: Production (Nitro + Node)
# =============================================================================
FROM node:20-alpine AS runner

WORKDIR /app

# Copy built output from builder
COPY --from=builder /app/.output /app/.output
COPY --from=builder /app/package.json /app/package.json

# Expose port
EXPOSE 3002

# Run Nuxt production server
ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3002
ENV NODE_ENV=production

CMD ["node", ".output/server/index.mjs"]
