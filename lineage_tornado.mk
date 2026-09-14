#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/tornado/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_tornado
PRODUCT_DEVICE := tornado
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 2508CRN2BI

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="tornado_in-user 15 AP3A.240905.015.A2 OS2.0.202.0.VPOINXM release-keys" \
    BuildFingerprint=Redmi/tornado_in/tornado:13/TP1A.220624.014/OS2.0.202.0.VPOINXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

WITH_GMS=true
TARGET_USES_PICO_GAPPS=true
EVO_BUILD_TYPE=Unofficial
BUILD_BCR=false
TARGET_HAS_UDFPS=false
TARGET_INCLUDE_BOOT_ANIMATIONS=true
TARGET_INCLUDE_ACCORD=false
TARGET_INCLUDE_VIPERFX=true
WITH_SU=true
BYPASS_CHARGE_SUPPORTED=false
TARGET_ENABLE_BLUR=true
