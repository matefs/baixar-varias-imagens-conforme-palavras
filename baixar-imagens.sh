#!/bin/bash

# Verifica se pelo menos uma palavra foi passada como argumento
if [ "$#" -lt 1 ]; then
    echo "Por favor, forneça pelo menos uma palavra como argumento."
    exit 1
fi

# Loop através dos argumentos passados
for palavra in "$@"; do
    # Executa o comando ddgs para a palavra atual
    ddgs images -k "$palavra" -m 1 -d
done

