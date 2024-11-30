#!/bin/bash

# Verifica se o nome do projeto foi fornecido
if [ -z "$1" ]; then
    echo "Uso: $0 <nome_do_projeto>"
    exit 1
fi

PROJECT_NAME=$1
PROJECT_DIR=~/dev/projects/$PROJECT_NAME

# Cria a estrutura do projeto
mkdir -p $PROJECT_DIR/src $PROJECT_DIR/include $PROJECT_DIR/build

# Copia o Makefile base
cp ~/dev/templates/gcc_projects_template/Makefile.base $PROJECT_DIR/Makefile

# Ajusta o TARGET no Makefile
sed -i "s|build/app|build/$PROJECT_NAME|g" $PROJECT_DIR/Makefile

echo "Projeto '$PROJECT_NAME' criado em $PROJECT_DIR"
