#!/bin/bash

# Atualizar o índice de pacotes
sudo apt update

# Instalar os pacotes necessários
sudo apt install -y git vim curl gnupg gcc g++ make software-properties-common build-essential ca-certificates

# Adicionar a chave do repositório Node.js
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /usr/share/keyrings/nodesource.gpg

# Adicionar o repositório Node.js ao sources.list.d
echo "deb [signed-by=/usr/share/keyrings/nodesource.gpg] https://deb.nodesource.com/node_20.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list

# Atualizar novamente o índice de pacotes
sudo apt update

# Instalar o Node.js
sudo apt install -y nodejs
