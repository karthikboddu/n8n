FROM n8nio/n8n:latest

# Install ffmpeg
USER root
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Switch back to n8n user
USER node
