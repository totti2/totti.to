# Uninterruptible Power Supply 
(UPS)

My apartment is only fused up to *x* amperes: two additional radiators + oven + hairdryer = blackout. I purchased a Line-Interactive UPS *APC Back-UPS BX - BX700U-GR* for ~80€ with an integrated battery of 7.2Ah at 12V.

### Dimensioning:
- udoo + Raspberry Pi + telephone + 2 routers + modem = **<200W**
- Maximum battery life
	- t = (7,2Ah * 12V / 200W)* 60min
	- = **26min**

This will just do.

### Requirements:
- [x] power supply in case of blackout
- [ ] alert admin about it
- [ ] create log event and save monitoring logs
- [ ] before end of battery: stop services and shutdown clients
- [ ] turn on clients when power is back
- [ ] alert e-mail when power is back




```
sudo apt install apcupsd
lsusb
sudo nano /etc/apcupsd/apcupsd.conf

	UPSNAME ups-apc
	UPSCABLE usb
	UPSTYPE usb
	DEVICE

sudo cp /etc/default/apcupsd /etc/default/apcupsd.bak
sudo nano /etc/default/apcupsd/apcupsd
	
	ISCONFIGURED=yes
	
sudo service apcupsd start
sudo service apcupsd status
sudo reboot
apcaccess status
```