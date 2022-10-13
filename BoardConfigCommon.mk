#
# Copyright (C) 2013-2022, The Linux Foundation
# Copyright (C) 2022 StatiXOS
#
# SPDX-License-Identifer: Apache-2.0

# config.mk
#
# Product-specific compile-time definitions.
#

BOARD_SYSTEMSDK_VERSIONS := $(SHIPPING_API_LEVEL)

TARGET_BOARD_PLATFORM := bengal
TARGET_BOOTLOADER_BOARD_NAME := bengal

TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a9

TARGET_USES_AOSP := false
TARGET_USES_AOSP_FOR_AUDIO := false
TARGET_USES_QCOM_BSP := false

BOARD_DYNAMIC_PARTITION_ENABLE := true

TARGET_USES_NEW_ION := true
TARGET_USE_VENDOR_CAMERA_EXT := true

#Enable suspend during charger mode
BOARD_CHARGER_ENABLE_SUSPEND := true

BOARD_AVB_ENABLE := true

# Vintf
DEVICE_FRAMEWORK_MANIFEST_FILE := device/xiaomi/sm6115/configs/vintf/framework_manifest.xml
DEVICE_MANIFEST_FILE := device/xiaomi/sm6115/configs/vintf/manifest.xml
DEVICE_MATRIX_FILE   := device/xiaomi/sm6115/configs/vintf/compatibility_matrix.xml

BOARD_KERNEL_SEPARATED_DTBO := true
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

TARGET_NO_BOOTLOADER := false
TARGET_USES_UEFI := true
TARGET_NO_KERNEL := false

BOARD_PRESIL_BUILD := true
-include $(QCPATH)/common/bengal/BoardConfigVendor.mk

USE_OPENGL_RENDERER := true

#Enable dtb in boot image and boot image header version 2 support.
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
# Set Header version for bootimage
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_MKBOOTIMG_ARGS := --header_version $(BOARD_BOOTIMG_HEADER_VERSION)

ifeq ($(BOARD_AVB_ENABLE), true)
   BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
   BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
   BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
   BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1
endif

BOARD_USES_METADATA_PARTITION := true

# Define the Dynamic Partition sizes and groups.
BOARD_SUPER_PARTITION_SIZE := 4294967296
TARGET_RECOVERY_FSTAB := device/xiaomi/sm6115/rootdir/etc/recovery.fstab

# Enable DTBO for recovery image
BOARD_INCLUDE_RECOVERY_DTBO := true

BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
# BOARD_QTI_DYNAMIC_PARTITIONS_SIZE = (BOARD_SUPER_PARTITION_SIZE/2) - 4MB
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 4290772992
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := vendor
BOARD_EXT4_SHARE_DUP_BLOCKS := true
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x06000000

TARGET_COPY_OUT_VENDOR := vendor
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true

TARGET_USERIMAGES_USE_F2FS := true
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x06000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4294967296
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_METADATAIMAGE_PARTITION_SIZE := 16777216
BOARD_DTBOIMG_PARTITION_SIZE := 0x0800000
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

TARGET_USES_ION := true
TARGET_USES_NEW_ION_API :=true

BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200n8 earlycon=msm_geni_serial,0x4a90000 androidboot.hardware=qcom androidboot.console=ttyMSM0 androidboot.memcg=1 lpm_levels.sleep_disabled=1 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 service_locator.enable=1 swiotlb=2048 loop.max_part=7
TARGET_KERNEL_VERSION := 4.19
BOARD_KERNEL_BASE        := 0x00000000
BOARD_KERNEL_PAGESIZE    := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET     := 0x02000000

MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

TARGET_NO_RPC := true

TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

#Disable appended dtb.
TARGET_KERNEL_APPEND_DTB := false
TARGET_COMPILE_WITH_MSM_KERNEL := true

#Enable PD locater/notifier
TARGET_PD_SERVICE_ENABLED := true

#Enable peripheral manager
TARGET_PER_MGR_ENABLED := true

#Enable 64 bit compilation for DRM plugins
TARGET_ENABLE_MEDIADRM_64 := true

# Enable sensor multi HAL
USE_SENSOR_MULTI_HAL := true

#flag for qspm compilation
TARGET_USES_QSPM := true

BUILD_BROKEN_DUP_RULES := true

# Enable QG user space
PMIC_QG_SUPPORT := true

#----------------------------------------------------------------------
# wlan specific
#----------------------------------------------------------------------
ifeq ($(strip $(BOARD_HAS_QCOM_WLAN)),true)
include device/qcom/wlan/bengal/BoardConfigWlan.mk
endif

include device/qcom/sepolicy_vndr/SEPolicy.mk
