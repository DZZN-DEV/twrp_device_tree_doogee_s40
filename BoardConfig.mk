#
# Copyright (C) 2023 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/doogee/S40

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := e535_dg_m9t_39_p0_eea
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := mt6739
TARGET_USES_64_BIT_BINDER := true
TARGET_IS_64_BIT := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# MTK Hardware
BOARD_HAS_MTK_HARDWARE := true
BOARD_USES_MTK_HARDWARE := true
MTK_HARDWARE := true

# Kernel
BOARD_BOOTIMG_HEADER_VERSION := 1
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x04f88000
BOARD_KERNEL_TAGS_OFFSET := 0x03f88000
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_SEPARATED_DTBO := true
TARGET_KERNEL_CONFIG := S40_defconfig
TARGET_KERNEL_SOURCE := kernel/doogee/S40

# Kernel - prebuilt
TARGET_FORCE_PREBUILT_KERNEL := true
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_KERNEL_SEPARATED_DTBO :=

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 25165824
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SUPPRESS_EMMC_WIPE := true

# Security patch level
VENDOR_SECURITY_PATCH := 2021-08-01

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0

# TWRP Configuration
HAVE_SELINUX := true
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true
TW_IGNORE_MAJOR_AXIS_0 := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_HAS_NO_REAL_SDCARD := false
TW_ALLOW_PARTITION_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_NO_REBOOT_BOOTLOADER := false
#TARGET_USE_CUSTOM_LUN_FILE_PATH := /config/usb_gadget/g1/functions/mass_storage.usb0/lun.%d/file
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness
TW_NO_SCREEN_TIMEOUT := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_DEFAULT_LANGUAGE := en
TW_EXCLUDE_SUPERSU := true
TW_MTP_DEVICE := /dev/mtp_usb
TW_HAS_MTP := true

# Crypto
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/platform/bootdevice/by-name/userdata"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,noatime,discard,noauto_da_alloc,data =ordered"
TW_INCLUDE_CRYPTO := true
TW_EXCLUDE_TWRPAPP := true

ALLOW_MISSING_DEPENDENCIES := true

# SHRP Defaults
SHRP_MAINTAINER := DZZN
SHRP_DEVICE_CODE := S40
SHRP_PATH := device/doogee/$(SHRP_DEVICE_CODE)
SHRP_REC_TYPE := Treble
SHRP_DEVICE_TYPE := A-Only
SHRP_EDL_MODE := 0
SHRP_EXTERNAL := /external_sd
SHRP_INTERNAL := /sdcard
SHRP_OTG := /usbotg
SHRP_FLASH := 1
SHRP_DARK := true
SHRP_REC := /dev/block/bootdevice/by-name/recovery
SHRP_HAS_RECOVERY_PARTITION := true
SHRP_NO_SAR_AUTOMOUNT := true
SHRP_LITE := true

