#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from rmx1931 device
$(call inherit-product, device/realme/RMX1931/device.mk)

# Inherit some common ProjectBlaze stuff.
$(call inherit-product, vendor/blaze/config/common_full_phone.mk)

# stuffs
LINEAGE_BUILD_TYPE := UNOFFICIAL
LINEAGE_MAINTAINER := noSPEEDO
EXTRA_UDFPS_ANIMATIONS := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
FACE_UNLOCK_SUPPORTED := true
TARGET_HAS_UDFPS := true
WITH_GAPPS := false

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := LINEAGE_RMX1931
PRODUCT_DEVICE := RMX1931
PRODUCT_BRAND := realme
PRODUCT_MANUFACTURER := realme

PRODUCT_SYSTEM_MODEL := RMX1931
PRODUCT_SYSTEM_NAME := RMX1931
PRODUCT_SYSTEM_DEVICE := RMX1931

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="RMX1931"

PRODUCT_GMS_CLIENTID_BASE := android-oppo
