# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml

# Camera
PRODUCT_PACKAGES += \
    camera.msm8937 \
    libmm-qcamera

# Camera HAL
PRODUCT_PACKAGES += \
    camera.device@1.0-impl \
    camera.device@3.2-impl \
    android.hardware.camera.provider@2.4-impl \
    android.hardware.camera.provider@2.4-service \
    vendor.qti.hardware.camera.device@1.0 \
    vendor.qti.hardware.camera.device@1.0_vendor

# Camera2
PRODUCT_PACKAGES += \
    Camera2

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    camera.display.umax=1920x1080 \
    camera.display.lmax=1280x720 \
    camera.hal1.packagelist=com.skype.raider,com.google.android.talk \
    media.camera.ts.monotonic=1 \
    persist.camera.gyro.android=1 \
    persist.camera.HAL3.enabled=1 \
    persist.camera.is_type=1 \
    vidc.enc.narrow.searchrange=1

# Camera fixes
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
