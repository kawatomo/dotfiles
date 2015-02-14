###############################################
# zsh環境変数 #
###############################################
#PATH=$PATH:$HOME/bin  # パスの追加
#EDITOR=/usr/bin/vi    # エディタの指定
#export EDITOR PATH

# manでひらくページャ
export PAGER='less -r'

# ディレクトリの色設定
# 個人カラー設定のロード
#eval `dircolors -b ~/.dir_colors`
export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad
#export LS_COLORS="no=00;31:fi=00;37:di=00;36:ln=00;31:ex=00;31"

alias ls='ls -G'

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi

#リストが多いときに尋ねる数
# -1 : 尋ねない
#  0 : ウィンドウから溢れるときは尋ねる
LISTMAX=0
export LISTMAX

# java で日本語にならないよ対策
alias javac='javac -J-Dfile.encoding=UTF-8'
alias java='java -Dfile.encoding=UTF-8'

# android
export PATH=$PATH:/Applications/android-sdk-macosx/platform-tools
export PATH=$PATH:/Applications/android-sdk-macosx/tools
export PATH=$PATH:/Applications/android-ndk-r10b

## Cocos ...  Androidビルドする場合追記
export ANDROID_SDK_ROOT=/Applications/android-sdk-macosx
export NDK_ROOT=/Applications/android-ndk-r10b
export ANT_ROOT=/usr/local/bin/ant

# Tex さんは EUC でしかコンパイルしないので
#alias platex="platex --kanji=euc"

#
if [ -n ${DISPLAY} ]; then
    #export DISPLAY=:0.0
fi
