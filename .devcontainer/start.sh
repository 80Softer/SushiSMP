#!/bin/bash

# --- 1. Waterfall Proxy の起動 ---
echo "🌊 Starting Waterfall..."
# -L はログ保存、-d -m はバックグラウンド起動、-S は名前付け
cd /workspaces/SushiSMP/waterfall || exit
screen -L -Logfile waterfall.log -d -m -S proxy java -Xms512M -Xmx512M -jar waterfall.jar

# --- 2. 少し待機（起動の重なりを防ぐ） ---
sleep 3

# --- 3. マイクラ本体 (Server) の起動 ---
echo "🌍 Starting Minecraft Server..."
cd /workspaces/SushiSMP/server || exit
screen -L -Logfile server.log -d -m -S minecraft java -Xms1G -Xmx1G -jar server.jar

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ Servers are running in background screens!"
echo "Use 'screen -ls' to see them."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
