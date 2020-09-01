# TWRP device tree for Oukitel WP1

## About Device

![OUKITEL WP1](https://d2giyh01gjb6fi.cloudfront.net/default/0002/59/thumb_158477_default_big.jpeg)

### Specifications

Component Type | Details
-------:|:-------------------------
CPU     | Octa-core (4x 2.0 GHz ARM Cortex-A53 & 4x 1.5 GHz ARM Cortex-A53) Helio P23
Chipset | MediaTek MT6763V
GPU     | Dual-core Mali-G71 MP2, 700 MHz
architecture | 64 bit
Memory  | 4 GB LPDDR4X RAM, Dual channel, 1600 MHz
Shipped Android Version | 	Android 8.1 Oreo
Storage | 64 GB, eMMC 5.1
Battery | 5000 mAh
Height | 158.6 mm
Width | 75.8 mm
Thickness | 15.4 mm
weight | 257g
Display | 5.5" (13.97 cm), 24 bit color
Screen resolution | 720 x 1440 pixels
Pixel density | ~293 ppi
Screen to body ratio | 65.15 %
Display type | IPS LCD
Aspect ratio | 18:9
Primary Camera | 13 MP + 2 MP, f/2.8, Dual LED Flash, Sony IMX135 Exmor RS
Primary Camera Resolution | Image: 4160 x 3120, Video: 1920 x 1080, 30 fps
Secondary Camera | 5 MP, f/2.8, GalaxyCore GC5025
Secondary Camera Resolution | Image: 2560 x 1920, Video: 1920 x 1080
Colours | Black, Orange, Green
Body Build | Front glass, Polycarbonate & Aluminium alloy body
Quick charging | Yes, 9V/2A
Wifi | Yes Wi-Fi 802.11, a/b/g/n, Hotspot, Direct
Bluetooth | v4.2
OTG | Yes, Reverse charge
USB Type | C, 2.0, charging, mass storage, on-the-go
Headphone Jack | No 3.5mm jack
Network support | 4G (doesn't support Indian bands), 3G, 2G
SIM 1 | 4G Bands:FD-LTE 2100(band 1) / 1800(band 3) / 2600(band 7) / 900(band 8) / 800(band 20)3G Bands: UMTS 2100 / 900 MHz2G Bands: GSM 1800 / 1900 / 850 / 900 MHz GPRS, EDGE:Available
SIM size | SIM1: Nano, SIM2: Nano (Hybrid)
SIM 2 | 2G Bands: GSM 1800 / 1900 / 850 / 900 MHz GPRS:Available
Sensors | P/L-Sensors, Accelerometer, Gyroscope, Barometer, Geomagnetic Sensor

---

This device tree can be used to build twrp for Oukitel WP1


## Build Instructions
```sh
export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch omni_wp1-eng
mka recoveryimage
```
