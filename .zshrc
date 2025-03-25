export PYTHONPATH="/home/compsciwins/.local/share/pipx/venvs/manim/lib/python3.13/site-packages:$PYTHONPATH"
export PATH=$PATH:$HOME/go/bin
export PATH=/usr/local/bin:$PATH
export CMAKE_ROOT=/usr/local/share/cmake-4.0.0-rc2
export NNN_FIFO=/tmp/nnn.fifo
export PATH=$PATH:~/lua-language-server/bin


eval "$(starship init zsh)"
alias v='nvim'
alias vim='nvim'
bindkey -v

alias ff='~/scripts/fzf.sh'
alias gf='~/scripts/fzf_from.sh'
alias gg='~/scripts/git.sh'
alias build='./scripts/build.sh'
alias run='./scripts/run.sh'
alias dev='cd ~/DEV'
alias ll='ls -la'


alias f='~/scripts/tmux.sh'
alias tt='~/scripts/tmux_sessionizer.sh'
alias cppgen='~/scripts/cpp.sh'
alias g='cd $(git ls-tree --name-only HEAD | fzf)'
alias cggen='~/scripts/c.sh'

export TERM=xterm-256color
export PATH="$HOME/.local/bin:$PATH"
tmux_rename_window() {
  tmux rename-window "$1"
}
alias gpwd='cat ~/Documents/token.md | xclip -selection clipboard  '
stty -ixon

