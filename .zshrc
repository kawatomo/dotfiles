###############################################  
# zsh設定ファイル #
# これもカオスです。#
############################################### 
# 色世界おん
autoload colors
colors

# 予測機能
#autoload predict-on
#predict-on

# プロンプトの設定
PROMPT="[%{${fg[magenta]}%}%t%{${reset_color}%}-%{${fg[cyan]}%}%n%{${reset_color}%}@%{${fg_bold[blue]}%}%m%{${reset_color}%}]%(!.#.$) "
alias emacs='TERM=xterm-256color emacs'

PROMPT2="%{${fg[blue]}%}%_> %{${reset_color}%}"
SPROMPT="%{${fg[red]}%}correct: %R -> %r [nyae]? %{${reset_color}%}"
RPROMPT="[%{${fg_bold[yellow]}%}%~%{${reset_color}%}]"

# 右プロンプトに入力がきたら消す
setopt transient_rprompt

###############################################
# キーバインド #
###############################################
# viライクキーバインド
#bindkey -v
# Emacsライクキーバインド
bindkey -e

## 履歴の保存先
HISTFILE=$HOME/.zsh-history
## メモリに展開する履歴の数
HISTSIZE=100000
## 保存する履歴の数
SAVEHIST=100000

## 補完機能の強化
autoload -U compinit
compinit

# 補完候補一覧でファイルの種別を識別マーク表示(ls -F の記号)
setopt list_types
## コアダンプサイズを制限
unlimit coredumpsize
## 出力の文字列末尾に改行コードが無い場合でも表示
unsetopt promptcr
## Emacsライクキーバインド設定
bindkey -e
## 新しく作られたファイルのパーミッションがつねに 644 になるようにする
umask 022
## 色を使う
setopt prompt_subst
## ビープを鳴らさない
setopt nobeep
## 内部コマンド jobs の出力をデフォルトで jobs -l にする
setopt long_list_jobs
## 補完候補一覧でファイルの種別をマーク表示
setopt list_types
## サスペンド中のプロセスと同じコマンド名を実行した場合はリジューム
setopt auto_resume
## 補完候補を一覧表示
setopt auto_list
## 直前と同じコマンドをヒストリに追加しない
setopt hist_ignore_dups
# 余分なスペースを削除してヒストリに記録する
setopt hist_reduce_blanks
# 自動集積機能
setopt correct
## cd 時に自動で push
setopt auto_pushd
## 同じディレクトリを pushd しない
setopt pushd_ignore_dups
## ファイル名で #, ~, ^ の 3 文字を正規表現として扱う
setopt extended_glob
## TAB で順に補完候補を切り替える
setopt auto_menu
# ^Iで補完可能な一覧を表示する。(曖昧補完)
setopt auto_list
# =以降でも補完できるようにする
setopt magic_equal_subst
## zsh の開始, 終了時刻をヒストリファイルに書き込む
setopt extended_history
## =command を command のパス名に展開する
setopt equals
## --prefix=/usr などの = 以降も補完
setopt magic_equal_subst
## ヒストリを呼び出してから実行する間に一旦編集
setopt hist_verify
## ファイル名の展開で辞書順ではなく数値的にソート
setopt numeric_glob_sort
## 出力時8ビットを通す
setopt print_eight_bit
## ヒストリを共有
setopt share_history
## 補完候補のカーソル選択を有効に
zstyle ':completion:*:default' menu select=1
## 補完候補の色づけ
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
## ディレクトリ名を入力するだけでカレントディレクトリを変更
setopt auto_cd
## カッコの対応などを自動的に補完
setopt auto_param_keys
## ディレクトリ名の補完で末尾の / を自動的に付加し、次の補完に備える
setopt auto_param_slash
## スペルチェック
setopt correct
## {a-c} を a b c に展開する機能を使えるようにする
setopt brace_ccl
## Ctrl+S/Ctrl+Q によるフロー制御を使わないようにする
setopt NO_flow_control
## コマンドラインの先頭がスペースで始まる場合ヒストリに追加しない
setopt hist_ignore_space
## コマンドラインでも # 以降をコメントと見なす
setopt interactive_comments
## ファイル名の展開でディレクトリにマッチした場合末尾に / を付加する
setopt mark_dirs
## history (fc -l) コマンドをヒストリリストから取り除く。
setopt hist_no_store
## 補完候補を詰めて表示
setopt list_packed
## 最後のスラッシュを自動的に削除しない
setopt noautoremoveslash
# kill の候補にも色付き表示
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([%0-9]#)*=0=01;31'
# 補完の時に大文字小文字を区別しない(但し、大文字を打った場合は小文字に変換しない)
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# mv, rm などをzsh組込み関数に置き換える
zmodload zsh/files
# リダイレクトで上書きする事を許可しない。
setopt no_clobber

# あれば便利
alias j="jobs -l"
#alias x="exit"
#alias s="screen"
#alias mu="mutt"
alias df="df -H"
alias du="du -h"
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"
alias vi="vim"
alias d~="rm ./*~"
alias l="ls -l -t"
alias la="ls -a"
alias ll="ls -al"
alias lpr="lpr -h"
alias i="whoami"
alias ifconfig="/sbin/ifconfig"
alias ..="cd .."
alias f="finger"
#alias doc="cd /home/share/doc"
#alias ukill="skill -kill"
#alias dvips="dvips -t a4"

#alias musashi="ssh kawada@musashi.higlab.net -p 6746 -i /Users/kawada/.ssh/kawadakey"
