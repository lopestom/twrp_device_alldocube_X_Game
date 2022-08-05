LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),X_Game)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
