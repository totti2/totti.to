apt update && apt-get upgrade -y
apt install dropbear-initramfs
nano /etc/dropbear-initramfs/config
	DROPBEAR_OPTIONS="-p 4748 -s -j -k -I 60"
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