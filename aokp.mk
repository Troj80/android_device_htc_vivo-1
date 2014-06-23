# $(call inherit-product, device/htc/vivo/full_vivo.mk)

PRODUCT_RELEASE_NAME := IncS

# Inherit some common AOKP stuff.
$(call inherit-product, vendor/aokp/configs/common.mk)
$(call inherit-product, vendor/aokp/configs/common_versions.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_vivo BUILD_ID=KTU84P BUILD_FINGERPRINT=htc_europe/htc_vivo/vivo:4.4.4/KTU84P/87995:user/release-keys PRIVATE_BUILD_DESC="4.4.4 rqmok AOKP release-keys"

PRODUCT_NAME := aokp_vivo
PRODUCT_DEVICE := vivo
