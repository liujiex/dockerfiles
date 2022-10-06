#! /bin/bash

# 参数1为返回值变量名
# 参数2为返回值
function func_return() {
 local __resultvar=$1
 local myresult=$2
 eval $__resultvar="'$myresult'"
}

function color(){
  local color_name=( black red green yellow blue magenta cyan white \
           黑色 红色 绿色 黄色 蓝色 洋红色 洋红 青色 白色 )
  local color_value=( "30;" "31;" "32;" "33;" "34;" "35;" "36;" "37;" \
        "30;" "31;" "32;" "33;" "34;" "35;" "35;" "36;" "37;" )
  local color_b_value=( "40m" "41m" "42m" "43m" "44m" "45m" "46m" "47m" \
        "40m" "41m" "42m" "43m" "44m" "45m" "45m" "46m" "47m" )

  cstr="\033[1;"

  local count=${#color_name[@]}
#  local index=0
#  while [ "$index" -lt "$count" ]; do
#    echo -en ${color_name[$index]} "\t" ${color_value[$index]} "\t" ${color_b_value[$index]} "\n"
#    let "index=$index + 1"
#  done

  index=0;
  while [ "$index" -lt "$count" ]; do
    if [ "$1" == "${color_name[$index]}" ];then
#      echo -en ${color_name[$index]} "\t" ${color_value[$index]} "\t" ${color_b_value[$index]} "\n"
      cstr=$cstr${color_value[$index]}
      break
    fi
    let "index=$index + 1"
  done

  index=0;
  while [ "$index" -lt "$count" ]; do
    if [ "$2" == "${color_name[$index]}" ];then
#      echo -en ${color_name[$index]} "\t" ${color_value[$index]} "\t" ${color_b_value[$index]} "\n"
      cstr=$cstr${color_b_value[$index]}
      break
    fi
    let "index=$index + 1"
  done

  echo -en $cstr
  
  return 0

  case $1 in 
    black) cstr=$cstr"30;";;
    red) cstr=$cstr"31;";;
    green) cstr=$cstr"32;";;
    yellow) cstr=$cstr"33;";;
    blue) cstr=$cstr"34;";;
    magenta) cstr=$cstr"35;";;
    cyan) cstr=$cstr"36;";;
    white) cstr=$cstr"37;";;
    黑色) cstr=$cstr"30;";;
    红色) cstr=$cstr"31;";;
    绿色) cstr=$cstr"32;";;
    黄色) cstr=$cstr"33;";;
    蓝色) cstr=$cstr"34;";;
    洋红色) cstr=$cstr"35;";;
    洋红) cstr=$cstr"35;";;
    青色) cstr=$cstr"36;";;
    白色) cstr=$cstr"37;";;
    *) cstr=$cstr"37;";;
  esac
  case $2 in 
    black) cstr=$cstr"40m";;
    red) cstr=$cstr"41m";;
    green) cstr=$cstr"42m";;
    yellow) cstr=$cstr"43m";;
    blue) cstr=$cstr"44m";;
    magenta) cstr=$cstr"45m";;
    cyan) cstr=$cstr"46m";;
    white) cstr=$cstr"47m";;
    黑色) cstr=$cstr"40m";;
    红色) cstr=$cstr"41m";;
    绿色) cstr=$cstr"42m";;
    黄色) cstr=$cstr"43m";;
    蓝色) cstr=$cstr"44m";;
    洋红色) cstr=$cstr"45m";;
    洋红) cstr=$cstr"45m";;
    青色) cstr=$cstr"46m";;
    白色) cstr=$cstr"47m";;
    *) cstr=$cstr"40m";;
  esac
  echo -en $cstr
}
function colorend(){
  echo -en "\033[m"
}
function color_echo(){
  color yellow black
  echo $@
  colorend
}


function check_help(){
  if [ $# = "1" ]; then
    if [ $1 = "--help" ]; then
      help
      exit 0
    fi
  fi
}

function error(){
   echo -e "\a"
   color red black
   echo "错误:" $@
   colorend
   exit 1
}



