$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
# Product API level
#$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/m21/device.mk)

### BOOTANIMATION
# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_BOOTANIMATION_HALF_RES := true
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

### AOSP
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_m21
PRODUCT_DEVICE := m21
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M215F
PRODUCT_MANUFACTURER := samsung
PRODUCT_SHIPPING_API_LEVEL := 28
PRODUCT_GMS_CLIENTID_BASE := android-samsung
	
## Use the latest CTS approved build identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=m21 \
    PRIVATE_BUILD_DESC="m21-user 11 RP1A.200720.012 M215FXXU2BUH6 release-keys"

BUILD_FINGERPRINT := samsung/m21dd/m21:11/RP1A.200720.012/M215FXXU2BUH6:user/release-keys
