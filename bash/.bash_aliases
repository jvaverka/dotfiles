# Add an "alert" alias for long running commands.
# Use like so: `sleep 10; alert`
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
# my laziness
alias g='git'
alias lg='lazygit'
alias unchanged="git ls-files -v | grep '^h'"
# more laziness
alias bc='bc -qli'
alias c=clear
alias gr=grep
alias h='history'
alias jp='julia --project'
alias less='less -eM'
alias m=more
alias p=pwd
# files
alias e='exa -l --icons'              # try something new
alias ea='exa -la --icons'            # try something new
alias ei='exa --icons'                # icons
alias eii='exa -l --icons'            # icons long
alias er='exa -R'                     # recursive
alias et='exa -l --icons -s changed'  # recently changed
alias etree='exa -T --icons'          # tree
alias l='ls -CF'        # short and sweet
alias la='ls -A'        # show hidden files
alias lat='ls -lArt'    # show hidden files and sort by reverse date
alias lc='ls -ltcr'     # sort by and show change time in reverse order
alias lh='ls -lh'       # show file sizes
alias lk='ls -lSr'      # sort by size in reverse order
alias ll='ls -AlF'      # long with indicators
alias lr='ls -lR'       # long and recursive
alias lt='ls -lrt'      # sort by reverse date
alias lu='ls -ltur'     # sort by and show access time in reverse order
alias lx='ls -lXB'      # sort by extension
alias sl=ls             # room for error
# directories
alias ..='cd ..'
alias ...='cd ../..'
alias md='mkdir -p'
alias up='cd ..'
# editors
alias lv=lvim
alias lvi=lvim
alias n=nvim
alias nv=nvim
alias nvi=nvim
alias v=vim
alias vi=vim
# new commands
alias cat=bat
alias path='echo -e ${PATH//:/\\n}'
alias ldpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'
alias rn='date +"%T"'
alias todate='date +"%d-%m-%Y"'
alias today='date +"%A"'
alias wttr='curl wttr.in/Gainesville+GA?u'       # normal (v1)
alias wttrd='curl v2d.wttr.in/Gainesville+GA?u'  # data-rich (v2) nerd-font day
alias wttre='curl v2.wttr.in/Gainesville+GA?u'   # data-rich (v2) emoji
alias wttrn='curl v2n.wttr.in/Gainesville+GA?u'  # data-rich (v2) nerd-font night
# run blog locally
alias franklin="julia -O0 -e 'using Franklin; serve()'"
# start pluto locally
alias pluto="julia -O0 -e 'using Pluto; Pluto.run()'"
# start jupyter through Julia
alias jupyterjl="julia -e 'using IJulia; notebook(dir=pwd())'"
