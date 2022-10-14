#
# Copyright (C) 2022 StatiXOS
#
# SPDX-License-Identifer: Apache-2.0

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lime device
$(call inherit-product, device/xiaomi/lime/device.mk)

# Inherit some common StatiX stuff.
$(call inherit-product, vendor/statix/config/common.mk)
$(call inherit-product, vendor/statix/config/gsm.mk)

PRODUCT_NAME := statix_lime
PRODUCT_DEVICE := lime
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 9T

PRODUCT_SYSTEM_NAME := Redmi9T
PRODUCT_SYSTEM_DEVICE := Redmi9T

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi