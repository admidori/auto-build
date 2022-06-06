[:jp: Japanese infomation](https://github.com/rp-agota/auto-build/master/readme.md)
# Auto Build  
[![CI](https://github.com/rp-agota/auto-build/actions/workflows/check.yml/badge.svg)](https://github.com/rp-agota/auto-build/actions/workflows/check.yml)
[![VERSION](https://img.shields.io/github/v/release/rp-agota/auto-build?label=Release)](https://github.com/rp-agota/auto-build/releases)
[![MIT License](https://img.shields.io/github/license/rp-agota/auto-build?label=License)](https://github.com/rp-agota/auto-build/blob/master/LICENCE)  
  
Use Docker to compile your program without polluting your environment.
  
## system requirements 
- Ubuntu 20.04 ※
- Ubuntu 18.04  
※ On [CI](https://github.com/rp-agota/auto-build/actions/workflows/check.yml)
  
## Supported Languages  
- C
- C++
- ALGOL
- Go
- Haskell

# Installation
## STEP 0
It programs need Docker and Docker-compose, make.  
You need to install them if you don't have.
And reccomened to Docker add "Docker" groups. (Docker don't need "sudo" when Execute commands.)

## STEP 1
Clone this repo.    
```
$ git clone https://github.com/rp-agota/auto-build.git
```  

## STEP 2
Excute bellow commands in Shell.
```
$ cd auto-build
$ sudo make install
```
That's all to installations.

# Usage
First, You make directory and to develop there.
Second, Execute bellow command in **parent** directory of working.
```$ abd [extension of file] [name of working directory] [name of to compile file (Without extension)]```  

**(EX)**
If you want to compile "hello.c" in "test" directory.  
`$ abd c test hello`  

## If you want to enter the Docker.  
Execute bellow commands if you work in Docer.  
```$ abd -e [extension of file] [name of working directory] [name of to compile file (Without extension)]```    

# Update  
Execute bellow commands.
```
$ cd auto-build
$ make update
```

# Uninstall
Execute bellow commands.
```
$ cd auto-build
$ make uninstall
```
That's all to uninstallations. You can delete cloned directory.

# Contribute
We are waiting your implovements!!  

## License
[MIT](https://github.com/rp-agota/auto-build/blob/master/LICENCE) (C) 2021-2022 rp-agota
