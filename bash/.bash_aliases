# system aliases
alias ls='eza -l -o -h -a -g --icons=always --git'
alias df='df -hT'
alias dmesg='sudo dmesg -T'
alias pastemsg='{ printf '%s\n' "-- MY DMESG --"; dmesg; } | pastebin'
alias mdadm='sudo mdadm --detail /dev/md0'
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
alias cpuid='cat /sys/devices/cpu/caps/pmu_name'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias h='history'
alias uninstall='sudo apt remove'
alias meminfo='free -h -m -l -t -w'
alias mount='sudo mount'
alias myip='curl ifconfig.io/ip'
alias nano='nano -w'
alias pass='openssl rand -base64 20'
alias umount='sudo umount'
alias uptime="uptime -p | sed 's/up //'"

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
alias fans='sudo ipmitool sdr type fan'
alias cpu='sudo ipmitool sdr list | grep "CPU Temp"'
alias sensor='sudo ipmitool sensor'
alias ipmi='sudo ipmitool'

# asrock rack ipmi aliases
alias fansmax='sudo ipmitool raw 0x3a 0x1 0x64 0x64 0x64 0x64 0x64 0x64 0x64 0x64'
alias fans50='sudo ipmitool raw 0x3a 0x1 0x32 0x32 0x32 0x32 0x32 0x32 0x32 0x32'
alias fans25='sudo ipmitool raw 0x3a 0x1 0x16 0x16 0x16 0x16 0x16 0x16 0x16 0x16'
alias fansauto='sudo ipmitool raw 0x3a 0x1 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0'

# asrock rack custom duty cycle:
alias fans1='sudo ipmitool raw 0x3a 0x05 0x01 <hex> 0x00 30 55 60 65 70 75 80 85 90 95'

# srrdb aliases
alias srr='sudo srr_check -f -c -v'

# git aliases
alias status='git status'
alias push='git push origin main'
alias pull='git pull'
alias add='git add .'

# glftpd dirlog dump fresh
alias glupdate='/glftpd/bin/glutil -d | sed "s/^DIRLOG: //" | awk -F" - " "{print \$1}" > /home/sleep/copyleft/dirlog/cl-000026.txt'
alias glsearch='/home/sleep/copyleft/scripts/glsearch.sh'
