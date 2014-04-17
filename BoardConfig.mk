-include device/semc/msm7x27-common/BoardConfigCommon.mk

TARGET_BOOTLOADER_BOARD_NAME := shakira
TARGET_OTA_ASSERT_DEVICE := E15i,E15a,E16i,E16a,shakira
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_BOOTLOADER_BOARD_NAME=shakira
BOARD_LIBSENSORS_AKM8975 := true

# Kernel
#TARGET_KERNEL_CONFIG := cyanogenmod_shakira_defconfig

#Temporary hack : skip building external/chromium_org
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes

RECOVERY_FSTAB_VERSION := 2
