# Calculator
calc() { echo "scale=5;$*" | bc -l; }

# define a word
define() { curl -s "dict://dict.org/d:$1" | grep -v '^[0-9]'; }

#dirsize - finds directory sizes and lists them for the current directory
dirsize() {
	du -shx -- * .[a-zA-Z0-9_]* 2>/dev/null | grep -E '^ *[0-9.]*[MG]' | sort -n >/tmp/list
	grep -E '^ *[0-9.]*M' /tmp/list
	grep -E '^ *[0-9.]*G' /tmp/list
	rm /tmp/list
}

# mkdir and cd in one command
mcd() {
	mkdir -p -- "$1" &&
	cd -P -- "$1" || return
}

#myip - finds your current IP if your connected to the internet
myip() {
	lynx -dump -hiddenlinks=ignore -nolist http://checkip.dyndns.org:8245/ | awk '{ print $4 }' | sed '/^$/d; s/^[ ]*//g; s/[ ]*$//g'
}

