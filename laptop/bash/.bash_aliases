alias gpwd="gopass ls --flat | rofi -dmenu | xargs --no-run-if-empty gopass show -c"
alias ls="ls --color=auto"
alias ll="ls -lah"

alias protocol_tcp_flags="protocol \"Source Port:16,Destination Port:16,Sequence Number:32,\
  Acknowledgment Number:32,Offset:4,Res:3,NS:1,CWR:1,ECE:1,URG:1,ACK:1,PSH:1,RST:1,SYN:1,FIN:1,Window:16,Checksum:16,\
  Urgent Pointer:16,Options:24,Padding:8\""

alias dpi_up='xrdb <(echo "Xft.dpi: 144")'

alias gl='git log --oneline --all --graph'
