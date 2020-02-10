#Copyright (C) 2018 OrangeFox Recovery Project
#Copyright (C) 2018 PitchBlack Recovery Project

### start build variables
export FOX_BUILD_FULL_KERNEL_SOURCES="1" # 0=use prebuilt kernel; 1=build kernel from source
export OF_USE_MAGISKBOOT="1"
export OF_FORCE_MAGISKBOOT_BOOT_PATCH_MIUI="1"
export OF_USE_NEW_MAGISKBOOT="1"
export OF_DONT_PATCH_ON_FRESH_INSTALLATION="1"
export FOX_USE_NANO_EDITOR="1"
export OF_CLASSIC_LEDS_FUNCTION="0"
export OF_OTA_RES_DECRYPT="1"
export OF_SCREEN_H="2160"
export OF_STATUS_INDENT_LEFT="48"
export OF_STATUS_INDENT_RIGHT="48"
export OF_ALLOW_DISABLE_NAVBAR="0"
export FOX_REPLACE_BUSYBOX_PS="1"
export OF_FLASHLIGHT_ENABLE="1"          # if our kernel for the device doesn't support flashlight
# export OF_FL_PATH1=""
# export OF_FL_PATH2=""
export OF_USE_GREEN_LED="0"
export OF_DONT_PATCH_ENCRYPTED_DEVICE="1"
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER="1" # ONLY PIE BUILD SYSTEM!
export FOX_REPLACE_TOOLBOX_GETPROP="1"
export FOX_USE_TAR_BINARY="1"
export FOX_USE_ZIP_BINARY="1"
### end build variables

add_lunch_combo omni_chiron-eng
add_lunch_combo omni_chiron-user
add_lunch_combo omni_chiron-userdebug
