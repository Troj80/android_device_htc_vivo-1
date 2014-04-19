## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := vivo

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/vivo/device_vivo.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vivo
PRODUCT_NAME := cm_vivo
PRODUCT_BRAND := htc
PRODUCT_MODEL := vivo
PRODUCT_MANUFACTURER := htc
