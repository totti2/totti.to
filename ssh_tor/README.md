# [Tunnel SSH-Traffic through Tor](https://medium.com/@tzhenghao/how-to-ssh-over-tor-onion-service-c6d06194147)

Providing an SSH-access via tor allows me to acces my server even if port forwarding and Dyn-DNS are failing.
Using the [stealth-mode](https://www.antitree.com/2017/08/tor-onion-service-stealth-and-basic-authentication-modes/) avoids the onion address to be listed somewhere. Also it allows only known users to find your service.

On the server side - Rasperry Pi

```
sudo apt install tor
sudo nano /etc/tor/torrc

...
HiddenServiceDir /var/lib/tor/hidden_ssh/
HiddenServiceVersion 2
HiddenServicePort 1234 127.0.0.1:22
HiddenServiceAuthorizeClient stealth user
...

sudo systemctl restart tor
```

On the client side - 