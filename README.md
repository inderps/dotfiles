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


## iTerm2 Developer Setup

### 1. Install Required Tools and Fonts

```bash
# Install MesloLGS Nerd Font for Powerlevel10k icons
brew install --cask font-meslo-lg-nerd-font

# Install useful CLI tools
brew install zsh-autosuggestions zsh-syntax-highlighting bat eza thefuck
```

### 2. Configure iTerm2 Settings

#### Font Configuration
1. Open iTerm2 → Preferences (⌘+,)
2. Go to **Profiles** → **Text**
3. Change font to **MesloLGS Nerd Font** (size 13-14 recommended)
4. Enable "Use ligatures" if available

#### Color Scheme
1. Download Dracula theme:
   ```bash
   curl -L https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/Dracula.itermcolors -o ~/Downloads/Dracula.itermcolors
   ```
2. Go to **Profiles** → **Colors**
3. Click **Color Presets** dropdown → **Import**
4. Select `~/Downloads/Dracula.itermcolors`
5. Select **Dracula** from the Color Presets dropdown

#### Recommended Settings
- **Profiles** → **Window**: Set transparency to ~10-15% (optional)
- **Profiles** → **Terminal**: Enable "Unlimited scrollback"
- **Profiles** → **Keys**: Set Left Option key to "Esc+" for better word navigation

### 3. Update .zshrc with Enhanced Plugins

Add these plugins to your Oh My Zsh configuration:

```bash
plugins=(
  git
  docker
  kubectl
  npm
  node
  python
  pip
  copypath
  copyfile
  web-search
  jsontools
  z
)
```

Add enhanced aliases and tools:

```bash
# Enhanced CLI tools
alias cat='bat'
alias ls='eza --icons --git'
alias ll='eza --icons --git -l'
alias la='eza --icons --git -la'
alias lt='eza --icons --git --tree'

# Zsh autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# thefuck alias (corrects typos)
eval $(thefuck --alias)
eval $(thefuck --alias fk)
```

### 4. Configure Powerlevel10k

Restart iTerm2 and run the configuration wizard:

```bash
p10k configure
```

This will launch an interactive setup to customize your prompt style.

### iTerm - going one word backwards and forwards

https://www.freecodecamp.org/news/jump-between-words-using-keyboard-shortcuts-in-iterm-fb1a70cecf79/

### Change cursor for different vim modes on warp terminal

Add them in zshrc

let &t_SI="\033[4 q" " start insert mode
let &t_EI="\033[1 q" " end insert mode
