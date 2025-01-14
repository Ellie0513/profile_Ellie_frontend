FROM node:20.11.1-alpine as builder
LABEL stage=builder

# Create app directory

WORKDIR /app
COPY package*.json /app/ 
RUN npm ci
COPY . /app/
RUN npm run build

FROM node:20.11.1-alpine
WORKDIR /app
COPY --from=builder /app/.output .
COPY --from=builder /app/version.ts .


ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

# 暴露的連接埠
EXPOSE 80

# 啟動應用程式
CMD ["node", "server/index.mjs"]
