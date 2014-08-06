Store some config files here:
1. .vimrc:config for vim



```
sudo sed  -i 's/security.ubuntu.com/mirrors.163.com/g'   /etc/apt/sources.list
sudo sed  -i 's/us.archive.ubuntu.com/mirrors.163.com/g'  /etc/apt/sources.list
sudo apt-get update
sudo apt-get install git
sudo apt-get install subversion
sudo apt-get install vim
sudo apt-get install wget

wget https://raw.githubusercontent.com/pjq/config/master/.vimrc -O ~/.vimrc
```
