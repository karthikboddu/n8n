FROM n8nio/n8n:latest

USER root

# Install ffmpeg using apk (Alpine)
# RUN apk update && apk add --no-cache ffmpeg

# Optional: print OS info for confirmation
RUN cat /etc/os-release

USER node
