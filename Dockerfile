FROM ghcr.io/ggml-org/llama.cpp:server-cuda

# Install curl if needed
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 8080
ENTRYPOINT ["/entrypoint.sh"]