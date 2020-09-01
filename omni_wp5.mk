# Release name
PRODUCT_RELEASE_NAME := wp5

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := OUKITEL
PRODUCT_DEVICE := wp5
PRODUCT_MANUFACTURER := OUKITEL
PRODUCT_MODEL := wp5
PRODUCT_NAME := omni_wp5

# enable stock zip packages flash
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.secure=1 \
    ro.adb.secure=0 \
    ro.allow.mock.location=0
    
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="OUKITEL/WP5_EEA/WP5:9/PPR1.180610.011/20191217:user/release-keys" \
    PRIVATE_BUILD_DESC="full_d937-user 9 PPR1.180610.011 20191217 release-keys"
