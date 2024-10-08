FROM node:18-alpine AS builder
WORKDIR /app
COPY package*.json .
RUN npm ci
COPY . .

ARG VITE_COMING_SOON
ARG VITE_LAUNCH_TIME

ENV VITE_COMING_SOON=$VITE_COMING_SOON
ENV VITE_LAUNCH_TIME=$VITE_LAUNCH_TIME

RUN npm run build
RUN npm prune --production

FROM node:18-alpine
WORKDIR /app
COPY --from=builder /app/build build/
COPY --from=builder /app/node_modules node_modules/
COPY package.json .
EXPOSE 3000
ENV NODE_ENV=production
CMD [ "node", "build" ]
