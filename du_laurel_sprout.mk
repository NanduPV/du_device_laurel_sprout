#
# Copyright (C) 2018-2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common DU stuff
$(call inherit-product, vendor/du/config/common_full_phone.mk)

# Inherit from laurel_sprout device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := du_laurel_sprout
PRODUCT_DEVICE := laurel_sprout
PRODUCT_MODEL := Mi A3
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi


PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR_PRODUCT_NAME := laurel_sprout


PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="laurel_sprout-user 10 QKQ1.190910.002 V11.0.26.0.QFQMIXM release-keys"

BUILD_FINGERPRINT := Xiaomi/laurel_sprout/laurel_sprout:10/QKQ1.190910.002/V11.0.26.0.QFQMIXM:user/release-keys

# Corvus stuff
TARGET_BOOT_ANIMATION_RES := 720
EXTRA_FOD_ANIMATIONS := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# GApps
USE_GAPPS := true
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
