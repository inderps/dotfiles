# Mac setup

```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install the_silver_searcher

brew install direnv

# for plugins into vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \\n    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

brew install fzf
$(brew --prefix)/opt/fzf/install


brew install nvm
git clone https://github.com/Sparragus/zsh-auto-nvm-use ~/.oh-my-zsh/custom/plugins/zsh-auto-nvm-use

```


### iTerm - going one word backwards and forwards

https://www.freecodecamp.org/news/jump-between-words-using-keyboard-shortcuts-in-iterm-fb1a70cecf79/

### Change cursor for different vim modes on warp terminal

Add them in zshrc

let &t_SI="\033[4 q" " start insert mode
let &t_EI="\033[1 q" " end insert mode
