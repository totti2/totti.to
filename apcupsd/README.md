# Uninterruptible Power Supply (UPS)

My apartment is only fused up to *x* amperes: two additional radiators + oven + hairdryer = blackout. I purchased a Line-Interactive UPS *APC Back-UPS BX - BX700U-GR* for ~80€ with an integrated battery of 7.2Ah at 12V.

## Dimensioning:
- 2 Routers 78W + Raspberry 15W + udoo ultra 36W + Modem 24W + Telephone 2W = **<155W**
- Estimated battery life
	- t = (7,2Ah * 12V / 155W)* 60min
	- t = **33min**

This will just do. Also, keep in mind that those values were taken from the power supplies of the devices and represent their maximum consumption.

## Requirements:
- [x] power supply in case of blackout
- [ ] alert admin about it
- [x] create log event and save monitoring logs
- [x] before end of battery: stop services and shutdown clients
- [ ] turn on clients when power is back
- [ ] alert e-mail when power is back

Maybe I should answers those requirements with a conditional-construct and squeeze it into a script.
Or I just find a good existing solution in a tutorial. We'll see..


## Setup of the UPS
```
sudo apt install apcupsd
lsusb
sudo cp /etc/apcupsd/apcupsd.conf /etc/apcupsd/apcupsd.conf.bak
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
	...
	TIMELEFT : 71.3 Minutes
	...

sudo apctest
	...
	2...self-test
	...
	
```
