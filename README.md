# totti.to
Personal docker-based homeserver

Basically, I want to have my own cloud, nextcloud. But installing nextcloud and exposing it to the internet ist not enough. I made a lot of mistakes while administrating my cloud-services before. "Admin-Error", so "mis-debugging" or "mis-updating" when in daily use, left the system unusable. Also, I had only a few security measurements set up. fail2ban, full disk encryption, ufw and spamhaus. Back-up were not performed on a regular basis.

I therefore want to

1. Stabilize the system
2. Create a stable admin, update and debug rhythm
3. Initialize System Monitoring (Hardware, logfiles
4. harden security
5. create back-ups on a regular basis

This is more like a storage of my setup- and config-files than an actual code repo. Yet this will contain useful stuff needed for setting up something similar.

To prioritize my activities I started with a FMEA using [this](https://medium.com/@adrianco/failure-modes-and-continuous-resilience-6553078caad5) spreadsheet as a template. I bet I made some mistakes and of course the evaluation considers my perosnal setup only. So there is much room for interpretation.

Current setup
---
- VPS at netcup
	- mailu
	
- udoo ultra at home
	- nextcloud

- Raspberry 3B at home
	- pihole
	- Wireguard

