FROM n8nio/n8n:latest

# Install ffmpeg
USER root
# Print OS details during build
RUN cat /etc/os-release

RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Switch back to n8n user
USER node
