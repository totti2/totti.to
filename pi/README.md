# Basic Setup of a Raspberry Pi

1. after flashing the SD-card put an empty *ssh* file on the boot partition

2. Add user, creat password and add user to sudoers group
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


### Useful
https://linuxize.com/post/how-to-create-users-in-linux-using-the-useradd-command/
https://linuxize.com/post/how-to-add-user-to-sudoers-in-ubuntu/
https://devconnected.com/how-to-change-user-on-linux/
https://www.cyberciti.biz/faq/linux-remove-user-command/
