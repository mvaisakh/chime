#
# Copyright (C) 2013-2022, The Linux Foundation
# Copyright (C) 2022 StatiXOS
#
# SPDX-License-Identifer: Apache-2.0

$(call inherit-product, build/make/target/product/gsi_keys.mk)

#ANGLE
PRODUCT_PACKAGES += \
    libangle

#APPOPS_POLICY
PRODUCT_PACKAGES += \
    appops_policy.xml

#ATRACE_HAL
PRODUCT_PACKAGES += \
    android.hardware.atrace@1.0-service

PRODUCT_PACKAGES += \
    audio.primary.bengal \
    libqahw \
    libqahwwrapper

#AMPLOADER
PRODUCT_PACKAGES += \
    amploader

#BRCTL
PRODUCT_PACKAGES += \
    brctl \
    libbridge

#BSON
PRODUCT_PACKAGES += \
    libbson

#C2DColorConvert
PRODUCT_PACKAGES += \
    libc2dcolorconvert

#CIMAX
PRODUCT_PACKAGES += \
    libcimax_spi

#CONNECTIVITY
PRODUCT_PACKAGES += \
    libcnefeatureconfig \
    services-ext

#DATA_OS
PRODUCT_PACKAGES += \
    librmnetctl

#EBTABLES
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

#HDMID
PRODUCT_PACKAGES += \
    hdmid

#HOSTAPD
PRODUCT_PACKAGES += \
    hostapd \
    hostapd_cli \
    nt_password_hash \
    hlr_auc_gw \
    hostapd_default.conf

#I420COLORCONVERT
PRODUCT_PACKAGES += \
    libI420colorconvert

# Init
PRODUCT_PACKAGES += \
    init.qcom.sensor.sh \
    init.crda.sh \
    init.target.rc \
    init.qti.ims.sh \
    init.qcom.coex.sh \
    init.qcom.early_boot.sh \
    init.qcom.post_boot.sh \
    init.qcom.rc \
    init.recovery.qcom.rc \
    init.qcom.factory.rc \
    init.qcom.sdio.sh \
    init.qcom.sh \
    init.qcom.class_core.sh \
    init.class_main.sh \
    init.qcom.ril.path.sh \
    init.qcom.efs.sync.sh \
    ueventd.qcom.rc \
    ssr_setup \
    init.mdm.sh \
    fstab.qti \
    init.qcom.sensors.sh

# iproute2
PRODUCT_PACKAGES += \
    ip \
    libiprouteutil

# iptables
PRODUCT_PACKAGES += \
    libiptc \
    libext \
    iptables

#KS
PRODUCT_PACKAGES += \
    ks \
    qcks \
    efsks

# LIB_NL
PRODUCT_PACKAGES += \
    libnl_2

# LIB_XML2
PRODUCT_PACKAGES += \
    libxml2

#LIBGRALLOC
PRODUCT_PACKAGES += \
    gralloc.default \
    gralloc.bengal \
    libmemalloc

# Memtrack
PRODUCT_PACKAGES += \
    memtrack.default \
    memtrack.bengal

# HWComposer
PRODUCT_PACKAGES += \
    hwcomposer.bengal

# LibAudioParam -- Exposing AudioParameter as dynamic library for SRS TruMedia to work
PRODUCT_PACKAGES += \
    libaudioparameter

# LibAudioResampler -- High-quality audio resampler
PRODUCT_PACKAGES += \
    libaudio-resampler

# LibOpenCoreHW
PRODUCT_PACKAGES += \
    libopencorehw

#LIBOVERLAY
PRODUCT_PACKAGES += \
    liboverlay \
    overlay.default

# LibGenLock
PRODUCT_PACKAGES += \
    libgenlock

# LibPerfLock
PRODUCT_PACKAGES += \
    org.codeaurora.Performance

# LibQCOMUI
PRODUCT_PACKAGES += \
    libQcomUI

# LibQDUtils
PRODUCT_PACKAGES += \
    libqdutils

# LibQDMetadata
PRODUCT_PACKAGES += \
    libqdMetaData

#LLVM for RenderScript
#use qcom LLVM
$(call inherit-product-if-exists, external/llvm/llvm-select.mk)

#LOC_API
LOC_API := libloc_api-rpc-qc

#MM_AUDIO
PRODUCT_PACKAGES += \
    libOmxAacDec \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxMp3Dec \
    libOmxQcelp13Enc \
    libOmxAc3HwDec

# mm-core
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxCore

#WFD
PRODUCT_PACKAGES += \
    libwfdaac \
    libwfdaac_vendor

# MM_VIDEO
PRODUCT_PACKAGES += \
    liblasic \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc \
    libOmxVidEnc \
    libOmxSwVdec \
    libOmxSwVencMpeg4 \
    libstagefrighthw \
    libaacwrapper

# OPENCORE
PRODUCT_PACKAGES += \
    libomx_aacdec_sharedlibrary \
    libomx_avcdec_sharedlibrary \
    libomx_m4vdec_sharedlibrary \
    libomx_mp3dec_sharedlibrary \
    libopencore_author \
    libopencore_common \
    libopencore_download \
    libopencore_downloadreg \
    libopencore_mp4local \
    libopencore_mp4localreg \
    libopencore_net_support \
    libopencore_player \
    libopencore_rtsp \
    libopencore_rtspreg \
    libpvplayer_engine \
    libpvauthorengine \
    pvplayer

#PPP
PRODUCT_PACKAGES += \
    ip-up-vpn

PRODUCT_PACKAGES += \
    libprotobuf-cpp-full

#PVOMX
PRODUCT_PACKAGES += \
    libqcomm_omx \
    01_qcomm_omx

#RF4CE
PRODUCT_PACKAGES += \
    RemoTI_RNP.cfg \
    rf4ce

#SOFTAP
PRODUCT_PACKAGES += \
    libQWiFiSoftApCfg \
    libqsap_sdk

#WPA
PRODUCT_PACKAGES += \
    wpa_supplicant.conf \
    wpa_cli \
    wpa_supplicant_wcn.conf \
    wpa_supplicant

#Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

#VT_JNI
PRODUCT_PACKAGES += \
    libvt_jni \
    libimscamera_jni \
    qti_permissions.xml

#RCS
PRODUCT_PACKAGES += \
    rcs_service_aidl \
    rcs_service_aidl.xml \
    rcs_service_aidl_static \
    rcs_service_api \
    rcs_service_api.xml

#IMS
PRODUCT_PACKAGES += \
    imssettings \
    ims-ext-common \
    ims_ext_common.xml \
    ConfURIDialer \
    qti-telephony-hidl-wrapper \
    qti_telephony_hidl_wrapper.xml \
    qti-telephony-utils \
    qti_telephony_utils.xml

#CRDA
PRODUCT_PACKAGES += \
    crda \
    regdbdump \
    regulatory.bin \
    linville.key.pub.pem

#FSTMAN
PRODUCT_PACKAGES += \
    fstman \
    fstman.ini

#servicetracker HAL
PRODUCT_PACKAGES += \
    vendor.qti.hardware.servicetracker@1.2-impl \
    vendor.qti.hardware.servicetracker@1.2-service

PRODUCT_PACKAGES += librs_jni
PRODUCT_PACKAGES += libion

# Qcril configuration file
PRODUCT_PACKAGES += qcril.db

# vcard jar
PRODUCT_PACKAGES += vcard

# tcmiface for tcm support
PRODUCT_PACKAGES += tcmiface

# healthd libaray expanded for mode charger
PRODUCT_PACKAGES += libhealthd.msm

PRODUCT_COPY_FILES := \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.full.xml\
    frameworks/native/data/etc/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.raw.xml\
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.device_id_attestation.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.device_id_attestation.xml \
    frameworks/native/data/etc/android.software.verified_boot.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.verified_boot.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.cdma.xml

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore_desede=true

# gps/location secuity configuration file
PRODUCT_COPY_FILES += \
    device/xiaomi/sm6115/configs/sec_config:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config

#copy codecs_xxx.xml to (TARGET_COPY_OUT_VENDOR)/etc/
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_c2_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_c2_video.xml \
    device/xiaomi/sm6115/media/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles.xml

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/com.nxp.mifare.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.hcef.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.nfc.hcef.xml

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.vulkan.compute-0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.compute-0.xml

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level-1.xml

PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.vulkan.version-1_1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version-1_1.xml


DEVICE_PACKAGE_OVERLAYS += device/xiaomi/sm6115/device/overlay
PRODUCT_PACKAGE_OVERLAYS += device/xiaomi/sm6115/product/overlay

TARGET_KERNEL_VERSION := 4.19

PRODUCT_PROPERTY_OVERRIDES += persist.radio.multisim.config=dsds

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    vendor.usb.diag.func.name=diag

TARGET_FS_CONFIG_GEN := device/xiaomi/sm6115/configs/config.fs


PRODUCT_PROPERTY_OVERRIDES += \
        persist.vendor.qcomsysd.enabled=1

PRODUCT_PACKAGES += \
    liboemaids_system \
    liboemaids_vendor

# framework detect libs
PRODUCT_PACKAGES += \
    libvndfwk_detect_jni.qti \
    libqti_vndfwk_detect \
    libvndfwk_detect_jni.qti.vendor \
    libqti_vndfwk_detect.vendor

# vndservicemanager
PRODUCT_PACKAGES += vndservicemanager

PRODUCT_AAPT_CONFIG += xxxhdpi

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so \
    persist.backup.ntpServer=0.pool.ntp.org \
    sys.vendor.shutdown.waittime=500

PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.radio.apm_sim_not_pwdn=1 \
    persist.vendor.radio.sib16_support=1 \
    persist.vendor.radio.custom_ecc=1 \
    persist.vendor.radio.rat_on=combine \
    persist.vendor.radio.procedure_bytes=SKIP

# whitelisted app
PRODUCT_COPY_FILES += \
    device/xiaomi/sm6115/configs/permissions/qti_whitelist.xml:system/etc/sysconfig/qti_whitelist.xml

PRODUCT_COPY_FILES += \
    device/xiaomi/sm6115/configs/permissions/privapp-permissions-qti.xml:system/etc/permissions/privapp-permissions-qti.xml

# Permission for Wi-Fi passpoint support
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.wifi.passpoint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.passpoint.xml

SHIPPING_API_LEVEL := 29
PRODUCT_SHIPPING_API_LEVEL := $(SHIPPING_API_LEVEL)
BOARD_SHIPPING_API_LEVEL := $(SHIPPING_API_LEVEL)
BOARD_API_LEVEL := $(SHIPPING_API_LEVEL)

PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_PACKAGES += fastbootd

# Add default implementation of fastboot HAL.
PRODUCT_PACKAGES += android.hardware.fastboot@1.0-impl-mock

# Userdata checkpoint
PRODUCT_PACKAGES += \
 checkpoint_gc

PRODUCT_COPY_FILES += $(LOCAL_PATH)/rootdir/etc/fstab.qti:$(TARGET_COPY_OUT_RAMDISK)/fstab.default
BOARD_AVB_VBMETA_SYSTEM := system
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 2

# Enable incremental FS feature
PRODUCT_PROPERTY_OVERRIDES += ro.incremental.enable=1

PRODUCT_PACKAGES += init.qti.early_init.sh
PRODUCT_PROPERTY_OVERRIDES += \
    ro.soc.manufacturer=QTI

# privapp-permissions whitelisting (To Fix CTS :privappPermissionsMustBeEnforced)
PRODUCT_PROPERTY_OVERRIDES += ro.control_privapp_permissions=enforce

# RRO configuration
TARGET_USES_RRO := true

# default is nosdcard, S/W button enabled in resource
PRODUCT_CHARACTERISTICS := nosdcard

# Android EGL implementation
PRODUCT_PACKAGES += libGLES_android

PRODUCT_PACKAGES += fs_config_files
PRODUCT_PACKAGES += gpio-keys.kl
PRODUCT_PACKAGES += libvolumelistener

# MIDI feature
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml

#target specific runtime prop for qspm
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.qspm.enable=true

#FEATURE_OPENGLES_EXTENSION_PACK support string config file
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml

# Audio configuration file
-include $(TOPDIR)vendor/qcom/opensource/audio-hal/primary-hal/configs/bengal/bengal.mk

# MIDI feature
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml

PRODUCT_BOOT_JARS += telephony-ext
PRODUCT_PACKAGES += telephony-ext

# Vendor property to enable advanced network scanning
PRODUCT_PROPERTY_OVERRIDES += \
    persist.vendor.radio.enableadvancedscan=true

PRODUCT_PROPERTY_OVERRIDES += \
ro.crypto.volume.filenames_mode = "aes-256-cts" \
ro.crypto.allow_encrypt_override = true

PRODUCT_PACKAGES += init.qti.dcvs.sh
PRODUCT_PACKAGES += android.hardware.lights-service.qti

# WiFi
PRODUCT_COPY_FILES += \
    device/xiaomi/sm6115/configs/wlan/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/WCNSS_qcom_cfg.ini \
    device/xiaomi/sm6115/configs/wlan/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
    device/xiaomi/sm6115/configs/wlan/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    device/xiaomi/sm6115/configs/wlan/icm.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/icm.conf \
    device/xiaomi/sm6115/configs/wlan/hostapd.accept:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/hostapd.accept \
    device/xiaomi/sm6115/configs/wlan/hostapd.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/hostapd.conf \
    device/xiaomi/sm6115/configs/wlan/hostapd.deny:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/hostapd.deny \
    frameworks/native/data/etc/android.hardware.wifi.aware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.aware.xml \
    frameworks/native/data/etc/android.hardware.wifi.rtt.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.rtt.xml \
    frameworks/native/data/etc/android.hardware.wifi.passpoint.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.passpoint.xml

PRODUCT_PACKAGES += \
    wifilearner \
    dppdaemon \
    wpa_cli

PRODUCT_PROPERTY_OVERRIDES += \
	wifi.aware.interface=wifi-aware0
