# Potter_Simulator
![test](https://github.com/tentoshinz/robosys2024/actions/workflows/test.yml/badge.svg)

ハリーとヴォルデモートが戦うプログラム

## 概要
- このプロジェクトは入力された数字から導き出された結果をもとに、ハリーとヴォルデモートを戦わせることができるプログラムです
- じゃんけんに飽きた時、呪文を覚えたい時などに使用してください
- 使った呪文、勝敗の確認、好きな魔法の追加編集を行うことが出来ます

## インストール方法
以下の手順でプロジェクトをローカル環境にインストールしてください。

```bash
リポジトリをクローン
git clone https://github.com/tentoshinz/robosys2024/

ディレクトリに移動
cd robosys2024
```

## 使い方
改行で区切られた数字を受け取り、2人の戦いを計算します

実行例
```
$ seq 3 | ./Potter_Simulator
ハリー・ポッター: ウィンガーディアム・レヴィオーサっっっっ
ヴォルデモート: セクタムセンプラああああああ
うぉおおおおおおおおお

ハリー 勝利
```
```
$ ./Potter_Simulator
$ 5
$ 3
$ 6.2
$ 
ハリー・ポッター: シレンズィオっっっっ
ヴォルデモート: アグアメンティああああああ
うぉおおおおおおおおお

ハリー 敗北
```

## 呪文の編集
spell.txtの中に1行ずつ呪文を記述してください

## 必要なソフトウェア
- Python
  - テスト済み: 3.7~3.12

## テスト環境
- Ubuntu 24.04 LTS

## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このパッケージの一部のコードは，下記のスライドを，本人の許可を得て自身の著作としたものです．
    - [ryuichiueda/slides_marp robosys2024](https://github.com/ryuichiueda/slides_marp/tree/master/robosys2024)
- © 2024 tentoshinz