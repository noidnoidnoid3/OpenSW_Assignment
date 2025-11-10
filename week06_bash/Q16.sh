#! /bin/bash

file_wordcnt(){
    if [ ! -f "$1" ]; then
        echo "$1" 파일이 존재하지 않습니다.
        return 1
    fi
    echo $1 파일의 단어는 $(wc -w < "$1")개 입니다.
}

read -p "Enter a file name: " filename
file_wordcnt "$filename"
echo "file_wordcnt 함수의 종료 상태:  $?"