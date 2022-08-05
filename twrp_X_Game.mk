#
# Copyright (C) 2020 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := device/alldocube/X_Game

# Release name
PRODUCT_RELEASE_NAME := X_Game

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit from device
$(call inherit-product, device/alldocube/X_Game/device.mk)

# Inherit some common twrp stuff.
#$(call inherit-product, vendor/omni/config/common_tablet.mk)
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := T1023
PRODUCT_NAME := omni_X_Game
PRODUCT_BRAND := Alldocube
PRODUCT_MODEL := X_Game
PRODUCT_MANUFACTURER := Alldocube

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=T1023 \
    BUILD_PRODUCT=X_Game \
    PRODUCT_NAME=X_Game \
    PRIVATE_BUILD_DESC="full_k79v1_64-user 11 RP1A.200720.011 p1k61v164bspP13 release-keys"

BUILD_FINGERPRINT := Alldocube/X_Game/T1023:11/RP1A.200720.011/1641627818:user/release-keys

