FROM ollama/ollama

# start server tạm thời -> pull model -> kill server
RUN ollama serve & sleep 5 && ollama pull gemma3:270m

EXPOSE 11434

CMD ["ollama", "serve"]
