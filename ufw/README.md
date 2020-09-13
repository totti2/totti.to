https://www.linode.com/docs/security/firewalls/configure-firewall-with-ufw/

# UFW - Uncomplicated firewall

Allow all outgoing traffic.
Block all incoming traffic.
Identify the ports & protocol your services are exposed on and allow them.

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