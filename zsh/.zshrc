#===============================================================================
# .zshrc
#===============================================================================

ZSH_THEME="robbyrussell"
plugins=(git)

# -- [ exports ] ---------------------------------------------------------------
# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

# JAVA CDK
export JAVA_HOME=`/usr/libexec/java_home -v "1.8.0_342"`
PATH=$JAVA_HOME/bin:$PATH

# yarn global add
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

# -- [ aliases ] ---------------------------------------------------------------
# git
alias gp="git push origin"
alias gpl="git pull origin"
alias gb="git branch"
alias gc="git commit"
alias ga="git add"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gc-="git checkout --"
alias gs="git status"
alias gl="git log --oneline"
alias gst="git stash"
alias gsa="git stash apply"
alias gm="git merge"
alias gln="git log --oneline -n"
alias gdf="git diff"

# docker compose
alias dcb="docker-compose build"
alias dcu="docker-compose up -d"
alias dcd="docker-compose down"
alias dce="docker-compose exec"
alias dcps="docker-compose ps"

# シェルの再起動
alias relogin='exec $SHELL -l'

# -- [ sh settings ] -----------------------------------------------------------
# setopt
setopt no_beep             # ビープを鳴らさない
setopt auto_cd             # ディレクトリ名で cd
setopt auto_pushd          # cd 時にディレクトリスタックに pushd
setopt share_history       # 他のシェルの history をリアルタイムで共有
setopt hist_ignore_dups    # 直前のコマンドと同じなら、履歴に残さない
setopt pushd_ignore_dups   # 同じディレクトリを pushd しない
setopt inc_append_history  # 実行時に履歴をファイルにに追加

# history setup
export HISTFILE=~/dotfiles/zsh/.zsh_history
export HISTSIZE=100000
export SAVEHIST=100000

# -- [ zshパッケージの設定 ] -------------------------------------------
# zsh-completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit
  compinit
fi

# zsh-autosuggestions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh <- 追加
  autoload -Uz compinit
  compinit
fi

# -- [ zshパッケージの PATH ] --------------------------------------------
# Path
path=(
    /usr/local/opt/coreutils/libexec/gnubin(N-/) # coreutils
    /usr/local/opt/ed/libexec/gnubin(N-/)        # ed
    /usr/local/opt/findutils/libexec/gnubin(N-/) # findutils
    /usr/local/opt/gnu-sed/libexec/gnubin(N-/)   # sed
    /usr/local/opt/gnu-tar/libexec/gnubin(N-/)   # tar
    /usr/local/opt/grep/libexec/gnubin(N-/)      # grep
    ${path}
)

# Manual
manpath=(
    /usr/local/opt/coreutils/libexec/gnuman(N-/) # coreutils
    /usr/local/opt/ed/libexec/gnuman(N-/)        # ed
    /usr/local/opt/findutils/libexec/gnuman(N-/) # findutils
    /usr/local/opt/gnu-sed/libexec/gnuman(N-/)   # sed
    /usr/local/opt/gnu-tar/libexec/gnuman(N-/)   # tar
    /usr/local/opt/grep/libexec/gnuman(N-/)      # grep
    ${manpath}
)
