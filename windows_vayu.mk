#
# Copyright (C) 2018-2021 Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/vayu/device.mk)

# Inherit common AOSP configurations
$(call inherit-product, vendor/windows/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_AOSP_RECOVERY := true

PRODUCT_NAME := windows_vayu
PRODUCT_DEVICE := vayu
PRODUCT_BRAND := POCO
PRODUCT_MODEL := Poco X3 Pro by Wimdus
PRODUCT_MANUFACTURER := Windows

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vayu_global-user 11 RKQ1.200826.002 V12.5.4.0.RJUMIXM release-keys" \
    PRODUCT_NAME=vayu_global \
    PRODUCT_MODEL=M2102J20SI

BUILD_FINGERPRINT := POCO/vayu_windows/vayu:11/RKQ1.200826.002/V12.5.4.0.RJUMIXM:user/release-keys
