##############################################################
# 超カオス状態なのでコピーしないで他の方を参考にした方がいいよ#
##############################################################

# 256色の設定
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi

## 新しく作られたファイルのパーミッションがつねに 644 になるようにする
umask 022

# コアダンプしなくていいよ
ulimit -c 0

# ページャの設定
export PAGER='less -r'

# less のステータス行にファイル名と行数、いま何%かを表示するようにする
export LESS='-X -i -P ?f%f:(stdin).  ?lb%lb?L/%L..  [?eEOF:?pb%pb\%..]'

if [ $!HOSTNAME ]; then
	HOSTNAME=`/bin/hostname`
fi

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#PATH=\
#/bin:\
#/usr/X11R6/bin:\
#/usr/local/bin:\
#/usr/sfw/bin:\
#/usr/ucb/bin:\
#/usr/ccs/bin:\
#/usr/openwin/bin:\
#/usr/sbin:\
#/usr/etc:\
#/usr/bin:\
#/usr/sadm/bin:\
#/usr/sadm/install/bin:\
#/usr/proc/bin:\
#/usr/dt/bin:\
#/usr/xpg4/bin:\
#/usr/bin:\
#/usr/share/emacs/site-lisp/mew:\
#/etc:/home/namu/bin:\
#/usr/bin/mh:\
#/opt/sfw/bin:\
#/usr/local/jdk1.3/bin:\
#/usr/ucb/:\
#/usr/local/bin:\
#/usr/java/j2sdk1.6.0_02/bin:\

#export PATH

#MANPATH=\
#/usr/share/man:\
#/usr/local/man:\
#/opt/sfw/man:\
#/opt/GNUgview/man:\
#/opt/ipf/man:\

# export MANPATH

##################################################
#プロンプト設定
##################################################

# ほすとねーむで仕分け
case $HOSTNAME in
'iwami.higlab.net')
	PS1="[\[\033[35m\]\@\[\033[m\]-\[\033[36m\]\u\[\033[m\]@\[\033[1;32m\]\h:\[\033[33;1m\]\w\[\033[m\]]\\$ "
	export AC_ALL=ja_JP.eucJP
	export LANG=ja_JP.eucJP
	export LC_CTYPE=ja_JP.eucJP
	alias musashi='telnet -l kawada  musashi'
	alias ard='sudo chmod 666  /dev/ttyUSB*'
	eval "`dircolors -b ~/.dir_colors`"
	alias emacs='TERM=xterm-256color emacs'

;;
'musashi.higlab.fr.dendai.ac.jp')
	PS1="[\[\033[35m\]\t\[\033[m\]-\[\033[36m\]\u\[\033[m\]@\[\033[1;31m\]\h:\[\033[33;1m\]\w\[\033[m\]]\\$ "
	alias sudo='/bin/false'
	export AC_ALL=ja_JP.eucJP
	export LANG=ja_JP.eucJP
	export LC_CTYPE=ja_JP.eucJP
	eval "`dircolors -b ~/.dir_colors`"
	alias emacs='TERM=xterm-256color emacs -nw'

;;
*)
	PS1="[\[\033[35m\]\t\[\033[m\]-\[\033[36m\]\u\[\033[m\]@\[\033[1;34m\]\h:\[\033[33;1m\]\w\[\033[m\]]\$ "
	alias musashi='telnet musashi'
	#eval "`dircolors -b ~/.dir_colors`"
;;
esac

export PS1

#############################################################
# あれば便利なエイリアス
#############################################################
alias d~='rm ./*~'
alias l='ls -l -t'
alias la='ls -a'
alias ll='ls -al'
alias lpr='lpr -h'
alias i='whoami'
alias ifconfig='/sbin/ifconfig'
alias ..='cd ..'
alias f='finger'
alias doc='cd /home/share/doc'
alias load='source .bash_profile'
alias x='exit'
alias mu='mutt'
alias df='df -H'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias mac='/sbin/arp -a'
alias clock="/sbin/clock"
alias iwconfig="/sbin/iwconfig2"
alias nash="/sbin/nash"
alias gs="/usr/bin/gs"
alias bashv="bash -version"
alias netstat="netstat | less"
alias shells="cat /etc/shells"
alias du="du -ah | less"
alias vi='vim'
alias s="screen"
alias nano='nano -k -w -i -S'

