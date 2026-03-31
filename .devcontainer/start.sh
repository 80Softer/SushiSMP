#!/bin/bash

# --- 1. Waterfall Proxy の起動 ---
echo "🌊 Moving to Waterfall folder..."
cd /workspaces/SushiSMP/waterfall || exit
echo "🚀 Starting Waterfall..."
# screenで「proxy」という名前で起動
screen -d -m -S proxy java -Xms512M -Xmx512M -jar waterfall.jar

# --- 2. 少し待機（Proxyの起動を待つため） ---
sleep 2

# --- 3. マイクラ本体 (Server) の起動 ---
echo "🌍 Moving to Server folder..."
cd /workspaces/SushiSMP/server || exit
echo "🚀 Starting Minecraft Server..."
# screenで「minecraft」という名前で起動
screen -d -m -S minecraft java -Xms1G -Xmx1G -jar server.jar

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ ALL SERVERS STARTED!"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🔍 Check status with: screen -ls"
