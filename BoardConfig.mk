USE_CAMERA_STUB := true

LOCAL_PATH := device/htc/vivo

# inherit from the proprietary version
-include vendor/htc/vivo/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := scorpion
ARCH_ARM_HAVE_TLS_REGISTER := true

# Qualcomm
BOARD_USES_QCOM_HARDWARE := true

# Display
BOARD_EGL_CFG := $(LOCAL_PATH)/egl.cfg

# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 585101312
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1232072704
BOARD_BOOTIMAGE_PARTITION_SIZE := 5194304
BOARD_FLASH_BLOCK_SIZE := 262144
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun0/file

# Kernel
# TARGET_PREBUILT_KERNEL := device/htc/vivo/kernel
BOARD_KERNEL_CMDLINE := no_console_suspend=1
BOARD_KERNEL_BASE := 0x04400000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_KERNEL_SOURCE := kernel/htc/vivo
TARGET_KERNEL_CONFIG := vivo_defconfig

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := vivo
TARGET_NO_BOOTLOADER := true

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/ramdisk/fstab.vivo

# Headers
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

BOARD_HAS_NO_SELECT_BUTTON := true
