
#
# Copyright (C) 2012 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

-include device/semc/msm7x27-common/BoardConfigCommon.mk
-include vendor/semc/shakira/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := shakira
TARGET_OTA_ASSERT_DEVICE := E15i,E15a,E16i,E16a,shakira
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_BOOTLOADER_BOARD_NAME=shakira
BOARD_CAMERA_NO_AUTOFOCUS := true
BOARD_LIBSENSORS_AKM8975 := true

# Kernel
TARGET_KERNEL_CONFIG := cyanogenmod_shakira_defconfig


# Target
TARGET_ARCH            := arm
TARGET_ARCH_LOWMEM     := true
TARGET_ARCH_VARIANT    := armv6-vfp
TARGET_BOARD_PLATFORM  := msm7x27
TARGET_CPU_ABI         := armeabi
TARGET_CPU_ABI2        := armeabi-v6l
TARGET_CPU_VARIANT     := arm11
TARGET_NO_BOOTLOADER   := true
TARGET_NO_RADIOIMAGE   := true
COMMON_GLOBAL_CFLAGS   += -DTARGET_MSM7x27

# For assembly error
#COMMON_GLOBAL_CFLAGS   += --save-temps

# Graphics
USE_OPENGL_RENDERER                     := true
TARGET_NO_HW_OVERLAY                    := true
TARGET_QCOM_DISPLAY_VARIANT             := legacy
BOARD_ADRENO_DECIDE_TEXTURE_TARGET      := true
BOARD_EGL_CFG                           := device/qcom/msm7x27/egl.cfg
BOARD_EGL_NEEDS_LEGACY_FB               := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET      := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE                := true
BOARD_USES_QCOM_LIBS                    := true
COMMON_GLOBAL_CFLAGS                    += -DQCOM_HARDWARE
#COMMON_GLOBAL_CFLAGS                    += -DQCOM_ICS_COMPAT

# Video
TARGET_QCOM_LEGACY_OMX                  := true
TARGET_QCOM_MEDIA_VARIANT               := legacy
TARGET_ENABLE_QC_AV_ENHANCEMENTS        := true
COMMON_GLOBAL_CFLAGS                    += -DQCOM_NO_SECURE_PLAYBACK

# Camera
TARGET_DISABLE_ARM_PIE          := true
BOARD_NEEDS_MEMORYHEAPPMEM      := true

# Javascript, Browser and Webkit
WITH_JIT                := true
ENABLE_JSC_JIT          := true
JS_ENGINE               := v8
HTTP                    := chrome
TARGET_FORCE_CPU_UPLOAD := true

#XPERIENCE STUFFS
BOARD_USE_SCREENCAP := true
TARGET_OVERLAY_ALWAYS_DETERMINES_FORMAT := true
TARGET_USE_SOFTWARE_AUDIO_AAC := true
COPYBIT_MSM7K := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

#Custom Flags
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT
COMMON_GLOBAL_CFLAGS += -DECLAIR_LIBCAMERA
COMMON_GLOBAL_CFLAGS += -DQCOM_LEGACY_OMX
COMMON_GLOBAL_CFLAGS += -DANCIENT_GL
