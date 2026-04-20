# Use the official CUDA server image from ggml-org
FROM ghcr.io/ggml-org/llama.cpp:server-cuda

# Install curl if not already present (for downloading)
RUN apt-get update && apt-get install -y --no-install-recommends curl \
    && rm -rf /var/lib/apt/lists/*

# Create models directory
RUN mkdir -p /models

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Expose the port for Runpod HTTP access
EXPOSE 8080

# Use our custom script as entrypoint
ENTRYPOINT ["/entrypoint.sh"]

# Updated CMD with creative settings for erotic roleplay
CMD [ \
    "--model", "/models/model.gguf", \
    "--port", "8080", \
    "--host", "0.0.0.0", \
    "--ctx-size", "32768", \
    "--n-gpu-layers", "999", \
    "--temp", "1.15", \
    "--top-k", "60", \
    "--top-p", "0.95", \
    "--min-p", "0.02", \
    "--repeat-penalty", "1.08", \
    "--verbose" \
]