if status is-interactive
    # Commands to run in interactive sessions can go here
end

# use y instead of yazi to start, and press q to quit, you'll see the CWD changed. Sometimes, you don't want to change, press Q to quit
function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

bind \t\\ forward-char

#set default editor to neovim
set -x EDITOR /usr/bin/nvim

# neofetch when fish starts
neofetch | awk '{print "           " $0}'




