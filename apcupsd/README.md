# Uninterruptible Power Supply 
(UPS)

My apartment is only fused up to *x* amperes. Two additional radiators + oven + hairdryer = blackout. I purchased a Line-Interactive UPS *APC Back-UPS BX - BX700U-GR* for ~80€ with an integrated battery of 7.2Ah.

Requirements:
- [x] power supply in case of blackout for 5...10 minutes
--> udoo + Raspberry Pi + telephone + 2 routers + modem = < 200W
--> 200W = 12V * I <==> I = 200W/12V = 16,67A
--> Q = 7,2Ah = 16,67A * t <==> t = (7,2Ah / 16,67A)* 60min = 26min

7,2 Ah * 12 V = 1
- [ ] alert admin about it



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