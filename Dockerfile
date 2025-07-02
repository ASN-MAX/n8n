FROM n8nio/n8n:1.100.1

# Set working directory
WORKDIR /data

# Switch to root to install packages
USER root

# Install necessary packages using Alpine's apk
RUN apk add --no-cache \
    ffmpeg \
    curl \
    tzdata \
    bash \
    nano \
    ttf-dejavu

# Set timezone (optional)
ENV TZ=UTC

# Revert back to default user for safety
USER node

# Expose port expected by Render
EXPOSE 3000

# Start n8n
CMD ["n8n"]
