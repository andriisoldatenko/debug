FROM alpine:3.21.3

RUN apk update && \
    apk add --no-cache \
    # build/code
    build-base git go delve bash bash-completion ncurses vim tmux jq \
    # db
    sqlite \
    # network
    bind-tools iputils tcpdump curl nmap tcpflow iftop net-tools mtr netcat-openbsd bridge-utils iperf ngrep \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT bash
