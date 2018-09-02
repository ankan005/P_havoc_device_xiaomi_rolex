#
# Copyright (C) 2018 The LineageOS Project
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

DEVICE_PATH := $(LOCAL_PATH)

# Overlay
DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay
#    $(DEVICE_PATH)/overlay-lineage

# Include device-specific product fragments
include $(DEVICE_PATH)/product/*.mk

# Inherit proprietary files
$(call inherit-product-if-exists, vendor/xiaomi/riva/riva-vendor.mk)
$(call inherit-product, vendor/nitrogen/config/qcom_utils.mk)

# Camera fixes temp hack by Sunny and Murali's zip
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilds/lib/android.hardware.camera.common@1.0.so:system/lib/android.hardware.camera.common@1.0.so \
    $(LOCAL_PATH)/prebuilds/lib/android.hardware.camera.device@1.0.so:system/lib/android.hardware.camera.device@1.0.so \
    $(LOCAL_PATH)/prebuilds/lib/android.hardware.camera.device@3.2.so:system/lib/android.hardware.camera.device@3.2.so \
    $(LOCAL_PATH)/prebuilds/lib/android.hardware.camera.device@3.3.so:system/lib/android.hardware.camera.device@3.3.so \
    $(LOCAL_PATH)/prebuilds/lib/android.hardware.camera.device@3.4.so:system/lib/android.hardware.camera.device@3.4.so \
    $(LOCAL_PATH)/prebuilds/lib/android.hardware.camera.provider@2.4.so:system/lib/android.hardware.camera.provider@2.4.so \
    $(LOCAL_PATH)/prebuilds/lib/libcamera_client.so:system/lib/libcamera_client.so \
    $(LOCAL_PATH)/prebuilds/lib/libcamera_metadata.so:system/lib/libcamera_metadata.so \
    $(LOCAL_PATH)/prebuilds/lib/libcamera2ndk.so:system/lib/libcamera2ndk.so \
    $(LOCAL_PATH)/prebuilds/lib/libcameraservice.so:system/lib/libcameraservice.so \
    $(LOCAL_PATH)/prebuilds/lib64/android.hardware.camera.common@1.0.so:system/lib64/android.hardware.camera.common@1.0.so \
    $(LOCAL_PATH)/prebuilds/lib64/android.hardware.camera.device@1.0.so:system/lib64/android.hardware.camera.device@1.0.so \
    $(LOCAL_PATH)/prebuilds/lib64/android.hardware.camera.device@3.2.so:system/lib64/android.hardware.camera.device@3.2.so \
    $(LOCAL_PATH)/prebuilds/lib64/android.hardware.camera.device@3.3.so:system/lib64/android.hardware.camera.device@3.3.so \
    $(LOCAL_PATH)/prebuilds/lib64/android.hardware.camera.device@3.4.so:system/lib64/android.hardware.camera.device@3.4.so \
    $(LOCAL_PATH)/prebuilds/lib64/android.hardware.camera.provider@2.4.so:system/lib64/android.hardware.camera.provider@2.4.so \
    $(LOCAL_PATH)/prebuilds/lib64/libkeystore_binder.so:system/lib64/libkeystore_binder.so \
    $(LOCAL_PATH)/prebuilds/lib64/libkeystore-engine.so:system/lib64/libkeystore-engine.so

#Boot Hack By MacTavish and Sunny's zip
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilds/vendor/lib/libbfqio_vendor.so:vendor/lib/libbfqio_vendor.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib/libsd_sdk_display.so:vendor/lib/libsd_sdk_display.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib/libsdm-color.so:vendor/lib/libsdm-color.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib/libsdmcore.so:vendor/lib/libsdmcore.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib/libsdm-diag.so:vendor/lib/libsdm-diag.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib/libsdm-disp-vndapis.so:vendor/lib/libsdm-disp-vndapis.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib/libsdmextension.so:vendor/lib/libsdmextension.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib/libsdmutils.so:vendor/lib/libsdmutils.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib/vendor.display.color@1.0_vendor.so:vendor/lib/vendor.display.color@1.0_vendor.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib/vendor.display.config@1.0_vendor.so:vendor/lib/vendor.display.config@1.0_vendor.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib/vendor.display.config@1.1_vendor.so:vendor/lib/vendor.display.config@1.1_vendor.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib/vendor.display.postproc@1.0_vendor.so:vendor/lib/vendor.display.postproc@1.0_vendor.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib/hw/android.hardware.graphics.allocator@2.0-impl.so:vendor/lib/hw/android.hardware.graphics.allocator@2.0-impl.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib/hw/android.hardware.graphics.composer@2.1-impl.so:vendor/lib/hw/android.hardware.graphics.composer@2.1-impl.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib/hw/android.hardware.graphics.mapper@2.0-impl.so:vendor/lib/hw/android.hardware.graphics.mapper@2.0-impl.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib/hw/hwcomposer.msm8937.so:vendor/lib/hw/hwcomposer.msm8937.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib64/lib64bfqio_vendor.so:vendor/lib64/lib64bfqio_vendor.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib64/lib64sd_sdk_display.so:vendor/lib64/lib64sd_sdk_display.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib64/lib64sdm-color.so:vendor/lib64/lib64sdm-color.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib64/lib64sdmcore.so:vendor/lib64/lib64sdmcore.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib64/lib64sdm-diag.so:vendor/lib64/lib64sdm-diag.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib64/lib64sdm-disp-vndapis.so:vendor/lib64/lib64sdm-disp-vndapis.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib64/lib64sdmextension.so:vendor/lib64/lib64sdmextension.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib64/lib64sdmutils.so:vendor/lib64/lib64sdmutils.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib64/vendor.display.color@1.0_vendor.so:vendor/lib64/vendor.display.color@1.0_vendor.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib64/vendor.display.config@1.0_vendor.so:vendor/lib64/vendor.display.config@1.0_vendor.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib64/vendor.display.config@1.1_vendor.so:vendor/lib64/vendor.display.config@1.1_vendor.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib64/vendor.display.postproc@1.0_vendor.so:vendor/lib64/vendor.display.postproc@1.0_vendor.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib64/hw/android.hardware.graphics.allocator@2.0-impl.so:vendor/lib64/hw/android.hardware.graphics.allocator@2.0-impl.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib64/hw/android.hardware.graphics.composer@2.1-impl.so:vendor/lib64/hw/android.hardware.graphics.composer@2.1-impl.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib64/hw/android.hardware.graphics.mapper@2.0-impl.so:vendor/lib64/hw/android.hardware.graphics.mapper@2.0-impl.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib64/hw/hwcomposer.msm8937.so:vendor/lib64/hw/hwcomposer.msm8937.so
