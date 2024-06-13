FROM node:alpine

EXPOSE 3000

ARG UID=1000
ARG GID=1000

# Install pnpm
RUN npm install -g pnpm

# Create directory where project code will be mounted
RUN mkdir -p /nuxt

# "node" user needs to have permissions in order to write node_modules folder, package-lock.json, etc.
RUN chown -R node /nuxt
RUN chgrp -R node /nuxt

# Copy entrypoint
COPY --chown=node ./docker/dev/nuxt/entrypoint.sh /entrypoint.sh

# Add execute permission
RUN chmod +x /entrypoint.sh

# Switch user
USER node

# cd
WORKDIR /nuxt

# Entrypoint
CMD sh /entrypoint.sh
