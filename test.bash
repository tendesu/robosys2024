#!/bin/bash

ng () {
        echo ${1}行目が違うよ  #$1はngの1番目の引数
	res=1
}

res=0
a=山田
[ "$a" = 上田 ] || ng "$LINENO"
[ "$a" = 山田 ] || ng "$LINENO"

exit $res
