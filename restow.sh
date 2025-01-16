#!/bin/bash

# 定义 dotfiles 目录
DOTFILES_DIR="$HOME/dotfiles"

# 进入 dotfiles 目录
cd "$DOTFILES_DIR" || { echo "Error: dotfiles directory not found!"; exit 1; }

# 遍历 dotfiles 目录下的所有子文件夹
for app in */; do
  # 去掉末尾的斜杠
  app=${app%/}

  echo "Processing application: $app"

  stow -v -t "$HOME/.config/$app" "$app"
done