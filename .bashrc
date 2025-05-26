# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc


alias b="cd .."
alias bb="cd ../.."
alias bbb="cd ../../.."
alias bbbb="cd ../../../.."
alias bbbbb="cd ../../../../.."

export GIT_EDITOR=nvim
set -o vi
alias nv="nvim"
alias vim="nvim"

function frm(){
    for to_delete in "$@"
    do
        to_delete=$(echo ${to_delete} | sed 's|/||')
        mv -f ${to_delete} ${to_delete}_old
        (rm -rf ${to_delete}_old 1>/dev/null 2>&1 &) 
    done
}


# Start Starship prompt 
eval "$(starship init bash)"
