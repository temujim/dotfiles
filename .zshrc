# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/barca/.oh-my-zsh

# remove username in terminal
# custom, added by James
export DEFAULT_USER=`whoami`

export KEYTIMEOUT=1

# -------- CUSTOM Config Plugins
export CHEATCOLORS=true

# --------- THEME
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-z# sh/wiki/Themes
# This needs awesome installed
# POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_MODE='nerdfont-complete'
# font use, Inconsolate Nerd Font Complete

# POWERLEVEL9K_LINUX_ICON='\uF17C'
# POWERLEVEL9K_LINUX_ICON='\uE0C5'
# POWERLEVEL9K_LINUX_ICON='\uf300'


# --
# custom, added by james
# ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="powerlevel10k/powerlevel10k"


# function virtualenv_info {
# [ $VIRTUAL_ENV ] && echo ‘(‘`basename $VIRTUAL_ENV`’) ‘
# }


# export WORKON_HOME=$HOME/.virtualenvs
# export PROJECT_HOME=$HOME/Devel
# # source /usr/local/bin/virtualenvwrapper.sh
# source /home/barca/py-env/jupy-vim/bin/virtualenvwrapper.sh



# -------- end THeme

######### POWERLINE #####
ZSH_TMUX_AUTOSTART='true'
    
# uncommenting will result to tmux vim adapting to color to
# the shell, and not the vim themes itself
[ -z "$TMUX" ] &&  export TERM="xterm-256color"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
 HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

if [[ "$ENABLE_CORRECTION" == "true" ]]; then
  alias cp='nocorrect cp'
  alias ebuild='nocorrect ebuild'
  alias gist='nocorrect gist'
  alias heroku='nocorrect heroku'
  alias hpodder='nocorrect hpodder'
  alias man='nocorrect man'
  alias mkdir='nocorrect mkdir'
  alias mv='nocorrect mv'
  alias mysql='nocorrect mysql'
  alias sudo='nocorrect sudo'
  alias git='nocorrect git'


  setopt correct_all
fi
# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)
# plugins=(zsh-autosuggestions)
# plugins=(oh-my-matrix)
plugins=(
    virtualenv
    git
    zsh-autosuggestions
)



POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(virtualenv os_icon dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vi_mode)
POWERLEVEL9K_COLOR_SCHEME='light'


# POWERLEVEL9K_VI_INSERT_MODE_STRING="%BINSERT"
# POWERLEVEL9K_VI_COMMAND_MODE_STRING="%BNORMAL"


# POWERLEVEL9K_VI_MODE_INSERT_BACKGROUND='005'
# POWERLEVEL9K_VI_MODE_INSERT_FOREGROUND='236'
# POWERLEVEL9K_VI_MODE_NORMAL_BACKGROUND='245'
POWERLEVEL9K_VI_MODE_NORMAL_FOREGROUND='236'

POWERLEVEL9K_VIRTUALENV_BACKGROUND='none'

POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_CHANGESET_HASH_LENGTH=6

POWERLEVEL9K_VCS_CLEAN_BACKGROUND='none'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='076'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='none'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='005'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='none'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='003'

POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes git-untracked git-aheadbehind git-remotebranch git-tagname)



source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

###################################
# ALIAS
# ################################
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# FOR LYNX
# alias lynx='lynx -accept_all_cookies'
alias lynx='lynx -vikeys'

# POWERLINE CONFIG
#powerline-daemon -q
#POWERLINE_ZSH_CONTINUATION=1
#POWER_ZSH_SLECT=1
#. /home/linus/.local/lib/python3.5/site-packages/powerline/bindings/powerline.sh

# FOR ZENITY
alias zenity="zenity 2>/dev/null"

#### --- TRY TO DISABLE OF AUTOCORRECT   ---####
#alias git status='nocorrect git status'



# chmod code for all
alias lsa="ls -lha --color | awk '{k=0;for(i=0;i<=8;i++)k+=((substr(\$1,i+2,1)~/[rw	x]/)*2^(8-i));if(k)printf(\"%0o \",k);print}'"

# chmod code for directories only
alias lscd="ls -lhd */ --color | awk '{k=0;for(i=0;i<=8;i++)k+=((substr(\$1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf(\"%0o \",k);print}'"

# chmod code for files only
alias lscf="ls -lh --color | grep '^[-l]' | awk '{k=0;for(i=0;i<=8;i++)k+=((substr(\$1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf(\"%0o \",k);print}'"


######################
####### VI MODE START
# enable vim mode on commmand line
bindkey -v

# no delay entering normal mode
# https://coderwall.com/p/h63etq
# https://github.com/pda/dotzsh/blob/master/keyboard.zsh#L10
# 10ms for key sequences
# -------------
# kill the lag in the transition
# by default this is set to 0.4 sec, 
# this sets to 0.1 sec transition
KEYTIMEOUT=1

# show vim status
# http://zshwiki.org/home/examples/zlewidgets
# function zle-line-init zle-keymap-select {
#     RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
#     RPS2=$RPS1
#     zle reset-prompt
# }
# zle -N zle-line-init
# zle -N zle-keymap-select

# add missing vim hotkeys
# http://zshwiki.org/home/zle/vi-mode
bindkey -a u undo
bindkey -a '^T' redo
bindkey '^?' backward-delete-char  #backspace

# history search in vim mode
# http://zshwiki.org./home/zle/bindkeys#why_isn_t_control-r_working_anymore
# ctrl+r to search history
bindkey -M viins '^r' history-incremental-search-backward
bindkey -M vicmd '^r' history-incremental-search-backward


# TEST FOR YANK IN VI MODE ZSH
# As of Apr2020, this is not working
vi-append-x-selection () { RBUFFER=$(xsel -o -p </dev/null)$RBUFFER; }
zle -N vi-append-x-selection
bindkey -a '^X' vi-append-x-selection
vi-yank-x-selection () { print -rn -- $CUTBUFFER | xsel -i -p; }
vi-yank-x-selection () { print -rn -- $CUTBUFFER | xsel -i -b; }
zle -N vi-yank-x-selection
bindkey -a '^Y' vi-yank-x-selection

# ##############################
# can be deleted since conda activate is not working despite the instructions
# /usr/bin/anaconda3/etc/profile.d/conda.sh #permission issues 



#### VI MODE END

# this can be deleted
### TEST FOR LOLCAT ###########
#PS1_colorless=${PS1:-'\h:\W \u\$ '}
#
#ESC=$(echo -e '\033')
#SOH=$(echo -e '\001')
#STX=$(echo -e '\002')
#PS1_color_wrap='s/'$ESC'\\[[[:digit:];]*m/'$SOH'&'$STX'/g'
#
#PS1="\$(lolcat -f <<< \"$PS1_colorless\" | sed '$PS1_color_wrap')"
#
## seem to not work
#


###############################k

#### including motivate quotes and cowsa
#motivate | cowsay
#
# motivate cowsay with colors and randomized characters
motivate | sed "s,\x1B\[[0-9;]*[a-zA-Z],,g" | lolcat
# motivate | cowsay -f `ls /usr/share/cowsay/cows/  | shuf -n 1` | lolcat | sed "s,\x1B\[[0-9;]*[a-zA-Z],,g" | lolcat
# motivate | cowsay -f `ls /usr/share/cowsay/cows/  | shuf -n 1` | lolcat | sed $PS1_color_wrap 
#motivate | cowsay -f `ls /usr/share/cowsay/cows/  | shuf -n 1` | lolcat | sed 's/\[1;m//g' | lolcat
# sed removes the [1;m characters that results in lolcat
# ls shuf -n 1 shuffles the characters
# lolcat provides colors

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# Virtual ENV James May2020
VIRTUAL_ENV_DISABLE_PROMPT=1
