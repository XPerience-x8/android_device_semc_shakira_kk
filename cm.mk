# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit device configuration for shakira
$(call inherit-product, device/semc/shakira/shakira.mk)

TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 320
TARGET_BOOTANIMATION_HALF_RES := true
$(call inherit-product, vendor/cm/config/mini.mk)

# Setup device configuration
PRODUCT_RELEASE_NAME := X8
PRODUCT_DEVICE := shakira
PRODUCT_NAME := cm_shakira
PRODUCT_BRAND := SEMC
PRODUCT_MODEL := X8
PRODUCT_MANUFACTURER := Sony Ericsson

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=E15i \
    BUILD_FINGERPRINT="google/yakju/maguro:4.2.1/JOP40D/533553:user/release-keys" \
    PRIVATE_BUILD_DESC="yakju-user 4.2.1 JOP40D 533553 release-keys"
