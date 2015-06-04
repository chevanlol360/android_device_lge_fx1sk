# Release name
PRODUCT_RELEASE_NAME := fx1sk

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/fx1sk/device_fx1sk.mk)

# Live Wallpapers
PRODUCT_PACKAGES += \
        LiveWallpapers \
        LiveWallpapersPicker \
        VisualizationWallpapers


# Get the long list of APNs
PRODUCT_COPY_FILES := device/lge/fx1sk/Addon/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := fx1sk
PRODUCT_NAME := cm_fx1sk
PRODUCT_BRAND := lge
PRODUCT_MODEL := fx1sk
PRODUCT_MANUFACTURER := lge
