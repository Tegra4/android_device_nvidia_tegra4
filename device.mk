#
# Copyright (C) 2020 The LineageOS Project
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

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_l_mr1.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/nvidia/tegra4/tegra4-vendor.mk)

REFERENCE_DEVICE := dalmore

# Tegra Static libraries (Needed by HALs)
PRODUCT_PACKAGES += \
    libnvcameradata \
    libnvcameraframedata \
    libnvfxmath \
    libnvglcomposer \
    libnvgr2dcomposer \
    libnvviccomposer \
    libnvmmtransport

# Audio (Audio Policy Disabled)
PRODUCT_PACKAGES += \
    audio.primary.tegra

# Camera
PRODUCT_PACKAGES += \
    camera.tegra \
    libnvodm_imager

# Core
PRODUCT_PACKAGES += \
   libnvodm_services \
   libnvrm \
   libnvrm_graphics
   
# Graphics
PRODUCT_PACKAGES += \
    gralloc.tegra \
    hwcomposer.tegra \
    libnvgr

# Media
PRODUCT_PACKAGES += \
    libnvmm \
    libnvmmlite \
    libstagefrighthw

