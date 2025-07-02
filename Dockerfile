# Use official n8n base image
FROM n8nio/n8n:1.100.1

# Set working directory
WORKDIR /data

# Install system dependencies (for ffmpeg, fonts, etc.)
USER root
RUN apt-get update && apt-get install -y \
    ffmpeg \
    fonts-liberation \
    tzdata \
    curl \
    nano \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# Set timezone to UTC
ENV TZ=UTC

# Set default user back to node
USER node

# Expose default n8n port
EXPOSE 3000

# Start n8n
CMD ["n8n"]
