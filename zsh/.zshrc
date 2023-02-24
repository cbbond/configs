export ZSH="$HOME/.oh-my-zsh"
export TERM="xterm-256color"
ZSH_THEME="mrtazz"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions.
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR="vim"
else
  export EDITOR="nvim"
fi

# Aliases
alias vim="nvim"
alias fzf="fzf-tmux"
alias aws="source $HOME/.venv/aws/bin/activate"

# Kubernetes
alias k="kubectl"
source <(kubectl completion zsh)
compdef __start_kubectl k

# Gentoo
# Requires app-shells/zsh-completions and app-shells/gentoo-zsh-completions.
autoload -U compinit
compinit

alias update="sudo emerge --sync"
alias upgrade="sudo emerge -uDU @world"
alias remove="sudo emerge --depclean"
alias list-pkgs="qlist -IRv"

# Work
alias wmount="sshfs cody.bond@work:/Users/cody.bond/ $HOME/work"
alias wumount="fusermount -u $HOME/work"

# Add custom scripts to the path.
export PATH=$PATH:$HOME/bin:$HOME/.local/bin:$HOME/go/bin

# DO
alias do="source $HOME/bin/assume_do"

# Go
export GOPATH="$HOME/go"

# Fun
alias wthr="curl wttr.in"
alias gl="glances"
