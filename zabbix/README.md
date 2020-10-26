# Zabbix
- [x] Installation of *appliance* and *agent* in one docker-compose.yml
	
	Adjust IP of the agent-container in web-interface (found [here](https://techexpert.tips/zabbix/zabbix-docker-installation-ubuntu-linux/))

- [ ] Setup e-mail notification on critical events
- [ ] Monitor the UPS
	1. Download templates [here](https://share.zabbix.com)
	Import them via *Configuration* --> *Templates* --> *Import*
	Search for the new template and click on the search result
	Tick all the boxes of *Applications*, *Graphs* you want to be used on your host and hit *enable* or *copy*

[UPS template](https://share.zabbix.com/power-ups/apc/updated-apc-ups)

