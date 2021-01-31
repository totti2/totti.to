# totti.to
## Personal docker-based homeserver

This is to document the setup of my own nextcloud-, jitsi-, matrix-, wireguard- and mail-server-instances. This is more a storage of my setup- and config-files than an actual code repo.

Exposing services to the internet is not all you should do when considering self-hosting. Stable, secure systems require some more attention and preparation. I started with an FMEA using [this](https://medium.com/@adrianco/failure-modes-and-continuous-resilience-6553078caad5) template. The result is a sorted road map.

## Road Map - administration
- [ ] Hardware Monitoring
- [x] UPS
- [ ] Logserver with analytics and alerts
- [x] Tor-Pi
- [ ] Intrusion Detection System

## Target services
- [x] nextcloud
- [ ] jitsi-meet server
- [ ] matrix-server
- [x] wireguard
- [x] Mail-server
- [x] DNS-filter for ad-free browsing
- [x] SSH via Tor

## Server-Setup
* VPS at netcup
* udoo ultra at home
* Raspberry 3B at home

## Standard Procedures
###	Inspect your systems
./[inspect.sh](https://github.com/totti2/totti.to/blob/master/inspect.sh)

### Restart Docker Stacks / Reload images
```
docker logs XXX
docker inspect XXX
Backup relevant data/volume (cp /var/lib/docker/volumes/... /back/up/location/)
docker container stop XXX YYY ZZZ
docker image rm XXX YYY ZZZ
docker-compose up -d
```