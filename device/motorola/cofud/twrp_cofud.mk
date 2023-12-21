#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from cofud device
$(call inherit-product, device/motorola/cofud/device.mk)

PRODUCT_DEVICE := cofud
PRODUCT_NAME := twrp_cofud
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g31(w)
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cofud_g-user 12 S3RWDS32.123-29-8-2-1 1d19e9 release-keys"

BUILD_FINGERPRINT := motorola/cofud_g/cofud:12/S3RWDS32.123-29-8-2-1/1d19e9:user/release-keys
