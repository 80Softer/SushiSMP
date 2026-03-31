#!/bin/bash

# --- 1. Waterfall Proxy の起動 ---
echo "🚀 Starting Waterfall Proxy..."
# waterfall フォルダに移動して起動
cd /workspaces/SushiSMP/waterfall
screen -d -m -S proxy java -Xms512M -Xmx512M -jar waterfall.jar

# --- 2. マイクラ本体 (Server) の起動 ---
echo "🚀 Starting Minecraft Server..."
# server フォルダに移動して起動
cd /workspaces/SushiSMP/server
screen -d -m -S minecraft java -Xms1G -Xmx1G -jar server.jar

echo "✅ All servers are starting in background!"
echo "Check status with: screen -ls"
