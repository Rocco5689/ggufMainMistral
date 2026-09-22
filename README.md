# Active model

`MODEL_URL` downloads this GGUF file at container start:

**cognitivecomputations_Dolphin3.0-R1-Mistral-24B-Q5_K_S.gguf**

```
https://huggingface.co/bartowski/cognitivecomputations_Dolphin3.0-R1-Mistral-24B-GGUF/resolve/main/cognitivecomputations_Dolphin3.0-R1-Mistral-24B-Q5_K_S.gguf
```

That URL is also set as the default `ENV MODEL_URL` in the Dockerfile (override at runtime if needed).

# Docker Hub Repository
- cavallo5689/llama-gguf-server:v4

# Volume mount path
- /models
