# Portainer-setup & hardening
## [Portainer-setup is pretty much straight forward](https://portainer.readthedocs.io/en/stable/deployment.html#deploy-portainer-via-docker-compose)
port 8000 is ignored because I do not use the [edge agent](https://downloads.portainer.io/edge_agent_guide.pdf)

## [Reduce the number of exposed ports to a minium with SSH-Tunnel and AutoSSH](https://www.everythingcli.org/ssh-tunnelling-for-fun-and-profit-tunnel-options/)

On my VPS, I have a container-based setup that I want to manage from my main hardware. I therefore install a portainer-*agent* on the VPS, managed by the portainer-manager on my *udoo ultra*.

Now, instead of opening yet another port for the portainer-agent, I will tunnel all my traffic through port 22 using autossh.
Thus, I create a container that establishes the tunnel.

To Do
- [x]  Create container for ssh-tunneling
- [x]  Create New *endpoint* in portainer-gui
- [x]  VPS - Close all other open ports with ufw
- [ ]  VPS - restrict the portainer-agent-network to local-acces only
- [ ]  double-check ufw vs. docker
