# ------------------------------------------------------------------------------
# .zshenv
# ------------------------------------------------------------------------------
export EDITOR=vim
export PATH="/usr/local/sbin:$PATH"

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


