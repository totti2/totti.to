# Full-Disk Encryption & SSH-Tunnel during boot & AutoSSH
## [SSH & Full-Disk-Encryption: Dropbear does the trick](https://hamy.io/post/0009/how-to-install-luks-encrypted-ubuntu-18.04.x-server-and-enable-remote-unlocking/#gsc.tab=0)

```bash
apt update && apt-get upgrade -y

apt install dropbear-initramfs

nano /etc/dropbear-initramfs/config
	DROPBEAR_OPTIONS="-p 5555 -s -j -k -I 60"

nano /etc/dropbear-initramfs/authorized_keys
	ecdsa-sha2-nistp521 AAAA ...
	# ed25519 geht nicht

update-initramfs -u
	# Kernel-IP Einstellung lt. Tutorial auf dem VPS ignoriert

nano /etc/ssh/sshd_config
	PermitRootLogin no
	PasswordAuthentication no
	X11Forwarding no

cryptroot-unlock
```

## [Reduce the number of exposed ports to a minium with SSH-Tunnel and AutoSSH](https://www.everythingcli.org/ssh-tunnelling-for-fun-and-profit-autossh/)

autossh -M 0 -o "ServerAliveInterval 30" -o "ServerAliveCountMax 3" -L 1234:localhost:1234 vicke@mail.totti.to