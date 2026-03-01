FROM node:20-alpine

WORKDIR /app

# Copy the static export into the image
COPY . .

# Optional but nice: run as non-root
USER node

# 'serve' defaults to 3000; we'll pin it explicitly
EXPOSE 3000

CMD ["npx", "--yes", "serve", ".", "-l", "3000"]
