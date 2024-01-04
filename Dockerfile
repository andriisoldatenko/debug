FROM alpine:3.19.0

RUN apk update && \
    apk add --no-cache \
    # build/code
    build-base git go bash bash-completion ncurses vim tmux jq \
    # network
    bind-tools iputils tcpdump curl nmap tcpflow iftop net-tools mtr netcat-openbsd bridge-utils iperf ngrep \
    # certificates
    ca-certificates openssl \
    # processes/io
    htop atop strace iotop sysstat ltrace ncdu logrotate hdparm pciutils psmisc tree pv \
    # kubernetes
    kubectl

ENTRYPOINT bash