# Add an "alert" alias for long running commands.
# Use like so: `sleep 10; alert`
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
# my laziness
alias g='git'
alias lg='lazygit'
# more laziness
alias bc='bc -qli'
alias c='clear'
alias h='history'
alias p='pwd'
# files
alias l='ls -CF'
alias la='ls -A'
alias lat='ls -lArt'
alias lh='ls -lh'
alias ll='ls -AlF'
alias lr='ls -lR'
alias lt='ls -lrt'
# directories
alias ..='cd ..'
alias ...='cd ../..'
alias md='mkdir -p'
alias up='cd ..'
# editors
alias n='nvim'
alias nv='nvim'
alias nvi='nvim'
alias v='vim'
alias vi='vim'
# new commands
alias path='echo -e ${PATH//:/\\n}'
alias rn='date +"%T"'
alias todate='date +"%d-%m-%Y"'
alias today='date +"%A"'
# run blog locally
alias franklin="julia -O0 -e 'using Franklin; serve()'"
# start pluto locally
alias pluto="julia -O0 -e 'using Pluto; Pluto.run()'"
