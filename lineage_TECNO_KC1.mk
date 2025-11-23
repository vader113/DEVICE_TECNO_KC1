#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from TECNO-KC1 device
$(call inherit-product, device/tecno/TECNO_KC1/device.mk)

PRODUCT_DEVICE := TECNO_KC1
PRODUCT_NAME := lineage_TECNO_KC1
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO KC1
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-transsion-tecno-rev1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_kc1_h6114-user 9 PPR1.180610.011 74 release-keys"

BUILD_FINGERPRINT := TECNO/H6114A/TECNO-KC1:9/PPR1.180610.011/A-191119V264:user/release-keys
