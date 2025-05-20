# system aliases
alias ls='ls -lah --color=auto'
alias cputemp="awk '/temp1/ {print +$2"°C"}' <(sensors)"
alias df='df -hT'
alias dmesg='sudo dmesg -T'
alias update='sudo apt update'
alias upgrade='sudo apt upgrade'
alias install='sudo apt install'
alias remove='sudo apt remove'
alias umount='sudo umount'
alias up='uptime --pretty'
alias ip='ip -c a'
alias boot='[[ -d "/sys/firmware/efi" ]] && echo "UEFI" || echo "BIOS"'
alias ..='cd ..'
alias ...='cd ../..'
alias cls='clear'
alias cfv='cfv -n -s -v -p'
#alias cp='cp -iv'
alias cpuid='cat /sys/devices/cpu/caps/pmu_name'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias h='history'
alias uninstall='sudo apt remove'
alias meminfo="free -h -m -l -t -w"
alias mount='sudo mount'
#alias mv='mv -iv'
alias myip='curl ifconfig.io/ip'
alias nano='nano -w'
alias pass='openssl rand -base64 20'
#alias rm='rm -iv'
alias umount='sudo umount'

# power aliases
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'

# tmux aliases
alias ta='tmux attach -t'
alias tad='tmux attach -d -t'
alias tkss='tmux kill-session'
alias tksv='tmux kill-server'
alias tl='tmux list-sessions'
alias ts='tmux new-session -s'

# server aliases
alias fans='sudo ipmitool sdr list | grep FAN'
alias cpu='sudo ipmitool sdr list | grep CPU'
alias sensor='sudo ipmitool sensor'
alias ipmi='sudo ipmitool'

# srrdb aliases
alias srr='sudo srr_check -f -c -v'
