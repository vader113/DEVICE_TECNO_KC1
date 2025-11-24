#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Device identifier
PRODUCT_DEVICE := TECNO_KC1
PRODUCT_NAME := lineage_TECNO_KC1
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO KC1
PRODUCT_MANUFACTURER := tecno

# Build properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.device=TECNO_KC1 \
    ro.product.name=lineage_TECNO_KC1 \
    ro.product.brand=TECNO \
    ro.product.model=TECNO_KC1 \
    ro.product.manufacturer=tecno

# API levels
PRODUCT_SHIPPING_API_LEVEL := 28

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Product characteristics
PRODUCT_CHARACTERISTICS := default

# Rootdir
PRODUCT_PACKAGES += \

PRODUCT_PACKAGES += \
    fstab.mt6761 \
    factory_init.connectivity.rc \
    factory_init.project.rc \
    factory_init.rc \
    init.aee.rc \
    init.ago.rc \
    init.connectivity.rc \
    init.modem.rc \
    init.mt6761.rc \
    init.mt6761.usb.rc \
    init.project.rc \
    init.sensor_1_0.rc \
    meta_init.connectivity.rc \
    meta_init.modem.rc \
    meta_init.project.rc \
    meta_init.rc \
    multi_init.rc \
    init.recovery.mt6761.rc \
    MTKThermalManager \
    dtb.img \

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/tecno/TECNO_KC1/TECNO_KC1-vendor.mk)

# Rootdir files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/ueventd.mt6761.rc:$(TARGET_COPY_OUT_VENDOR)/ueventd.rc
