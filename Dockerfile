# Build stage
FROM node:20-slim as build

WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY . .
RUN npm run build

# Production stage
FROM node:20-slim

WORKDIR /app

COPY package*.json ./
RUN npm ci --only=production

COPY --from=build /app/dist ./dist
COPY prisma ./prisma

ENV NODE_ENV=production

CMD ["node", "dist/main.js"]
