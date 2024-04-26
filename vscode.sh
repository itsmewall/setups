#!/bin/bash

# Verificar se o wget está instalado
if ! [ -x "$(command -v wget)" ]; then
  echo 'Erro: wget não está instalado. Por favor, instale wget e tente novamente.' >&2
  exit 1
fi

# Verificar se o dpkg está instalado
if ! [ -x "$(command -v dpkg)" ]; then
  echo 'Erro: dpkg não está instalado. Por favor, instale dpkg e tente novamente.' >&2
  exit 1
fi

# Baixar o pacote .deb do VS Code
echo "Baixando o pacote .deb do VS Code..."
wget -O /tmp/vscode.deb https://go.microsoft.com/fwlink/?LinkID=760868

# Instalar o pacote .deb do VS Code
echo "Instalando o VS Code..."
sudo dpkg -i /tmp/vscode.deb

# Verificar se a instalação foi bem sucedida
if [ $? -eq 0 ]; then
  echo "Instalação concluída com sucesso."
else
  echo "Erro: falha ao instalar o VS Code. Verifique se há erros acima e tente novamente." >&2
  exit 1
fi

# Limpar o pacote .deb baixado
rm /tmp/vscode.deb

echo "O Visual Studio Code foi instalado com sucesso!"

