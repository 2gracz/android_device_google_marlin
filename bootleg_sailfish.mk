# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_USES_AOSP_SURFACEFLINGER := true
# Inherit some common Bootleggers stuff.
$(call inherit-product, vendor/bootleg/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/marlin/aosp_sailfish.mk)

-include device/google/marlin/sailfish/device-bootleg.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := bootleg_sailfish
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel
TARGET_MANUFACTURER := HTC
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sailfish \
    PRIVATE_BUILD_DESC="sailfish-user 8.1.0 OPM1.171019.021 4565141 release-keys"

BUILD_FINGERPRINT := google/sailfish/sailfish:8.1.0/OPM1.171019.021/4565141:user/release-keys

$(call inherit-product-if-exists, vendor/google/sailfish/sailfish-vendor.mk)

