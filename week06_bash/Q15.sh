#! /bin/bash

file_wordcnt(){
    echo $1 파일의 단어는 $(wc -w < "$1")개 입니다.
}

read -p "Enter a file name: " filename
file_wordcnt "$filename"