#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from Newcastle device
$(call inherit-product, device/wingtech/Newcastle/device.mk)

PRODUCT_DEVICE := Newcastle
PRODUCT_NAME := twrp_Newcastle
PRODUCT_BRAND := T-Mobile
PRODUCT_MODEL := TMRVL4G
PRODUCT_MANUFACTURER := wingtech

PRODUCT_GMS_CLIENTID_BASE := android-wingtech

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_S98117AA1-user 11 RP1A.200720.011 p1k61v164bspP31 release-keys"

BUILD_FINGERPRINT := T-Mobile/Newcastle/Newcastle:11/RP1A.200720.011/SW_S98117AA1_V035:user/release-keys
