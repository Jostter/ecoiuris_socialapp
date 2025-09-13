#!/bin/bash
set -e

echo "🔑 Testando conexão com GitHub via SSH..."
ssh -T git@github.com || { echo "❌ Falha na conexão SSH. Verifique sua chave em ~/.ssh/config"; exit 1; }

echo "🔎 Conferindo remoto..."
git remote set-url origin git@github.com:Jostter/ecoiuris_socialApp.git
git remote -v

echo "⬇️ Atualizando branch main..."
git fetch origin main

echo "🔀 Fazendo merge..."
git pull origin main --no-rebase

echo "✅ Projeto atualizado com sucesso!"

