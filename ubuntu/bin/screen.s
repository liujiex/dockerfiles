#! /bin/bash

. $(dirname $0)/utils.sh

help(){
  color white black
  cat << HELP
功能: 启动screen会话
命令格式: $(basename "$0") [会话名称] [命令]
HELP
  colorend
}

check_help $@

name=$1
shift
prog=$@

` screen -A -m -d -S $name sh -c "export LD_LIBRARY_PATH=.:lib; $prog " `


