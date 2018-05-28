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
$(call inherit-product-if-exists, vendor/xiaomi/rolex/rolex-vendor.mk)
#$(call inherit-product, vendor/havoc/build/core/qcom_utils.mk)

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
    $(LOCAL_PATH)/prebuilds/vendor/lib64/libbfqio_vendor.so:vendor/lib64/libbfqio_vendor.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib64/libsd_sdk_display.so:vendor/lib64/libsd_sdk_display.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib64/libsdm-color.so:vendor/lib64/libsdm-color.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib64/libsdmcore.so:vendor/lib64/libsdmcore.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib64/libsdm-diag.so:vendor/lib64/libsdm-diag.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib64/libsdm-disp-vndapis.so:vendor/lib64/libsdm-disp-vndapis.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib64/libsdmextension.so:vendor/lib64/libsdmextension.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib64/libsdmutils.so:vendor/lib64/libsdmutils.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib64/vendor.display.color@1.0_vendor.so:vendor/lib64/vendor.display.color@1.0_vendor.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib64/vendor.display.config@1.0_vendor.so:vendor/lib64/vendor.display.config@1.0_vendor.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib64/vendor.display.config@1.1_vendor.so:vendor/lib64/vendor.display.config@1.1_vendor.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib64/vendor.display.postproc@1.0_vendor.so:vendor/lib64/vendor.display.postproc@1.0_vendor.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib64/hw/android.hardware.graphics.allocator@2.0-impl.so:vendor/lib64/hw/android.hardware.graphics.allocator@2.0-impl.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib64/hw/android.hardware.graphics.composer@2.1-impl.so:vendor/lib64/hw/android.hardware.graphics.composer@2.1-impl.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib64/hw/android.hardware.graphics.mapper@2.0-impl.so:vendor/lib64/hw/android.hardware.graphics.mapper@2.0-impl.so \
    $(LOCAL_PATH)/prebuilds/vendor/lib64/hw/hwcomposer.msm8937.so:vendor/lib64/hw/hwcomposer.msm8937.so

# Spectrum
PRODUCT_PACKAGES += \
    init.spectrum.rc \
    init.spectrum.sh

# Telephony packages
PRODUCT_PACKAGES += \
    ims-ext-common \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

export export HAVOC_BUILD_TYPE=Official

# Seccomp policy
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/seccomp/mediacodec-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(DEVICE_PATH)/seccomp/mediaextractor-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy

# Snap
PRODUCT_PACKAGES += \
    Snap

# TextClassifier smart selection model files
PRODUCT_PACKAGES += \
    textclassifier.bundle1

# Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0-impl \
    android.hardware.thermal@1.0-service

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/thermal-engine.conf:$(TARGET_COPY_OUT_VENDOR)/etc/thermal-engine.conf
    
# USB HAL
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service.basic

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service

# XiaomiParts
PRODUCT_PACKAGES += \
    XiaomiParts

# QCOM
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/powerhint.xml:system/etc/powerhint.xml \
    $(DEVICE_PATH)/configs/privapp-permissions-qti.xml:system/etc/permissions/privapp-permissions-qti.xml \
    $(DEVICE_PATH)/configs/qti_whitelist.xml:system/etc/sysconfig/qti_whitelist.xml

# Properties
-include $(DEVICE_PATH)/vendor_prop.mk

# QMI
PRODUCT_PACKAGES += \
    libjson

# VNDK-SP:
PRODUCT_PACKAGES += \
    vndk-sp

PRODUCT_COPY_FILES += \
    prebuilts/vndk/v27/arm64/arch-arm64-armv8-a/shared/vndk-core/android.hardware.gnss@1.0.so:system/lib64/android.hardware.gnss@1.0-v27.so

# Vulkan
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.vulkan.compute-0.xml:system/etc/permissions/android.hardware.vulkan.compute-0.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:system/etc/permissions/android.hardware.vulkan.level-0.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version-1_0_3.xml

# Wi-Fi
PRODUCT_PACKAGES += \
    libwifi-hal-qcom \
    libcld80211 \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wificond \
    wpa_supplicant \
    wpa_supplicant.conf
    
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(DEVICE_PATH)/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/wifi/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(DEVICE_PATH)/wifi/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/WCNSS_qcom_cfg.ini
