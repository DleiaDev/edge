FROM python:alpine

ARG UID=1000
ARG GID=1000

# Install node
RUN apk add nodejs npm

# Install pnpm
RUN npm i -g pnpm

# Install yfinance
RUN pip install yfinance

# Setup non root user
RUN addgroup -g $GID app && adduser -D -G app -u $UID app

# Copy entrypoint
COPY --chown=app ./docker/dev/entrypoint.sh /entrypoint.sh

# Add execute permission
RUN chmod +x /entrypoint.sh

# Switch user
USER app

# Switch workdir
WORKDIR /app

# Entrypoint
CMD sh /entrypoint.sh
