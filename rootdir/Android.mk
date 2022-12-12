LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := ramdisk-fstab.qti
LOCAL_SRC_FILES := etc/fstab.qti
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_STEM := fstab.qti
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_RAMDISK_OUT)
include $(BUILD_PREBUILT)
