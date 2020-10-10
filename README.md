# totti.to
## Personal docker-based homeserver

this is to document the setup of my own nextcloud-, jitsi-, matrix-, wireguard- and mail-server-instances. This is more a storage of my setup- and config-files than an actual code repo.

Exposing services to the internet is not all you should do when considering self-hosting. Stable, secure systems require some more attention and preparation. I started with an FMEA using [this](https://medium.com/@adrianco/failure-modes-and-continuous-resilience-6553078caad5) template. The result is a sorted road map.

## Road Map - administration
- [ ] Hardware Monitoring
- [ ] UPS
- [ ] Logserver with analytics and alerts
- [ ] Tor-Pi
- [ ] Intrusion Detection System

## Target services
- [ ] nextcloud
- [ ] jitsi-meet server
- [ ] matrix-server
- [ ] wireguard
- [x] Mail-server
- [ ] DNS-filter for ad-free browsing
- [ ] SSH via Tor

## Server-Setup
* VPS at netcup
* udoo ultra at home
* Raspberry 3B at home 