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
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Device specific configs
$(call inherit-product, device/tecno/CK8n/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := CK8n
PRODUCT_NAME := twrp_CK8n
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO CK8n
PRODUCT_MANUFACTURER := TECNO

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=TECNO-CK8n \
    PRODUCT_NAME=CK8n-GL \
    PRIVATE_BUILD_DESC="vnd_ck8n_h931-user 12 SP1A.210812.016 404645 release-keys"

BUILD_FINGERPRINT := TECNO/CK8n-GL/TECNO-CK8n:12/SP1A.210812.016/230815V1822:user/release-keys


