#!/bin/bash
# SPDX-FileCopyrightText: 2024 tentoshinz
# SPDX-License-Identifier: BSD-3-Clause

ng () {
        echo ${1}行目が違うよ
	res=1
}

res=0

### NORMAL INPUT ###

out=$(seq 5 | ./Potter_Simulator)
[ "${out}" = \
"ハリー・ポッター: ステューピファイっっっっ
ヴォルデモート: シレンズィオああああああ
うぉおおおおおおおおお

ハリー 敗北" \
] || ng "$LINENO"


out=$(seq 8 | ./Potter_Simulator)
[ "${out}" = \
"ハリー・ポッター: レッドゥクトっっっっ
ヴォルデモート: カピュラス・トトルムああああああ
うぉおおおおおおおおお

ハリー 勝利" \
] || ng "$LINENO"


out=$(echo | ./Potter_Simulator)
[ "${out}" = \
"ハリー・ポッター: アクシオっっっっ
ヴォルデモート: アグアメンティああああああ
うぉおおおおおおおおお

ハリー 勝利" \
] || ng "$LINENO"



out=$(seq 5 | sed '$adebug' | ./Potter_Simulator)
readarray -t line <<< "$out"
[ "${line[0]}" = 15 ] || ng "$LINENO"
[ "${line[1]}" = 326 ] || ng "$LINENO"
[ "${line[2]}" = 15 ] || ng "$LINENO"
[ "${line[3]}" = 14 ] || ng "$LINENO"


out=$(seq 10 | sed '$adebug' | ./Potter_Simulator)
readarray -t line <<< "$out"
[ "${line[0]}" = 55 ] || ng "$LINENO"
[ "${line[1]}" = 9864101 ] || ng "$LINENO"
[ "${line[2]}" = 16 ] || ng "$LINENO"
[ "${line[3]}" = 26 ] || ng "$LINENO"


out=$(seq 15 | sed '$adebug' | ./Potter_Simulator)
readarray -t line <<< "$out"
[ "${line[0]}" = 120 ] || ng "$LINENO"
[ "${line[1]}" = 3554627472076 ] || ng "$LINENO"
[ "${line[2]}" = 3 ] || ng "$LINENO"
[ "${line[3]}" = 31 ] || ng "$LINENO"


out=$(seq 100 | sed '$adebug' | ./Potter_Simulator)
readarray -t line <<< "$out"
[ "${line[0]}" = 5050 ] || ng "$LINENO"
[ "${line[1]}" = 253686955560127297415270748212280220445147578566298142232775185987449253908386446518940485425152049793267407732328003493609513499849694176709764490323163992001 ] || ng "$LINENO"
[ "${line[2]}" = 19 ] || ng "$LINENO"
[ "${line[3]}" = 35 ] || ng "$LINENO"


out=$(echo -e "3.2\n4.5\n2.1\n5.6" | sed '$adebug' | ./Potter_Simulator)
readarray -t line <<< "$out"
[ "${line[0]}" = 15.4 ] || ng "$LINENO"
[ "${line[1]}" = 240.624 ] || ng "$LINENO"
[ "${line[2]}" = 15 ] || ng "$LINENO"
[ "${line[3]}" = 6 ] || ng "$LINENO"


out=$(echo -e "0.1\n1.2\n0.04\n0.105" | sed '$adebug' | ./Potter_Simulator)
readarray -t line <<< "$out"
[ "${line[0]}" = 1.445 ] || ng "$LINENO"
[ "${line[1]}" = 1.11474 ] || ng "$LINENO"
[ "${line[2]}" = 1 ] || ng "$LINENO"
[ "${line[3]}" = 1 ] || ng "$LINENO"


out=$(echo -e "9835.2356\n81725.2353\n8374.285\n8374.765" | sed '$adebug' | ./Potter_Simulator)
readarray -t line <<< "$out"
[ "${line[0]}" = 108309.5209 ] || ng "$LINENO"
[ "${line[1]}" = 5.637745527801162e+16 ] || ng "$LINENO"
[ "${line[2]}" = 6 ] || ng "$LINENO"
[ "${line[3]}" = 8 ] || ng "$LINENO"



### STRANGE INPUT ###

out=$(echo あ | ./Potter_Simulator)
[ "$?" = 1 ]      || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

# out=$(echo | ./Potter_Simulator)
# [ "$?" = 1 ]      || ng "$LINENO"
# [ "${out}" = "" ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK


exit $res
