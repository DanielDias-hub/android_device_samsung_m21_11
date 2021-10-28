### PLATFORM
$(call inherit-product, device/samsung/21-common/platform.mk)
### PROPRIETARY VENDOR FILES
$(call inherit-product, vendor/samsung/m21/m21-vendor.mk)

### DALVIK
$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)

DEVICE_PATH := device/samsung/m21

DEVICE_PACKAGE_OVERLAYS += \
    $(DEVICE_PATH)/overlay

include $(DEVICE_PATH)/device/*.mk
