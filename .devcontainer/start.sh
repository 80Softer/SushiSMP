#!/bin/bash

# --- 1. Waterfall Proxy の起動 ---
echo "🌊 Starting Waterfall Proxy..."
# waterfall フォルダへ移動
cd /workspaces/SushiSMP/waterfall || exit
# screenで起動（メモリは512MB割り当て）
screen -d -m -S proxy java -Xms512M -Xmx512M -jar waterfall.jar

# --- 2. マイクラ本体 (Server) の起動 ---
echo "🌍 Starting Minecraft Server..."
# server フォルダへ移動
cd /workspaces/SushiSMP/server || exit
# screenで起動（メモリは1GB割り当て）
screen -d -m -S minecraft java -Xms1G -Xmx1G -jar server.jar

echo "✅ All servers are starting in background!"
echo "📍 Check status with: screen -ls"
