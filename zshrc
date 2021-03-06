# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="gallois"
ZSH_THEME="kennethreitz"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh
#source /usr/local/Cellar/autoenv/0.1.0/activate.sh
# Customize to your needs...

# Emacs on mac
export PATH=/Applications/Emacs.app/Contents/MacOS/bin:$PATH
alias emacs=/Applications/Emacs.app/Contents/MacOS/Emacs

export PATH=$PATH:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/python:/usr/texbin:/usr/local/mysql/bin:~/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/usr/local/maven/bin
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/
export SNAP=$HOME/Documents/Snap
export HANG=$HOME/Documents/hang

if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi

# Alias
alias ll=ls -l
alias em='emacsclient -nw'
alias enw='emacs -nw'
alias i='ipython'
# commands

export EDITOR="emacsclient -c"
