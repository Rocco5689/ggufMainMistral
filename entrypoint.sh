#!/bin/bash
mkdir -p /models
if [ ! -f "/models/model.gguf" ] && [ -n "$MODEL_URL" ]; then
  echo "Downloading model from $MODEL_URL ..."
  curl -L -o /models/model.gguf "$MODEL_URL"
fi
exec llama-server --host 0.0.0.0 --port 8080 -m /models/model.gguf "$@"