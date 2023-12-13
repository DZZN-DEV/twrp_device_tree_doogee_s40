#
# Copyright 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

Default_Settings() {
	echo "Exporting build enviorment variables."
	
  	export ALLOW_MISSING_DEPENDENCIES=true
    export TARGET_ARCH=arm64
    #export BUILD_2GB_VERSION=1
    export FOX_REPLACE_BUSYBOX_PS=1
  	export FOX_USE_BASH_SHELL=1
  	export FOX_USE_LZMA_COMPRESSION=1
  	export FOX_USE_NANO_EDITOR=1
    export OF_USE_MAGISKBOOT=1
    export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
    export OF_TWRP_COMPATIBILITY_MODE=1
    export OF_DISABLE_MIUI_SPECIFIC_FEATURES=1
    export OF_FORCE_DISABLE_DM_VERITY_FORCED_ENCRYPTION=1
    export OF_DISABLE_DM_VERITY_FORCED_ENCRYPTION=1
    export OF_NO_MIUI_OTA_VENDOR_BACKUP=1
    export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
   	export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
	  export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
  	export OF_USE_NEW_MAGISKBOOT=1
    export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
    export FOX_DELETE_AROMAFM=1
    export OF_USE_GREEN_LED=0
    export OF_FLASHLIGHT_ENABLE=1
    export TW_DEFAULT_LANGUAGE="en"
  	export FOX_BUILD_TYPE="UNOFFICIAL"
  	export FOX_VERSION="9.0"
  	export USE_CCACHE=1
    export OF_MAINTAINER=DZZN-DEV
    export OF_HIDE_NOTCH=1
    export OF_CLOCK_POS=1
    export OF_ALLOW_DISABLE_NAVBAR=1
    export OF_DONT_KEEP_LOG_HISTORY=1
    export OF_NO_MIUI_PATCH_WARNING=1
    export OF_DISABLE_MIUI_OTA_BY_DEFAULT=1
    export FOX_USE_XZ_UTILS=1
    export FOX_LEGACY_TOOLS=1
    
    # lzma
  	[ "$FOX_USE_LZMA_COMPRESSION" = "1" ] && export LZMA_RAMDISK_TARGETS="recovery"

  	# A/B devices
  	#[ "$OF_AB_DEVICE" = "1" ] && export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES="1"

  	# magiskboot
  	[ "$OF_USE_MAGISKBOOT_FOR_ALL_PATCHES" = "1" ] && export OF_USE_MAGISKBOOT="1"
	echo "Done."
}

Default_Settings
add_lunch_combo omni_S40-user
add_lunch_combo omni_S40-userdebug
add_lunch_combo omni_S40-eng
