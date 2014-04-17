# Copyright (C) 2012 The Android Open Source Project
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

# Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

#
# Boot files
#
ifeq ($(TARGET_PREBUILT_KERNEL),)
  LOCAL_KERNEL := device/semc/shakira/kernel
else
  LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
   $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/prebuilt/bin/tiap_cu:system/bin/tiap_cu \
    $(LOCAL_PATH)/prebuilt/bin/tiap_loader:system/bin/tiap_loader \
    $(LOCAL_PATH)/prebuilt/etc/media_profiles.xml:/system/etc/media_profiles.xml \
    $(LOCAL_PATH)/prebuilt/etc/wifi/tiwlan.ini:system/etc/wifi/tiwlan.ini \
    $(LOCAL_PATH)/prebuilt/etc/wifi/softap/tiwlan_ap.ini:system/etc/wifi/softap/tiwlan_ap.ini \
    $(LOCAL_PATH)/prebuilt/usr/idc/cyttsp-spi.idc:system/usr/idc/cyttsp-spi.idc \
    $(LOCAL_PATH)/prebuilt/usr/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    $(LOCAL_PATH)/prebuilt/usr/keychars/systemconnector.kcm.bin:system/usr/keychars/systemconnector.kcm.bin

# Shakira uses medium-density artwork where available
PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi
$(call inherit-product, device/mdpi-common/mdpi.mk)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Inherit products (Most specific first)
$(call inherit-product, vendor/semc/shakira/shakira-vendor.mk)
$(call inherit-product, device/semc/msm7x27-common/msm7x27.mk)
$(call inherit-product, vendor/semc/msm7x27-common/semc-common-blobs.mk)

# Discard inherited values and use our own instead.
PRODUCT_NAME := shakira
PRODUCT_DEVICE := shakira
PRODUCT_MODEL := E15i
