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

# Switch back to the non-root user
USER node

# Expose port for Render
EXPOSE 3000

#Correct CMD for Alpine-based n8n containers
CMD ["tini", "--", "n8n"]
