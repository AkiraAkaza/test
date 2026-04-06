#!/bin/sh

# start ollama server background
ollama serve &

# đợi server sẵn sàng
sleep 5

# pull model nếu chưa có
ollama pull gemma3:270m

# giữ server chạy foreground
wait
