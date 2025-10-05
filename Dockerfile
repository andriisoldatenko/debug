FROM alpine:3.19.1

RUN apk update && \
    apk add --no-cache \
    # build/code
    build-base git go delve bash bash-completion ncurses vim tmux jq \
    # db
    sqlite \
    # Tracks runtime library calls in dynamically linked programs
    ltrace \
    # Diagnostic, debugging and instructional userspace tracer
    strace \
    # The GNU Debugger
    gdb \
    # network
    bind-tools iputils tcpdump curl nmap tcpflow iftop net-tools mtr netcat-openbsd bridge-utils iperf ngrep \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT bash
