$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

# Dalvik Heap
$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

$(call inherit-product-if-exists, vendor/htc/vivo/vivo-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/vivo/overlay

LOCAL_PATH := device/htc/vivo

# Ramdisk Files
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/ramdisk/fstab.sdcard:root/fstab.sdcard \
	$(LOCAL_PATH)/ramdisk/fstab.vivo:root/fstab.vivo \
	$(LOCAL_PATH)/ramdisk/init.vivo.usb.rc:root/init.vivo.usb.rc \
	$(LOCAL_PATH)/ramdisk/init.vivo.rc:root/init.vivo.rc \
	$(LOCAL_PATH)/ramdisk/ueventd.vivo.rc:root/ueventd.vivo.rc

PERMISSION_PATH := frameworks/native/data/etc

# Permission Files
PRODUCT_COPY_FILES += \
	$(PERMISSION_PATH)/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	$(PERMISSION_PATH)/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	$(PERMISSION_PATH)/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	$(PERMISSION_PATH)/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	$(PERMISSION_PATH)/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
	$(PERMISSION_PATH)/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
	$(PERMISSION_PATH)/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	$(PERMISSION_PATH)/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	$(PERMISSION_PATH)/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
	$(PERMISSION_PATH)/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	$(PERMISSION_PATH)/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	$(PERMISSION_PATH)/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
	$(PERMISSION_PATH)/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	$(PERMISSION_PATH)/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Media Files
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/audio_policy.conf:system/etc/audio_policy.conf \
	$(LOCAL_PATH)/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/media_profiles.xml:system/etc/media_profiles.xml

# Display
PRODUCT_PROPERTY_OVERRIDES += \
	debug.composition.type=gpu \
	debug.sf.hw=1 \
	debug.egl.hw=1 \
	ro.sf.lcd_density=240

# Display
PRODUCT_PACKAGES += \
	libgenlock \
	libmemalloc \
	liboverlay \
	libqdutils \
	libtilerenderer

# HAL
PRODUCT_PACKAGES += \
	copybit.msm7x30 \
	gralloc.msm7x30 \
	hwcomposer.msm7x30

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_vivo
PRODUCT_DEVICE := vivo
