#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2019-2020 The OrangeFox Recovery Project
#
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
#
# 	Please maintain this if you use this script or any part of it
#
FDEVICE="chiron"
if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
    export FOX_BUILD_FULL_KERNEL_SOURCES=0 # 0=use prebuilt kernel; 1=build kernel from source
    export OF_USE_MAGISKBOOT=1
    export OF_FORCE_MAGISKBOOT_BOOT_PATCH_MIUI=1
    export OF_DONT_PATCH_ON_FRESH_INSTALLATION=1
    export FOX_USE_NANO_EDITOR=1
    export OF_CLASSIC_LEDS_FUNCTION=0
    export OF_OTA_RES_DECRYPT=1
    export OF_SCREEN_H=2160
    export OF_STATUS_INDENT_LEFT=48
    export OF_STATUS_INDENT_RIGHT=48
    export OF_ALLOW_DISABLE_NAVBAR=0
    export FOX_REPLACE_BUSYBOX_PS=1
    export OF_FLASHLIGHT_ENABLE=1          # if our kernel for the device doesn't support flashlight
    export OF_USE_GREEN_LED=0
    export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
    export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1 # ONLY PIE BUILD SYSTEM!
    export FOX_REPLACE_TOOLBOX_GETPROP=1
    export FOX_USE_TAR_BINARY=1
    export FOX_USE_ZIP_BINARY=1
    export OF_CHECK_OVERWRITE_ATTEMPTS=1
    export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR=1
    export OF_SKIP_MULTIUSER_FOLDERS_BACKUP=1
    export OF_USE_TWRP_SAR_DETECT=1
    export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES=1
    export FOX_R11=1
    export OF_USE_LOCKSCREEN_BUTTON=1
    export FOX_RESET_SETTINGS=1
    export FOX_ADVANCED_SECURITY=1
    export OF_QUICK_BACKUP_LIST="/boot;/system;/vendor;/data;"
fi

add_lunch_combo omni_"$FDEVICE"-eng
add_lunch_combo omni_"$FDEVICE"-user
add_lunch_combo omni_"$FDEVICE"-userdebug
