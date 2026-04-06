docker run -d \
  --name ollama-gemma \
  --gpus=all \
  -v ollama_data:/root/.ollama \
  -p 11434:11434 \
  --restart always \
  ollama/ollama && \
sleep 5 && \
docker exec ollama-gemma ollama pull gemma3:270m
