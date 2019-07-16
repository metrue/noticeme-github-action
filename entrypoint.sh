#!/bin/bash
set -e

# https://gist.github.com/cdown/1163649
urlencode() {
  local length="${#1}"
  for (( i = 0; i < length; i++ ));
  do
    local c="${1:i:1}"
    case $c in
      [a-zA-Z0-9.~_-])
        printf "$c" ;;
      *)
      printf "$c" | xxd -p -c1 | while read x;
      do
        printf "%%%s" "$x";
      done
    esac
  done
}

if [ "$NOTICE_ME_TOKEN" == "" ]; then
  echo "no NOTICE_ME_TOKEN found, please set it in this repo setting"
  exit 1
fi

data=$(urlencode "$*")
curl https://iiiii.li/${NOTICE_ME_TOKEN}?body=$data&from=GitHubAction&name=NoticeMe%20GitHub%20Action
