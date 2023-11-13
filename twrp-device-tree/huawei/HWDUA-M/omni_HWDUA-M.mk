#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from HWDUA-M device
$(call inherit-product, device/huawei/HWDUA-M/device.mk)

PRODUCT_DEVICE := HWDUA-M
PRODUCT_NAME := omni_HWDUA-M
PRODUCT_BRAND := HONOR
PRODUCT_MODEL := DUA-L22
PRODUCT_MANUFACTURER := huawei

PRODUCT_GMS_CLIENTID_BASE := android-huawei

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_dura64-user 8.1.0 O11019 1540233626 release-keys"

BUILD_FINGERPRINT := HONOR/DUA-L22/HWDUA-M:8.1.0/O11019/1540233626:user/release-keys
