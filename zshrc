export ZSH="/home/cameron/.oh-my-zsh"
ZSH_THEME=""
plugins=(git)
source $ZSH/oh-my-zsh.sh

fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit

export PURE_GIT_STASH_SYMBOL="$"
zstyle :prompt:pure:prompt:success color green
zstyle :prompt:pure:prompt:error color red
zstyle :prompt:pure:git:stash show yes
zstyle :prompt:pure:git:branch color magenta
zstyle :prompt:pure:host color green
zstyle :prompt:pure:user color yellow
zstyle :prompt:pure:git:dirty color red

prompt pure

# Checkra1n stuff
export CHECKRA1N_CLI=1
export CHECKRA1N_VERBOSE_LOGGING=1
export CHECKRA1N_VERBOSE_BOOT=1

# Various editors and fix aliases with sudo
alias code='vscodium'
alias vim='nvim'
alias sudo='sudo '
export EDITOR=nvim

# Cat images
alias icat="kitty +kitten icat"

# Use the correct key with git
export GIT_SSH_COMMAND='ssh -i ~/.ssh/git -o IdentitiesOnly=yes'

autoload -Uz compinit
compinit
# Completion for kitty
kitty + complete setup zsh | source /dev/stdin

# Swift 5.3
export PATH=$PATH:/home/cameron/Documents/swift5.3-release/usr/bin

# Qt Theme
export QT_QPA_PLATFORMTHEME=gtk2

# Add color
alias ip=ip -color=auto

# Procursus Env Vars
export PATH=/home/cameron/iOS-Projects/cctools/bin:$PATH
export TARGET_SYSROOT=/home/cameron/iOS-Projects/SDK/iPhoneOS13.5.sdk
export MACOSX_SYSROOT=/home/cameron/iOS-Projects/SDK/MacOSX10.15.sdk
export LEAVE_ME_ALONE=1

setopt AUTO_CD
cdpath=(. ~/iOS-Projects ~/Documents)

source /usr/share/doc/pkgfile/command-not-found.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

