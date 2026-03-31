#!/bin/bash
# サーバーのフォルダに移動（例: /workspaces/リポジトリ名/server）
cd /workspaces/$(basename $(pwd))

# もし screen や tmux を使うならここに入れる
# シンプルに起動するなら以下（メモリ割り当ては適宜調整）
java -Xms1G -Xmx2G -jar server.jar nogui