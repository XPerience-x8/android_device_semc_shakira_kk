# (C) The XPERIENCE PROJECT 2013
# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit device configuration for shakira
$(call inherit-product, device/semc/shakira/shakira.mk)

TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 320
$(call inherit-product, vendor/cm/config/mini.mk)

# Setup device configuration
PRODUCT_RELEASE_NAME := X8
PRODUCT_DEVICE := shakira
PRODUCT_NAME := cm_shakira
PRODUCT_BRAND := SEMC
PRODUCT_MODEL := X8
PRODUCT_MANUFACTURER := Sony Ericsson

#
# Boot files
#
ifeq ($(TARGET_PREBUILT_KERNEL),)
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
endif

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=E15i \
    BUILD_FINGERPRINT="google/nakasi/grouper:4.4.2/JWR66V/573038:user/release-keys" \
    PRIVATE_BUILD_DESC="nakasi-user TeamMEX 4.4.2 JWR66V 573038 release-keys"
    
    
