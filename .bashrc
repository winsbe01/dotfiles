# winsbe01's .bashrc

# Check for an interactive session
[ -z "$PS1" ] && return

alias ls='ls --color=auto'

# Environment variables
export EDITOR='vim'
export BAT
#export DBOX

# Settings for jn
export JNEDITOR='vim'
alias jn='~/.journal/jn'

# Wireless script
alias wup='~/.scripts/wireless up'
alias wdown='~/.scripts/wireless down'

# Surfraw aliases
alias google='sr google'
alias wiki='sr wikipedia'
alias imdb='sr imdb'
alias aur='sr aur'
alias ddg='sr duckduckgo'

# Pianobar aliases
alias pnext='echo -n 'n' > ~/.config/pianobar/ctl'
alias ppause='echo -n 'p' > ~/.config/pianobar/ctl'
alias pquit='echo -n 'q' > ~/.config/pianobar/ctl'
alias plove='echo -n '+' > ~/.config/pianobar/ctl'
alias pban='echo -n '-' > ~/.config/pianobar/ctl'

# Dropbox aliases
alias dropbox='python2 ~/.dropbox/dropbox.py'

# t aliases
alias proj='python2 ~/.scripts/t.py --task-dir ~/.t --list projects'
alias hw='python2 ~/.scripts/t.py --task-dir ~/.t --list hw'
alias m='python2 ~/.scripts/t.py --task-dir ~/.t --list movies'

# website shortcuts
alias hn='elinks news.ycombinator.com'
alias lh='elinks m.lifehacker.com'

# grabs info created from scripts/prompt_update
# formats it to print over to the right of the prompt
function system_stats {
    data=`cat ~/.prompt`
    printf "%${COLUMNS}s" "$data"
}

# echos a color depending on the state of the battery
function bat_indicator {
    perc=`acpi | grep -o [0-9]*% | sed 's/%//'`
    if [ "$perc" -ge "50" ]; then
        echo -en '\e[0;32m'
    elif [ "$perc" -ge "15" ]; then
        echo -en '\e[0;33m'
    else
        echo -en '\e[0;31m'
    fi
}

# takes the magic found here and in scripts/prompt_update
# and sets it into the prompt
PS1='`bat_indicator``system_stats`\e[m\n\u@\h [ \W ] $ '
