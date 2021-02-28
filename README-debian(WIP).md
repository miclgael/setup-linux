# Debain 10 setup guide work in progress

- Read: [Docker Daemon + Client Prerequisites](https://docs.docker.com/engine/install/binaries/#install-daemon-and-client-binaries-on-linux)
- Read: [iptables/1.8.2 Failed to initialize nft: Protocol not supported](https://superuser.com/questions/1480986/iptables-1-8-2-failed-to-initialize-nft-protocol-not-supported)

```bash
update-alternatives --set iptables /usr/sbin/iptables-legacy
update-alternatives --set ip6tables /usr/sbin/ip6tables-legacy
update-alternatives --set arptables /usr/sbin/arptables-legacy  # Will likely say "yeah, nah, wot?"
update-alternatives --set ebtables /usr/sbin/ebtables-legacy    # Will likely say "yeah, nah, wot?"
```

## Change time zone

```bash
sudo timedatectl set-timezone Australia/Melbourne

date
```

## Setup cron jobs

```bash
sudo su   # enter sudo pass
crontab -e
```
