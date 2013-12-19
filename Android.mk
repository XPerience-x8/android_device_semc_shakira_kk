# (C) The XPERIENCE PROJECT 2013
LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),shakira)
    include $(call all-makefiles-under,$(LOCAL_PATH))
endif
