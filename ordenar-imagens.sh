#!/bin/bash

# Diretório para pesquisar imagens
diretorio="."

# Nome do arquivo de texto de saída
arquivo_saida="imagens_paths.txt"

# Lista apenas os caminhos das imagens no diretório e subpastas por ordem de modificação e salva em um arquivo de texto
find "$diretorio" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.gif" \) -exec ls -lt {} + | awk '{print $9}' > "$arquivo_saida"

echo "Caminhos das imagens foram salvos em $arquivo_saida."

