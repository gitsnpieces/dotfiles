# paste.c-net.org
pastebin(){
    local url='https://paste.c-net.org/'
    if (( $# )); then
        local file
        for file; do
            curl -s \
                --data-binary @"$file" \
                --header "X-FileName: ${file##*/}" \
                "$url"
        done
    else
        curl -s --data-binary @- "$url"
    fi
}

pasteget(){
    local url='https://paste.c-net.org/'
    if (( $# )); then
        local arg
        for arg; do
            curl -s "${url}${arg##*/}"
        done
    else
        local arg
        while read -r arg; do
            curl -s "${url}${arg##*/}"
        done
    fi
}

# starship terminal title
function set_win_title(){
     echo -ne "\033]0; $(basename "$USER@$HOSTNAME") \007"
}

# glsearch offline dirlog search
glsearch() {
    if [ "$2" == "-s" ]; then
        grep -iF "$1" /home/sleep/copyleft/dirlog/copyleft-dirlog-040326.txt | awk '{$1=""; print $0}'
    else
        grep -iE "$1" /home/sleep/copyleft/dirlog/copyleft-dirlog-040326.txt | awk '{$1=""; print $0}'
    fi
}
