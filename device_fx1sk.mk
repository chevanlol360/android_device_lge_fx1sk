$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product-if-exists, vendor/lge/fx1sk/fx1sk-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/fx1sk/Addon/overlay

PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_LOCALES += ko_KR xhdpi

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/lge/fx1sk/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

ifeq ($(TARGET_BUILD_VARIANT),user)
    NFCEE_ACCESS_PATH := $(LOCAL_PATH)/Addon/nfc/nfcee_access.xml
else
    NFCEE_ACCESS_PATH := $(LOCAL_PATH)/Addon/nfc/nfcee_access_debug.xml
endif

PRODUCT_PACKAGES += \
        librs_jni \
        nfc.msm8960 \
        libnfc \
        libnfc_jni \
        Nfc \
        Tag \
        com.android.nfc_extras \
        charger_res_images \
        charger \
        make_ext4fs \
	power.msm8960 \
	librs_jni \
	com.android.future.usb.accessory \
	e2fsck \
	libgenlock \
	liboverlay \
	hwcomposer.msm8960 \
	gralloc.msm8960 \
	copybit.msm8960 \
	memtrack.msm8960 \
	audio_policy.msm8960 \
	audio.primary.msm8960 \
	audio.a2dp.default \
	audio.usb.default \
	audio.r_submix.default \
	libaudio-resampler \
	libqcomvoiceprocessing \
        libmm-omxcore \
	libdivxdrmdecrypt \
	libOmxVdec \
	libOmxVenc \
	libOmxCore \
	libstagefrighthw \
	libc2dcolorconvert \
	hdmid \
	libgps.utils \
	libgeofence \
	libloc_adapter \
	libloc_eng \
	libloc_api_v02 \
	libloc_ds_api \
	libloc_core \
	libizat_core \
	gps.msm8960 \
	hwaddrs \
        hci_qcomm_init \
        lights.msm8960 \
        f2fs-tools \
        exfat \
        ffmpeg \
        naver-fonts \
	brcm_patchram_plus \
	recovery-transform.sh \
	hostapd \
	dhcpcd.con\
	wpa_supplicant \
	wpa_supplicant.conf \
	keystore.msm8960 \
	flp.msm8960 \
	hostapd_default.conf \
	wpa_supplicant_overlay.conf \
	p2p_supplicatn_overlay.conf \
	healthd

PRODUCT_COPY_FILES += \
        $(LOCAL_KERNEL):kernel \
        $(LOCAL_PATH)/Addon/vendor/firmware/BCM4334B0_002.001.013.0271.0333.hcd:/system/vendor/firmware/BCM4334B0_002.001.013.0271.0333.hcd \
	$(LOCAL_PATH)/Addon/vendor/firmware/libpn544_fw.so:system/vendor/firmware/libpn544_fw.so \
#        $(LOCAL_PATH)/Addon/init.fx1sk-common.rc:root/init.fx1sk-common.rc \
#        $(LOCAL_PATH)/Addon/init.fx1sk.usb.rc:root/init.fx1sk.usb.rc \
	$(LOCAL_PATH)/Addon/etc/audio_policy.conf:system/etc/audio_policy.conf \
	$(LOCAL_PATH)/Addon/etc/qosmgr_rules.xml:system/etc/qosmgr_rules.xml \
	$(LOCAL_PATH)/Addon/etc/media_profiles.xml:system/etc/media_profiles.xml \
	$(LOCAL_PATH)/Addon/etc/media_codecs.xml:system/etc/media_codecs.xml \
        $(LOCAL_PATH)/Addon/kickstart_checker.sh:system/etc/kickstart_checker.sh \
	$(LOCAL_PATH)/Addon/usr/keylayout/hs_detect.kl:system/usr/keylayout/hs_detect.kl \
	$(LOCAL_PATH)/Addon/usr/keylayout/pmic8xxx_pwrkey.kl:system/usr/keylayout/pmic8xxx_pwrkey.kl \
	$(LOCAL_PATH)/Addon/usr/keychars/hs_detect.kcm:system/usr/keychars/hs_detect.kcm \
	$(LOCAL_PATH)/Addon/usr/keychars/pmic8xxx_pwrkey.kcm:system/usr/keychars/pmic8xxx_pwrkey.kcm \
	$(LOCAL_PATH)/Addon/usr/idc/touch_dev.idc:system/usr/idc/touch_dev.idc \
	$(LOCAL_PATH)/Addon/usr/keylayout/touch_dev.kl:system/usr/keylayout/touch_dev.kl \
	$(LOCAL_PATH)/Addon/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf \
	$(LOCAL_PATH)/Addon/bin/fetch-swv:system/bin/fetch-swv \
	$(LOCAL_PATH)/Addon/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
#	$(LOCAL_PATH)/Addon/init.fx1sk.rc:root/init.fx1sk.rc \
	$(LOCAL_PATH)/Addon/recovery.fstab:root/recovery.fstab \
#	$(LOCAL_PATH)/Addon/root/ueventd.fx1sk.rc:root/ueventd.fx1sk.rc \
	$(LOCAL_PATH)/Addon/usr/keylayout/keypad_8960.kl:system/usr/keylayout/keypad-8960.kl \
	$(LOCAL_PATH)/Addon/etc/bcmdhd.cal:system/etc/wifi/bcmdhd.cal \
	$(LOCAL_PATH)/Addon/etc/gps.conf:system/etc/gps.conf \
#	$(LOCAL_PATH)/Addon/root/initlogo.rle:root/initlogo.rle \
	$(LOCAL_PATH)/Addon/etc/bluetooth/bdroid_buildcfg.h:system/etc/bluetooth/bdroid_buildcfg.h \
	$(LOCAL_PATH)/Addon/etc/bluetooth/vnd_fx1sk.txt:system/etc/bluetooth/vnd_fx1sk.txt \
	$(LOCAL_PATH)/Addon/etc/nfcee_access.xml:system/etc/nfcee_access.xml \
	$(LOCAL_PATH)/Addon/etc/nfcee_access_debug.xml:system/etc/nfcee_access_debug.xml \
	$(LOCAL_PATH)/Addon/etc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
        $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
	frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
	frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
	frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
	frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
        frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
        frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
        frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml



PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=196608
	persist.audio.handset.mic.type=digital \
	persist.audio.dualmic.config=endfire \
	persist.audio.fluence.voicecall=true \
	persist.audio.vr.enable=false \
        persist.audio.handset.mic=digital \
	persist.audio.fluence.mode=endfire \
	persist.audio.lowlatency.rec=false \
	af.resampler.quality=255 \
	persist.radio.apm_sim_not_pwdn=1 \
	ro.telephony.call_ring.multiple=0 \
	ro.telephony.ril_class=LgeLteRIL \
	ro.telephony.ril.v3=qcomdsds \
	persist.hwc.mdpcomp.enable=true \
	com.qc.hardware=true \
	debug.egl.hw=1 \
        debug.sf.hw=1 \
        debug.mdpcomp.logs=0 \
	drm.service.enabled=true \
	wifi.interface=wlan0 \
	wifi.supplicant_scan_interval=180 \
	media.aac_51_output_enabled=true \
	debug.egl.recordable.rgba8888=1 \
	ro.qc.sensors.wl_dis=true \
	ro.qualcomm.sensors.smd=true \
	ro.sf.lcd_density=320 \
	ro.bt.bdaddr_path=/data/misc/bdaddr \
	ro.telephony.default_network=9 \
	telephony.lteOnGsmDevice=1 \
        ro.hwui.text_cache_width=2048 \
        ro.qualcomm.cabl=1 \
        persist.gps.qmienabled=true \
        ro.vendor.extension_library=/system/lib/libqc-opt.so \
        ro.use_data_netmgrd=true \
        persist.data.netmgrd.qos.enable=false 

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	rild.libpath=/system/lib/libril-qc-qmi-1.so \
	persist.sys.usb.config=mtp	

$(shell mkdir -p out/target/product/fx1sk/obj/KERNEL_OBJ/usr/)

$(call inherit-product, hardware/qcom/msm8960/msm8960.mk)
$(call inherit-product, frameworks/base/data/sounds/AudioPackage10.mk)
$(call inherit-product, build/target/product/full.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk)
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_fx1sk
PRODUCT_DEVICE := fx1sk