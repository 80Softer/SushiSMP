#!/bin/bash

# --- 1. Waterfall Proxy の起動 ---
echo "🌊 Starting Waterfall Proxy..."
# 今のディレクトリ（waterfallフォルダ）にあるjarを起動
cd /workspaces/SushiSMP/waterfall
screen -d -m -S proxy java -Xms512M -Xmx512M -jar waterfall.jar

# --- 2. マイクラ本体 (Server) の起動 ---
echo "🌍 Starting Minecraft Server..."
# 注：本体も一緒に動かすなら、serverフォルダのパスを指定しておきます
cd /workspaces/SushiSMP/server
screen -d -m -S minecraft java -Xms1G -Xmx1G -jar server.jar

echo "✅ All servers are starting in background!"
