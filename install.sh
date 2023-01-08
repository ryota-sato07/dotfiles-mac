#-------------------------------------------------------------------------------
# Symbolic Links
#-------------------------------------------------------------------------------
#!/bin/bash

cd ~/

# brew がインストールされていなければインストール
if [ -z "$(command -v brew)" ]; then
    echo 'start: Install Homebrew'

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew -v
    brew bundle

    echo 'end: Install Homebrew'
fi

# vim-plug インストール
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


echo 'start: setup Symbolic Links'
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/dotfiles/zsh/.zshenv ~/.zshenv
ln -s ~/dotfiles/zsh/.zsh_history ~/.zsh_history
ln -s ~/dotfiles/vim/.vim ~/.vim
ln -s ~/dotfiles/vim/.vimrc ~/.vimrc
ln -s ~/dotfiles/tmux/.tmux.conf ~/.tmux.conf
echo 'complete: setup Symbolic Links'
