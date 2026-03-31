#!/bin/bash

# --- 1. Proxy (BungeeCord/Velocity) の起動 ---
# screenを使って裏側で動かします
echo "🚀 Starting Proxy..."
screen -d -m -S proxy java -Xms512M -Xmx512M -jar proxy.jar

# --- 2. マイクラ本体 (Paper/Spigotなど) の起動 ---
# 別のscreenで動かします
echo "🚀 Starting Minecraft Server..."
screen -d -m -S minecraft java -Xms1G -Xmx1G -jar server.jar

echo "✅ All servers are starting in background!"
