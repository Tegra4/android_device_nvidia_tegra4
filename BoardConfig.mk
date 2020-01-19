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

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a15

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := tegra4
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := tegra
TARGET_TEGRA_FAMILY := t11x
TARGET_TEGRA_VERSION := t114

# Audio
BOARD_USES_ALSA_AUDIO := true
BOARD_SUPPORT_NVOICE := true

# Display
BOARD_HAS_NVDPS := true
BOARD_HDMI_MIRROR_MODE := Scale

# Secure OS
SECURE_OS_BUILD := y
BOARD_VENDOR_HDCP_ENABLED := true
BOARD_ENABLE_SECURE_HDCP := 1
BOARD_VENDOR_HDCP_PATH := vendor/nvidia/tegra/tests-partner/hdcp
