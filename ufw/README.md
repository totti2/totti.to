# UFW - Uncomplicated firewall
[It is pretty straight forward](https://wiki.ubuntuusers.de/ufw/)

Allow all outgoing traffic.
Block all incoming traffic.
Identify the ports & protocols your services are using and allow them.

```bash
sudo -s
systemctl status ufw
ufw status
ufw default allow outgoing
ufw default deny incoming
ufw allow 1234/tcp

ufw logging medium
ufw enable
systemctl restart ufw
```