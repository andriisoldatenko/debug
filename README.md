# debug
Debug docker image for troubleshoot/debugging inside k8s

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