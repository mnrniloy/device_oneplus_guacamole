#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from guacamole device
$(call inherit-product, device/oneplus/guacamole/device.mk)

# Inherit some common AFTERLIFE stuff.
$(call inherit-product, vendor/afterlife/config/common_full_phone.mk)

# AfterLife Flags
AFTERLIFE_GAPPS := true
AFTERLIFE_CORE := true
USE_PIXEL_CHARGING =: true
AFTERLIFE_MAINTAINER := NILOY
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USE_MOTO_CALCULATOR := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USE_GOOGLE_TELEPHONY := false
TARGET_SUPPORTS_TOUCHGESTURES := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := afterlife_guacamole
PRODUCT_DEVICE := guacamole
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := GM1917
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_SYSTEM_NAME := OnePlus7Pro
PRODUCT_SYSTEM_DEVICE := OnePlus7Pro

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi
PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
scr_resolution := 1440
TARGET_SCREEN_WIDTH := 1440
TARGET_SCREEN_HEIGHT := 3120
TARGET_BOOT_ANIMATION_RES := 1440

# Build Fingerprint
BUILD_FINGERPRINT := "OnePlus/OnePlus7Pro/OnePlus7Pro:11/RKQ1.201022.002/2206171030:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=OnePlus7Pro \
    TARGET_PRODUCT=OnePlus7Pro \
    PRIVATE_BUILD_DESC="OnePlus7Pro-user 11 RKQ1.201022.002 2206171030 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-oneplus