FROM n8nio/n8n:1.100.1

# Set working directory
WORKDIR /data

# Switch to root to install packages
USER root

# Install dependencies using Alpine's apk
RUN apk add --no-cache \
    ffmpeg \
    curl \
    tzdata \
    bash \
    nano \
    ttf-dejavu

# Set timezone (optional)
ENV TZ=UTC

# Return to non-root user (n8n expects this)
USER node

# Expose port expected by Render
EXPOSE 3000

# Start n8n using the full path
CMD ["node", "/usr/local/lib/node_modules/n8n/bin/n8n"]
