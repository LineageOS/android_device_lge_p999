$(call inherit-product, device/lge/star-common/star.mk)

# Inherit non-open-source blobs.
$(call inherit-product-if-exists, vendor/lge/p999/p999-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/p999/overlay

# Board-specific init
PRODUCT_COPY_FILES += \
    device/lge/p999/init.p999.rc:root/init.p999.rc \
    $(LOCAL_PATH)/ueventd.rc:root/ueventd.rc \
    device/lge/p999/vold.fstab:system/etc/vold.fstab \
    device/lge/p999/gps.conf:system/etc/gps.conf \
    device/lge/p999/init.vsnet:system/bin/init.vsnet

PRODUCT_PACKAGES += \
    lights.p999 \
    audio.primary.p999
    #audio_policy.p999

PRODUCT_NAME := full_p999
PRODUCT_DEVICE := p999
PRODUCT_MODEL := LG-P999
