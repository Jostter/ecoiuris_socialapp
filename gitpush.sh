#!/bin/bash
echo "🔎 Adicionando mudanças..."
git add .

# Mensagem de commit automática com data/hora
msg="Atualização em $(date '+%d/%m/%Y %H:%M:%S')"
git commit -m "$msg" || echo "⚠️ Nada novo para commitar"

echo "🚀 Subindo para GitHub..."
git push origin main
