#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias switch='optimus-manager --switch'
alias backup='cp /var/cache/pacman/pkg/* /home/kehongying/pacman_backup/pkg/'
PS1='[\u@\h \W]\$ '
PATH="${PATH}:/usr/bin"

function work()
{
	ssh b06902074@linux$1.csie.ntu.edu.tw
}

function cmlab()
{
	ssh cml$1.csie.ntu.edu.tw
}

function upload()
{
	scp -r $1 "b06902074@140.112.30.38:~/$2"
}

function Download()
{
	scp -r "b06902074@140.112.30.38:~/$1 ."
}

function gpu()
{
	ssh b06902074@meow$1.csie.ntu.edu.tw
}

function open()
{
	xdg-open $1 2>&-
}

function extract()
{
	if [ $(echo $1 | awk -F "." '{print $2}') = "zip" ];then
		unzip $1;
	elif [ $(echo $1 | awk -F "." '{print $2}') = "rar" ];then
		unrar e $1;
	elif [ $(echo $1 | awk -F "." '{print $2}') = "tar" ];then
		tar -zxf $1;
	fi	
}

export WINEARCH=win64 WINEPREFIX=$HOME/.wine winecfg
