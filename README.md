# TWRP Device Tree DOOGEE S40

Device specifications
=====================================

Basic   | Spec Sheet
-------:|:-------------------------
CHIPSET | MediaTek MT6739
CPU     | 1.3 GHz Quad-core ARM Cortex A53 CPU
GPU     | PowerVR GE8100
Memory  | 2 GB
Shipped Android Version | Android 9.0 (Pie)
Storage | 16 GB
MicroSD | Up to 32 GB
Battery | 4650 mAh
Dimensions | 158.2 x 79.4 x 14.1 mm
Display | 720 x 1440 pixels 5.5" (293 PPI )
Rear Camera  | 8.0 MP
Front Camera | 8.0 MP
Release Date | March 2019

![DOOGEE S40](https://fdn2.gsmarena.com/vv/bigpic/doogee-s40-pro.jpg "DOOGEE S40")

## Compile

First download minimal AOSP android-9 tree:

```
repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-9.0
```
Then add this project to a new local manifest (.repo/local_manifests/<your-file-name.xml>:

```xml
<project name="twrp_device_tree_doogee_s40" path="device/doogee/S40" remote="janisslsm" revision="android-9.0" />
```

Now you can sync your source:

```
repo sync
```

Finally execute these:

```
. build/envsetup.sh
lunch omni_S40-eng
mka recoveryimage
```
