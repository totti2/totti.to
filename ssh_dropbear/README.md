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
```
# retrieve relevant IP-address on local server
ip addr
# look out for docker0 ... 172.xx.0.1


autossh -M 0 -o "ServerAliveInterval 30" -o "ServerAliveCountMax 3" -L 172.xx.0.1:1234:localhost:1234 vicke@mail.totti.to

#only if ~/.ssh/config is configured
# autossh -M 0 -f -T -N mail.totti.to


Host mail.totti.to
    HostName      mail.totti.to
    User          vicke
    Port          22
    IdentityFile  ~/.ssh/id_ecdsa_vicke_mail_totti_to
    LocalForward  1234 localhost:1234
    ServerAliveInterval 30
    ServerAliveCountMax 3
```