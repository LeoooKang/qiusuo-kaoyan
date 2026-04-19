#!/usr/bin/env bash
#
# 求索号发行版打包脚本
# 将 notes/ + obsidian-plugins/ + 安装脚本 打包为 release zip
#

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VERSION="${1:-v26.3}"
OUTPUT="$SCRIPT_DIR/qiusuo-kaoyan-${VERSION}-with-plugins.zip"

echo "========================================"
echo "  求索号发行版打包工具"
echo "========================================"
echo "版本: $VERSION"
echo "输出: $OUTPUT"
echo ""

# 检查必要文件/目录
if [ ! -d "$SCRIPT_DIR/notes" ]; then
    echo "错误: notes/ 目录不存在"
    echo "请将完整的 Obsidian Vault 复制到 notes/ 目录"
    exit 1
fi

if [ ! -d "$SCRIPT_DIR/obsidian-plugins" ]; then
    echo "错误: obsidian-plugins/ 目录不存在"
    exit 1
fi

# 创建临时目录
TMP_DIR=$(mktemp -d)
trap "rm -rf $TMP_DIR" EXIT

# 复制文件
echo "[1/3] 复制笔记库..."
cp -r "$SCRIPT_DIR/notes" "$TMP_DIR/"

echo "[2/3] 复制插件包..."
cp -r "$SCRIPT_DIR/obsidian-plugins" "$TMP_DIR/"

echo "[3/3] 复制安装脚本..."
cp "$SCRIPT_DIR/PLUGINS.md" "$TMP_DIR/"
cp "$SCRIPT_DIR/install-plugins.ps1" "$TMP_DIR/"
cp "$SCRIPT_DIR/install-plugins.sh" "$TMP_DIR/"

# 打包
echo ""
echo "正在打包..."
cd "$TMP_DIR"
zip -r "$OUTPUT" . -x "*.DS_Store" "*.obsidian/workspace*" "*.trash/*"

echo ""
echo "========================================"
echo "打包完成!"
echo "文件: $OUTPUT"
echo "大小: $(du -sh "$OUTPUT" | cut -f1)"
echo ""
echo "使用方式:"
echo "  1. 将 $OUTPUT 上传到 GitHub Release"
echo "  2. 学弟学妹下载后解压，运行安装脚本"
echo "========================================"
