#!/bin/bash

set -e  # Para se der erro em algum passo

REPO="git@github.com:Jostter/EcoiurisAP.git"

echo "🔎 Limpando remotes antigos..."
git remote remove origin 2>/dev/null || true

echo "➕ Adicionando remote correto..."
git remote add origin $REPO

echo "🌿 Garantindo branch main..."
git checkout main || git checkout -b main

echo "🌿 Garantindo branch dev..."
git branch dev 2>/dev/null || true

echo "📦 Adicionando alterações..."
git add .

echo "📝 Fazendo commit..."
git commit -m "Setup inicial Ecoiuris" || echo "✔ Nenhuma mudança para commitar"

echo "⬆️ Enviando branch main..."
git push -u origin main

echo "⬆️ Enviando branch dev..."
git push -u origin dev

echo "✅ Setup completo! Agora você tem main e dev no GitHub."
