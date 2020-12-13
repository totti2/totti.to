# Basic Setup of a Raspberry Pi

1. after flashing the SD-card put an empty *ssh* file on the boot partition

2. Add user, create password and add user to *sudoers* group
```
sudo useradd -aG username
sudo passwd username
```

3. change user and test
```
su username
sudo -s
```

4. Delete user *pi*
```
sudo userdel -r -f pi
```

5. Set options in raspi-config: time, expand filesystem, 
```
sudo raspi-config
```

## Install Docker 
```
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker your-user
```

## portainer-agent
See [here](https://github.com/totti2/totti.to/tree/master/portainer_agent) for the portainer-agent compose-file.

## zabbix-agent
See [here](https://github.com/totti2/totti.to/blob/master/zabbix/docker-compose.yml) for the zabbix-agent compose-file.

## SSH via Tor
See [here](https://github.com/totti2/totti.to/blob/master/ssh_tor/README.md) for some ssh via tor instructions.

### Useful
- https://linuxize.com/post/how-to-create-users-in-linux-using-the-useradd-command/
- https://linuxize.com/post/how-to-add-user-to-sudoers-in-ubuntu/
- https://devconnected.com/how-to-change-user-on-linux/
- https://www.cyberciti.biz/faq/linux-remove-user-command/
