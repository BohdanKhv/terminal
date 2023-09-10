# Stylish Bash Prompt with Yellow @, $, and :~
PS1="\[\e[1;32m\]\u\[\e[0m\]\[\e[1;33m\]@\[\e[0m\]\[\e[1;34m\]\h\[\e[0m\]\[\e[1;33m\]:\[\e[0m\]\[\e[1;36m\]\w\[\e[0m\]\[\e[1;33m\]$\[\e[0m\] "

# Aliases
alias ls='ls --color=auto'
alias ll='ls -l'
alias grep='grep --color=auto'
alias cls='clear'

# Custom Functions
function weather() {
    curl wttr.in
}

function gitinfo() {
    git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Environment Variables
export EDITOR=nano
export PATH=$PATH:$HOME/bin

# Colored directory listings
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -la'

# Navigation shortcuts
alias ..='cd ..'
alias ...='cd ../..'

# Git aliases
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git pull'
alias gpush='git push'

# Colorful man pages
export LESS_TERMCAP_mb=$'\e[1;31m'
export LESS_TERMCAP_md=$'\e[1;31m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[1;44;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;32m'

# Custom welcome message
function show_welcome() {
    cat << "EOF"
     ______ __  __ _____  _      ____  _____  ________   __
    |  ____|  \/  |  __ \| |    / __ \|  __ \|  ____\ \ / /
    | |__  | \  / | |__) | |   | |  | | |__) | |__   \ V / 
    |  __| | |\/| |  ___/| |   | |  | |  _  /|  __|   > <  
    | |____| |  | | |    | |___| |__| | | \ \| |____ / . \ 
    |______|_|  |_|_|    |______\____/|_|  \_\______/_/ \_\ v1.0
EOF
}

show_welcome

# Set your preferred editor
export VISUAL=nano
export EDITOR="$VISUAL"