![](https://github.com/andriisoldatenko/debug/actions/workflows/docker-publish.yml/badge.svg)
[![Docker Pulls](https://badgen.net/docker/pulls/asoldatenko/debug?icon=docker&label=pulls)](https://hub.docker.com/r/asoldatenko/debug/)
[![Docker Stars](https://badgen.net/docker/stars/asoldatenko/debug?icon=docker&label=stars)](https://hub.docker.com/r/asoldatenko/debug/)
[![Docker Image Size](https://badgen.net/docker/size/asoldatenko/debug?icon=docker&label=image%20size)](https://hub.docker.com/r/asoldatenko/debug/)

# debug
Debug docker image for troubleshooting/debugging inside k8s

* Build/code: `build-base git go bash bash-completion ncurses vim tmux jq`
* Network: `bind-tools iputils tcpdump curl nmap tcpflow iftop net-tools mtr netcat-openbsd bridge-utils iperf ngrep`
* Certificates: `ca-certificates openssl`
* Processes/IO: `htop atop strace iotop sysstat ltrace ncdu logrotate hdparm pciutils psmisc tree pv`

## Run k8s debug pod:

```bash
kubectl debug -it -n demo \
  sample-app --target=sample-debug \
  --image=asoldatenko/debug \
  --share-processes -- sh
```


## Debug node
```bash
kubectl debug node/<name-of-your-node> -it --image=asoldatenko/debug
```


# TODO:
- reduce size of the image :_
- add more tools :_