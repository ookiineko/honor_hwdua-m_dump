#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from HWDUA-M device
$(call inherit-product, device/huawei/HWDUA-M/device.mk)

PRODUCT_DEVICE := HWDUA-M
PRODUCT_NAME := lineage_HWDUA-M
PRODUCT_BRAND := HONOR
PRODUCT_MODEL := DUA-L22
PRODUCT_MANUFACTURER := huawei

PRODUCT_GMS_CLIENTID_BASE := android-huawei

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="&#34;DUA-L22-user 8.1.0 HONORDUA-L22 1.0.0.145(C432) release-keys&#34;"

BUILD_FINGERPRINT := HONOR/DUA-L22/HWDUA-M:8.1.0/HONORDUA-L22/1.0.0.145(C432):user/release-keys
