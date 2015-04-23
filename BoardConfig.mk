BOARD_VENDOR := lge

TARGET_SPECIFIC_HEADER_PATH := device/lge/fx1sk/Addon/include

USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/fx1sk/BoardConfigVendor.mk

# CPU
TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno225
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := fx1sk
TARGET_BOOTLOADER_NAME=fx1sk

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=fx1sk user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 maxcpus=2 lpj=67741
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x00000100 --kernel_offset 0x00008000

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 12582912
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 12582912
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1798307840
BOARD_USERDATAIMAGE_PARTITION_SIZE := 4404019200
BOARD_CACHEIMAGE_PARTITION_SIZE := 826277888
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PERSISTIMAGE_PARTITION_SIZE := 5127433
BOARD_FLASH_BLOCK_SIZE := 131072

#TARGET_KERNEL_CONFIG := fx1sk-perf_defconfig
#TARGET_KERNEL_SOURCE := kernel/lge/fx1sk
#TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.7
#TARGET_KERNEL_CUSTOM_TOOLCHAIN_SUFFIX := arm-cortex_a8-linux-gnueabi-
TARGET_PREBUILT_KERNEL := device/lge/fx1sk

# Display
BOARD_EGL_CFG := device/lge/fx1sk/Addon/egl.cfg
TARGET_DISPLAY_INSECURE_MM_HEAP := true
USE_OPENGL_RENDERER := true

# Enable dex-preoptimization to speed up first boot sequence
ifeq ($(HOST_OS),linux)
  ifeq ($(TARGET_BUILD_VARIANT),user)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
    endif
  endif
endif
WITH_DEXPREOPT_BOOT_IMG_ONLY ?= true

# BlueTooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/lge/fx1sk/Addon/bluetooth/vnd_fx1sk.txt

# Qualcomm
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_QCOM_BSP := true
BOARD_USES_QCOM_LIBS := true
TARGET_QCOM_DISPLAY_VARIANT := caf
TARGET_QCOM_MEDIA_VARIANT := caf
BOARD_HARDWARE_CLASS := device/lge/fx1sk/Addon/cmhw/
TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# RIL
#BOARD_RIL_CLASS := ../../../device/lge/fx1sk/Addon/ril/

# Overlay
TARGET_USES_ION := true
TARGET_USES_OVERLAY := true
TARGET_USES_SF_BYPASS := true
TARGET_USES_C2D_COMPOSITION := false
DEVICE_PACKAGE_OVERLAYS += device/lge/fx1sk/Addon/overlay

# Wi-Fi
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE           := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/etc/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/etc/firmware/fw_bcmdhd_apsta.bin"

# Sound
BOARD_USES_LEGACY_ALSA_AUDIO :=true
BOARD_USES_ALSA_AUDIO:= true
BOARD_USES_FLUENCE_INCALL := true
BOARD_USES_SEPERATED_AUDIO_INPUT := true

# Recovery (Not build)
TARGET_RECOVERY_FSTAB = device/lge/fx1sk/Addon/recovery.fstab

# OTA
TARGET_OTA_ASSERT_DEVICE := fx1sk

# Charger
COMMON_GLOBAL_CFLAGS += -DBOARD_CHARGING_CMDLINE_NAME='"androidboot.mode"' -DBOARD_CHARGING_CMDLINE_VALUE='"chargerlogo"' -DLG_CAMERA_HARDWARE
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_HAVE_LOW_LATENCY_AUDIO := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true

# Other
BOARD_USES_SECURE_SERVICES := true
BOARD_USES_EXTRA_THERMAL_SENSOR := true
TARGET_NO_RPC := true
BOARD_HAS_NO_SELECT_BUTTON := true

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true
WEBCORE_INPAGE_VIDEO := true

# Init
#TARGET_PROVIDES_INIT_RC := true

# PMEM compatibility
BOARD_NEEDS_MEMORYHEAPPMEM := true

# Preload bootanimation
TARGET_BOOTANIMATION_PRELOAD := true

# Adreno Source
HAVE_ADRENO_SOURCE:= false

# TeamWin Recovery
RECOVERY_VARIANT := twrp
TARGET_RECOVERY_INITRC := device/lge/fx1sk/Addon/recovery/init.rc
DEVICE_RESOLUTION := 720x1280
RECOVERY_GRAPHICS_USE_LINELENGTH
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_CUSTOM_POWER_BUTTON := 116
TW_NO_REBOOT_BOOTLOADER := true
TW_NO_USB_STORAGE := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_FLASH_FROM_STORAGE := false
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_PREBUILT_RECOVERY_KERNEL := device/lge/fx1sk