FROM node:lts-alpine

# Metadata
LABEL maintainer="bestony@example.com"
LABEL org.opencontainers.image.title="Claude Code Docker Container"
LABEL org.opencontainers.image.description="Running Claude Code from Docker for easy start to development"
LABEL org.opencontainers.image.url="https://github.com/bestony/clauded"
LABEL org.opencontainers.image.documentation="https://github.com/bestony/clauded"
LABEL org.opencontainers.image.source="https://github.com/bestony/clauded"
LABEL org.opencontainers.image.vendor="bestony"

# Install dependencies in single layer and clean up
RUN apk add --no-cache git && \
    npm install -g @anthropic-ai/claude-code && \
    npm cache clean --force

WORKDIR /app

ENTRYPOINT ["claude"]
