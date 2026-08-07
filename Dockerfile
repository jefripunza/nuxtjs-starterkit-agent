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
RUN npm install --legacy-peer-deps

# Copy source code
COPY . .

# Fix npm for build
RUN npm install -g npm@10.9.2 --silent

# Build for production
RUN npm run build

# =============================================================================
# Stage 2: Production (Nitro + Node)
# =============================================================================
FROM node:20-alpine AS runner

WORKDIR /app

# Copy built output from builder
COPY --from=builder /app/.output /app/.output

# Expose port
EXPOSE 3002

# Run Nuxt Nitro production server
ENV HOST=0.0.0.0
ENV PORT=3002
ENV NODE_ENV=production

CMD ["node", ".output/server/index.mjs"]
