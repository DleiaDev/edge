#!/bin/bash

# Install dependencies
if [ ! -d node_modules ]; then
  pnpm install
fi

# Run nuxt server
pnpm run dev
