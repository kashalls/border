FROM node:current-alpine as base

ARG PORT=3000
ENV NODE_ENV=production
WORKDIR /app

FROM base as build

# Copy files in logical layer order
COPY --chown=node:node yarn.lock .
COPY --chown=node:node package.json .
COPY --chown=node:node .yarnrc.yml .
COPY --chown=node:node .yarn/ .yarn/
COPY --chown=node:node nuxt.config.ts .
COPY --chown=node:node tsconfig.json .
# Copy over runtime
COPY --chown=node:node src/ src/
RUN yarn set version berry
RUN yarn install
RUN yarn run build

FROM base

ENV PORT=$PORT
COPY --from=build /app/.output /app/.output
# Optional, only needed if you rely on unbundled dependencies
# COPY --from=build /src/node_modules /src/node_modules
# ⚙️ Configure the default command
USER node
CMD ["node", ".output/server/index.mjs"]
