#
# Copyright (C) 2021 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Newcastle device
$(call inherit-product, device/wingtech/Newcastle/device.mk)

# Inherit some common Twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_DEVICE := Newcastle
PRODUCT_NAME := twrp_Newcastle
PRODUCT_BRAND := T-Mobile
PRODUCT_MODEL := TMRVL4G
PRODUCT_MANUFACTURER := wingtech

PRODUCT_GMS_CLIENTID_BASE := android-wingtech

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_S98117AA1-user 11 RP1A.200720.011 p1k61v164bspP31 release-keys"

BUILD_FINGERPRINT := T-Mobile/Newcastle/Newcastle:11/RP1A.200720.011/SW_S98117AA1_V035:user/release-keys

# HACK: Set older build date
# PRODUCT_PROPERTY_OVERRIDES += \
#     ro.bootimage.build.date.utc=0
