# Zabbix
- [x] Installation of *appliance* and *agent* in one docker-compose.yml
	1. Adjust IP of the agent-container in web-interface (found [here](https://techexpert.tips/zabbix/zabbix-docker-installation-ubuntu-linux/))
	2. Find templates [here](https://share.zabbix.com)
	3. Import via *Configuration* --> *Templates* --> *Import*
	4. Search for the new template and click on the search result
	5. Tick all the boxes of *Applications*, *Graphs* you want to be used on your host and hit *enable* or *copy*
- [ ] Setup e-mail notification on critical events
- [ ] Monitor the UPS
	1. Download a [UPS template](https://share.zabbix.com/power-ups/apc/updated-apc-ups)
	



