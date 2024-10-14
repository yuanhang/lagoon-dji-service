# -e: 设置脚本出错后终止执行
# -u: 遇到为定义变量即报错并终止执行
# -x: 显示执行的命令（及参数）
set -eu
# 设置管道出错后也停止执行。只要一个子命令失败，整个管道命令就失败
set -o pipefail

imageName="dji-service:latest"

docker buildx build --no-cache --platform linux/amd64 -t ${imageName} .