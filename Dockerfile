FROM ollama/ollama

RUN ollama pull gemma3:270m

EXPOSE 11434

CMD ["ollama", "serve"]
