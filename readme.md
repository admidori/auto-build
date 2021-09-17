# Auto Build  
Dockerを使用して手元の環境を汚すことなくプログラムをコンパイルします。  
対応言語順次追加予定。  

## 動作確認済環境  
Arch Linux  
MacOS Big Sur  
※他粗方のLinux系OSで動作すると思います。なおWindowsは確実に動きません。  

## 対応言語  
・C言語  

# 準備とインストール
## STEP 0
DockerとDocker-composeを手元の環境でインストールしてください。  
その際、sudoを付けずに実行できるようにユーザーをDockerグループに追加しておいてください。  

## STEP 1
gitで当リポジトリをcloneしてください。  
```$git clone https:github.com/rp-agota/auto-build.git```

## STEP 2
ターミナルにて以下を実行してください。  
```
$chmod 777 install.sh
$./install.sh
```
インストールは以上です。  

# 使い方
任意の名前で作業用のディレクトリを作成し、その中で開発を行います。  
その後、作業用ディレクトリの親階層にて、以下を実行します。  
```$abd [作業用ディレクトリの名前] [コンパイルを行いたいファイル名(拡張子無し)]```
この際、ファイル名に拡張子は含めないことに注意してください。  

# アンインストール
ターミナルにて以下を実行してください。  
```
$chmod 777 uninstall.sh
$./uninstall.sh
```
アンインストールは以上です。  

# Contributor
IssueやPull requestsはいつでも受け付けています。  
お気軽にお声がけください。  