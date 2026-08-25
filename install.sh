#!/bin/bash

echo "=== Iniciando a instalação da Linguagem Carlos ==="

for cmd in flex bison g++; do
    if ! command -v $cmd &> /dev/null; then
        echo "Erro: O comando '$cmd' não foi encontrado. Instale-o antes de continuar."
        exit 1
    fi
done

echo "Gerando lex.yy.c"
flex lexer.l

echo "Gerando parser.tab.c e parser.tab.h"
bison -d parser.y

echo "Compilando o executável 'carlos'"
g++ lex.yy.c parser.tab.c -o carlos -lfl

if [ $? -eq 0 ]; then
    echo "Compilação bem-sucedida!"
else
    echo "Erro na compilação do compilador."
    exit 1
fi

echo "Instalando arquivos no sistema..."
sudo mkdir -p /usr/local/include/carlos
sudo cp carlinho.h /usr/local/include/carlos/
sudo cp carlos /usr/local/bin/

echo "=== Instalação concluída com sucesso! ==="
echo "Você já pode usar o comando 'carlos' no seu terminal."
