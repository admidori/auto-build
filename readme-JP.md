[:uk: English infomation](https://github.com/rp-agota/auto-build/blob/master/readme.md)
# Auto Build  
[![CI](https://github.com/rp-agota/auto-build/actions/workflows/check.yml/badge.svg)](https://github.com/rp-agota/auto-build/actions/workflows/check.yml)
[![VERSION](https://img.shields.io/github/v/release/rp-agota/auto-build?label=Release)](https://github.com/rp-agota/auto-build/releases)
[![MIT License](https://img.shields.io/github/license/rp-agota/auto-build?label=License)](https://github.com/rp-agota/auto-build/blob/master/LICENCE)  
  
Dockerを使用して手元の環境を汚すことなくプログラムをコンパイルします。  
  
## 動作確認環境
- Ubuntu 20.04 ※
- Ubuntu 18.04  
- Docker 20.10.16
- Docker-compose 1.29.2
- GNU Make 4.2.1  
※[CI環境](https://github.com/rp-agota/auto-build/actions/workflows/check.yml)での確認  
  
## 対応言語  
- C
- C++ - ALGOL
- Go
- Haskell

# 準備とインストール
## STEP 0
DockerとDocker-composeを手元の環境でインストールしてください。  
その際、sudoを付けずに実行できるようにユーザーをDockerグループに追加しておいてください。  
また、インストールの際にmakeを使用するためmakeも必要です。  

## STEP 1
gitで当リポジトリをcloneしてください。  
```
$ git clone https://github.com/rp-agota/auto-build.git
```  

## STEP 2
ターミナルにて以下を実行してください。  
```
$ cd auto-build
$ sudo make install
```
インストールは以上です。  

# 使い方
任意の名前で作業用のディレクトリを作成し、その中で開発を行います。  
その後、作業用ディレクトリの**親階層**にて、以下を実行します。  
```$ abd [コンパイルを行いたいファイルの拡張子] [作業用ディレクトリの名前] [コンパイルを行いたいファイル名(拡張子無し)]```  
この際、ファイル名に拡張子は含めないことに注意してください。  

**(EX)**
testディレクトリ内のhello.cをコンパイルしたい場合  
`$ abd c test hello`  

## Docker内に入りたい
標準入力を使う場合など、Docker内に入ってコマンドを実行したい場合は、作業用ディレクトリの親階層にて、以下を実行します。  
```$ abd -e [コンパイルを行いたいファイルの拡張子] [作業用ディレクトリの名前] [コンパイルを行いたいファイル名(拡張子無し)]```  
この際、オプション-eを使用していることに注意してください。

# アップデート  
ターミナルにて以下を実行してください。  
```
$ cd auto-build
$ make update
```

# アンインストール
ターミナルにて以下を実行してください。  
```
$ cd auto-build
$ make uninstall
```
アンインストールは以上です。cloneしたファイルは削除して頂いて結構です。  

# Contribute
[Issue](https://github.com/rp-agota/auto-build/issues)や[Pull requests](https://github.com/rp-agota/auto-build/pulls)はいつでも受け付けています。  
お気軽にお声がけください。  

## License
[MIT](https://github.com/rp-agota/auto-build/blob/master/LICENCE) (C) 2021-2022 rp-agota
