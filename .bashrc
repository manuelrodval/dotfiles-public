# Start Folder
cd ~

# Z.sh
. ~/.zsh/z.sh

# Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias p="cd ~/projects"
alias l="ls -lF"


# Programs
alias g="git"
alias vim="nvim"

# Functions
function mkd() {
	mkdir -p "$@" && cd "$_";
}
