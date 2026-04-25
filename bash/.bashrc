# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

export VISUAL=nano
export EDITOR=nano
export HISTTIMEFORMAT="%F-%T "

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# MPD server details
export MPD_HOST=192.168.1.69
export MPD_PORT=6600

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# CD into a dir by just typing the dir name
shopt -s autocd

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# Includes file names beginning with a '.' in the results of path name globbing.
shopt -s dotglob

# List all matches in case multiple possible completions are possible
bind 'set show-all-if-ambiguous on'

# Make Tab autocomplete regardless of filename case
bind 'set completion-ignore-case on'

# Allow UTF-8 input and output, instead of showing stuff like $'\0123\0456'
bind 'set input-meta on'
bind 'set output-meta on'
bind 'set convert-meta off'

# Be more intelligent when auto-completing by also looking at the text after
# the cursor.
bind 'set skip-completed-text on'

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# Save all lines of a multiple-line command in the same history entry.
shopt -s cmdhist

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=99999
HISTFILESIZE=99999

# start SSH agent if not running and add keys
if [[ "$SSH_AUTH_SOCK" == "" ]]; then
  eval "$(ssh-agent -s)"
  # add default keys (e.g., id_rsa, id_ed25519) without prompting for passphrase immediately
  ssh-add &>/dev/null 
fi

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Function definitions.
if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
    function set_win_title(){
        echo -ne "\\033]0; $(basename "$PWD") \\007"
    }

# Created by `pipx` on 2025-11-30 08:56:17
#export PATH="$PATH:/home/adam/.local/bin"
#eval "$(register-python-argcomplete pipx)"
#export PYENV_ROOT="$HOME/.pyenv"
#[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"

PROMPT_COMMAND='echo -en "\033]0;$(whoami)@$(hostname):$(pwd)\a"'
eval "$(starship init bash)"
<<<<<<< HEAD

#export RCLONE_CONFIG=/etc/rclone/rclone.conf
=======
export RCLONE_CONFIG=/etc/rclone/rclone.conf
>>>>>>> 2e0c49c (aliases updated)
