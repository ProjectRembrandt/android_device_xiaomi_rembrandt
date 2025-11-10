#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from rembrandt device
$(call inherit-product, device/xiaomi/rembrandt/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Include AviumUI special configs
include device/xiaomi/rembrandt/avium_common.mk

# Boot animation
TARGET_SCREEN_HEIGHT := 3200
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOT_ANIMATION_RES := 1440

PRODUCT_BRAND := Redmi
PRODUCT_DEVICE := rembrandt
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 22122RK93C
PRODUCT_NAME := lineage_rembrandt
PRODUCT_SYSTEM_NAME := rembrandt

PRODUCT_CHARACTERISTICS := nosdcard
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=Redmi/rembrandt/rembrandt:14/UP1A.231005.007/OS2.0.18.0.UMMCNXM:user/release-keys \
    DeviceName=$(PRODUCT_SYSTEM_NAME) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME) \
    SystemDevice=$(PRODUCT_SYSTEM_NAME) \
    SystemName=$(PRODUCT_SYSTEM_NAME)
