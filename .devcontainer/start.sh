#!/bin/bash

# --- 1. Waterfall の起動 ---
echo "🌊 Starting Waterfall..."
cd /workspaces/SushiSMP/waterfall || exit
# proxyという名前のscreenで裏起動
screen -d -m -S proxy java -Xms512M -Xmx512M -jar waterfall.jar

# --- 2. 少し待機 ---
sleep 5

# --- 3. マイクラ本体の起動 ---
echo "🌍 Starting Minecraft Server..."
cd /workspaces/SushiSMP/server || exit
# minecraftという名前のscreenで裏起動
screen -d -m -S minecraft java -Xms1G -Xmx1G -jar server.jar

echo "✅ Servers started in separate screens!"
