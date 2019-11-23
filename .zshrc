# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ANDROID_HOME=/opt/android/Sdk/
export GOPATH=~/dev/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/opt/android/Sdk/platform-tools
export PATH=$PATH:/opt/bin
export PATH="$HOME/.cargo/bin:$PATH"
XDG_CONFIG_HOME="$HOME/.config"
export XDG_CONFIG_HOME
# Path to your oh-my-zsh installation.
export ZSH=/home/m1311/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="geometry/geometry"
eval "$(starship init zsh)"
#GEOMETRY_SYMBOL_PROMPT=""
#GEOMETRY_SYMBOL_PROMPT=""
#GEOMETRY_SYMBOL_PROMPT=""

#GEOMETRY_SYMBOL_GIT_DIRTY=""                 # when repo has "dirty" state
#GEOMETRY_SYMBOL_GIT_CLEAN=""                 # when repo has "clean" state
#GEOMETRY_SYMBOL_GIT_BARE=""                  # when repo is bare (no working tree)
#GEOMETRY_SYMBOL_GIT_REBASE="ddd"           # when in middle of rebase
#GEOMETRY_SYMBOL_GIT_UNPULLED="eee"              # when there are unpulled changes
#GEOMETRY_SYMBOL_GIT_UNPUSHED="fff"              # when there are unpushed changes
#GEOMETRY_SYMBOL_GIT_CONFLICTS_SOLVED="zzz"      # when all conflicts have been solved
#GEOMETRY_SYMBOL_GIT_CONFLICTS_UNSOLVED="xxx"    # when there are still unsolved conflicts

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

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
export EDITOR="emacsclient -a '' -c"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

[[ $TMUX = "" ]] && export TERM="xterm-256color"

alias quote="~/.config/conky/sidekick/res/quote-offline"
alias quote-online="~/.config/conky/sidekick/res/quote-online"
alias medleytext="sudo /opt/medleytext/medley-latest.AppImage"
alias sub="subl3 ."
alias vi="nvim"
alias q="exit"
alias tls="tmux ls"
alias tkill="tmux kill-session -a"
alias t="tmux"
alias e="emc -nw"
alias ef="emacs -Q -nw"
alias ra="ranger"
alias wfon="nmcli r wifi on"
alias wfoff="nmcli r wifi off"
alias wfs="nmtui-connect"
alias add="sudo pacman -S"
alias up="sudo pacman -Syu"
alias down-song='youtube-dl -o "~/songs/%(title)s.%(ext)s" --format m4a'
alias android-emulator="/opt/android/Sdk/tools/emulator -avd emuApi26Nexus -camera-back webcam0 -camera-front webcam0"
alias android-emulator2="/opt/android/Sdk/tools/emulator -avd emuApi26Nexus -netdelay none -netspeed full -netfast -accel on -nojni"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

figlet -t -c -f larry3d 1311
