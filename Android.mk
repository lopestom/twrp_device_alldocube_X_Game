LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), T1023)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
