#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from channel device
$(call inherit-product, device/motorola/channel/device.mk)

PRODUCT_DEVICE := channel
PRODUCT_NAME := omni_channel
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(7) play
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="channel_retail-user 10 QPYS30.85-23-8-2 c00f57 release-keys"

BUILD_FINGERPRINT := motorola/channel_retail/channel:10/QPYS30.85-23-8-2/c00f57:user/release-keys
