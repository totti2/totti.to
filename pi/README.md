# Basic Setup of a Raspberry Pi

## after flashing SD-card do *not* forget the ssh file on the boot partition

1. Add user, creat password and add user to sudoers group
https://linuxize.com/post/how-to-create-users-in-linux-using-the-useradd-command/
https://linuxize.com/post/how-to-add-user-to-sudoers-in-ubuntu/
```
sudo useradd -aG username
sudo passwd username
```
2. change user and test
https://devconnected.com/how-to-change-user-on-linux/
```
su username
sudo -s
```

3. Delete user *pi*
https://www.cyberciti.biz/faq/linux-remove-user-command/
```
sudo userdel -r -f pi
```