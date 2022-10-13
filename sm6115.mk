#
# Copyright (C) 2013-2022, The Linux Foundation
# Copyright (C) 2022 StatiXOS
#
# SPDX-License-Identifer: Apache-2.0

$(call inherit-product, build/make/target/product/gsi_keys.mk)

#ANGLE
ANGLE := libangle

#APPOPS_POLICY
APPOPS_POLICY := appops_policy.xml

#ATRACE_HAL
ATRACE_HAL := android.hardware.atrace@1.0-service

AUDIO_HARDWARE += audio.primary.bengal

#HAL Wrapper
AUDIO_WRAPPER := libqahw
AUDIO_WRAPPER += libqahwwrapper

#AMPLOADER
AMPLOADER := amploader

#BRCTL
BRCTL := brctl
BRTCL += libbridge

#BSON
BSON := libbson

#C2DColorConvert
C2DCC := libc2dcolorconvert

#CIMAX
CIMAX := libcimax_spi

#CONNECTIVITY
CONNECTIVITY := libcnefeatureconfig
CONNECTIVITY += services-ext

#CURL
CURL := libcurl
CURL += curl

#DASH
DASH := libdashplayer
DASH += libqcmediaplayer
DASH += qcmediaplayer
DASH += libextmedia_jni

#EXTENDEDMEDIA_EXT
EXTENDEDMEDIA_EXT := libextendedmediaextractor
EXTENDEDMEDIA_EXT += libextendedmediaextractor_jni
EXTENDEDMEDIA_EXT += extendedmediaextractor
EXTENDEDMEDIA_EXT += ExtendedMediaPlayer


#DATA_OS
DATA_OS := librmnetctl

#EBTABLES
EBTABLES := ebtables
EBTABLES += ethertypes
EBTABLES += libebtc

#HDMID
HDMID := hdmid

#HOSTAPD
HOSTAPD := hostapd
HOSTAPD += hostapd_cli
HOSTAPD += nt_password_hash
HOSTAPD += hlr_auc_gw
HOSTAPD += test-milenage
HOSTAPD += hostapd.conf
HOSTAPD += hostapd_default.conf
HOSTAPD += hostapd.deny
HOSTAPD += hostapd.accept

#I420COLORCONVERT
I420CC := libI420colorconvert

#INIT
INIT := init.qcom.composition_type.sh
INIT += init.target.8x25.sh
INIT += init.qcom.mdm_links.sh
INIT += init.qcom.modem_links.sh
INIT += init.qcom.sensor.sh
INIT += init.target.rc
INIT += init.qti.ims.sh
INIT += init.qcom.coex.sh
INIT += init.qcom.early_boot.sh
INIT += init.qcom.post_boot.sh
INIT += init.qcom.syspart_fixup.sh
INIT += init.qcom.rc
INIT += init.recovery.qcom.rc
INIT += init.qcom.factory.rc
INIT += init.qcom.sdio.sh
INIT += init.qcom.sh
INIT += init.qcom.class_core.sh
INIT += init.class_main.sh
INIT += init.qcom.wifi.sh
INIT += vold.fstab
INIT += init.qcom.ril.path.sh
INIT += init.qcom.usb.rc
INIT += init.msm.usb.configfs.rc
INIT += init.qcom.usb.sh
INIT += usf_post_boot.sh
INIT += init.qcom.efs.sync.sh
INIT += ueventd.qcom.rc
INIT += qca6234-service.sh
INIT += ssr_setup
INIT += enable_swap.sh
INIT += init.mdm.sh
INIT += fstab.qcom
INIT += fstab.qti
INIT += fstab.default
INIT += init.qcom.sensors.sh
INIT += init.qcom.vendor.rc
INIT += init.target.vendor.rc
INIT += init.veth_ipa_config.sh

#IPROUTE2
IPROUTE2 := ip
IPROUTE2 += libiprouteutil

#IPTABLES
IPTABLES := libiptc
IPTABLES += libext
IPTABLES += iptables

#KS
KS := ks
KS += qcks
KS += efsks

#LIB_NL
LIB_NL := libnl_2

#LIB_XML2
LIB_XML2 := libxml2

#LIBGRALLOC
LIBGRALLOC := gralloc.default
LIBGRALLOC += libmemalloc
LIBGRALLOC += gralloc.bengal

#memtrack
LIBMEMTRACK := memtrack.default
LIBMEMTRACK += memtrack.bengal

#LIBHWCOMPOSER
LIBHWCOMPOSER += hwcomposer.bengal

#LIBAUDIOPARAM -- Exposing AudioParameter as dynamic library for SRS TruMedia to work
LIBAUDIOPARAM := libaudioparameter

#LIBAUDIORESAMPLER -- High-quality audio resampler
LIBAUDIORESAMPLER := libaudio-resampler

#LIBOPENCOREHW
LIBOPENCOREHW := libopencorehw

#LIBOVERLAY
LIBOVERLAY := liboverlay
LIBOVERLAY += overlay.default

#LIBGENLOCK
LIBGENLOCK := libgenlock

#LIBPERFLOCK
LIBPERFLOCK := org.codeaurora.Performance

#LIBQCOMUI
LIBQCOMUI := libQcomUI

#LIBQDUTILS
LIBQDUTILS := libqdutils

#LIBQDMETADATA
LIBQDMETADATA := libqdMetaData

#LLVM for RenderScript
#use qcom LLVM
$(call inherit-product-if-exists, external/llvm/llvm-select.mk)

#LOC_API
LOC_API := libloc_api-rpc-qc

#MM_AUDIO
MM_AUDIO := libOmxAacDec
MM_AUDIO += libOmxAacEnc
MM_AUDIO += libOmxAmrEnc
MM_AUDIO += libOmxEvrcEnc
MM_AUDIO += libOmxMp3Dec
MM_AUDIO += libOmxQcelp13Enc
MM_AUDIO += libOmxAc3HwDec

#MM_CORE
MM_CORE := libmm-omxcore
MM_CORE += libOmxCore

#WFD
MM_WFD := libwfdaac
MM_WFD := libwfdaac_vendor

#MM_VIDEO
MM_VIDEO := ast-mm-vdec-omx-test
MM_VIDEO += beat
MM_VIDEO += liblasic
MM_VIDEO += libOmxVdec
MM_VIDEO += libOmxVdecHevc
MM_VIDEO += libOmxVenc
MM_VIDEO += libOmxVidEnc
MM_VIDEO += libOmxSwVdec
MM_VIDEO += libOmxSwVencMpeg4
MM_VIDEO += libstagefrighthw
MM_VIDEO += mm-vdec-omx-property-mgr
MM_VIDEO += mm-vdec-omx-test
MM_VIDEO += mm-venc-omx-test
MM_VIDEO += mm-venc-omx-test720p
MM_VIDEO += mm-video-driver-test
MM_VIDEO += mm-video-encdrv-test
MM_VIDEO += ExoplayerDemo
MM_VIDEO += libaacwrapper

#NQ_NFC
NQ_NFC := NQNfcNci
NQ_NFC += libnqnfc-nci
NQ_NFC += libnqnfc_nci_jni
NQ_NFC += libsn100nfc_nci_jni
NQ_NFC += libsn100nfc-nci
NQ_NFC += nfc_nci.nqx.default
NQ_NFC += nfc_nci.sn100.default
NQ_NFC += libp61-jcop-kit
NQ_NFC += com.nxp.nfc.nq
NQ_NFC += com.nxp.nfc.nq.xml
NQ_NFC += com.gsma.services.nfc
NQ_NFC += libpn547_fw.so
NQ_NFC += libpn548ad_fw.so
NQ_NFC += libnfc-brcm.conf
NQ_NFC += libnfc-brcm_NCI2_0.conf
NQ_NFC += libnfc-nci.conf
NQ_NFC += libnfc-nci_NCI2_0.conf
NQ_NFC += libnfc-nxp_default.conf
NQ_NFC += nqnfcee_access.xml
NQ_NFC += nqnfcse_access.xml
NQ_NFC += Tag
NQ_NFC += nqnfcinfo
NQ_NFC += com.android.nfc_extras
NQ_NFC += vendor.nxp.hardware.nfc@1.1-service
NQ_NFC += nfc_nci.nqx.default.hw
NQ_NFC += nfc_nci.sn100.default.hw
PRODUCT_PROPERTY_OVERRIDES += ro.hardware.nfc_nci=nqx.default

#OPENCORE
OPENCORE := libomx_aacdec_sharedlibrary
OPENCORE += libomx_avcdec_sharedlibrary
OPENCORE += libomx_m4vdec_sharedlibrary
OPENCORE += libomx_mp3dec_sharedlibrary
OPENCORE += libopencore_author
OPENCORE += libopencore_common
OPENCORE += libopencore_download
OPENCORE += libopencore_downloadreg
OPENCORE += libopencore_mp4local
OPENCORE += libopencore_mp4localreg
OPENCORE += libopencore_net_support
OPENCORE += libopencore_player
OPENCORE += libopencore_rtsp
OPENCORE += libopencore_rtspreg
OPENCORE += libpvplayer_engine
OPENCORE += libpvauthorengine
OPENCORE += pvplayer
OPENCORE += pvplayer_engine_test

#PPP
PPP := ip-up-vpn

PROTOBUF := libprotobuf-cpp-full

#PVOMX
PVOMX := libqcomm_omx
PVOMX += 01_qcomm_omx

#RF4CE
RF4CE := RemoTI_RNP.cfg
RF4CE += rf4ce

#SENSORS_HARDWARE
SENSORS_HARDWARE := sensors.msm7630_surf
SENSORS_HARDWARE += sensors.msm7630_fusion

#SOFTAP
SOFTAP := libQWiFiSoftApCfg
SOFTAP += libqsap_sdk

#STK
STK := Stk

#STM LOG
STMLOG := libstm-log

#TSLIB_EXTERNAL
TSLIB_EXTERNAL := corgi
TSLIB_EXTERNAL += dejitter
TSLIB_EXTERNAL += inputraw
TSLIB_EXTERNAL += linear
TSLIB_EXTERNAL += variance
TSLIB_EXTERNAL += pthres
TSLIB_EXTERNAL += libtslib
TSLIB_EXTERNAL += tsprint
TSLIB_EXTERNAL += tstest
TSLIB_EXTERNAL += tsutils
TSLIB_EXTERNAL += tscalib
TSLIB_EXTERNAL += ts

#VR_HAL
VR_HAL := vr.msm8998
VR_HAL += vr.sdm845

#QRGND
QRGND := qrngd
QRGND += qrngp
QRGND += qrngtest

#WPA
WPA := wpa_supplicant.conf
WPA += wpa_cli
WPA += wpa_supplicant_wcn.conf
WPA += wpa_supplicant_ath6kl.conf
WPA += wpa_supplicant
WPA += hs20-osu-client

#ZLIB
ZLIB := gzip
ZLIB += libunz
ZLIB_HOST += minigzip

#Charger
CHARGER := charger
CHARGER += charger_res_images

#VT_JNI
VT_JNI := libvt_jni
VT_JNI += libimscamera_jni

# VT QTI Permissions
VT_QTI_PERMISSIONS := qti_permissions.xml

#RCS
RCS := rcs_service_aidl
RCS += rcs_service_aidl.xml
RCS += rcs_service_aidl_static
RCS += rcs_service_api
RCS += rcs_service_api.xml

#IMS SETTINGS
IMS_SETTINGS := imssettings

#IMS Extension module for Android Telephony
IMS_EXT := ims-ext-common
IMS_EXT += ims_ext_common.xml
IMS_EXT += ConfURIDialer
HIDL_WRAPPER := qti-telephony-hidl-wrapper
HIDL_WRAPPER += qti_telephony_hidl_wrapper.xml
QTI_TELEPHONY_UTILS := qti-telephony-utils
QTI_TELEPHONY_UTILS += qti_telephony_utils.xml

#CRDA
CRDA := crda
CRDA += regdbdump
CRDA += regulatory.bin
CRDA += linville.key.pub.pem
CRDA += init.crda.sh

#WLAN
WLAN := prima_wlan.ko
WLAN += pronto_wlan.ko
WLAN += qca_cld_wlan.ko

#FSTMAN
FSTMAN := fstman
FSTMAN += fstman.ini

#FD_LEAK
FD_LEAK := libc_leak_detector

#servicetracker HAL
PRODUCT_PACKAGES += \
    vendor.qti.hardware.servicetracker@1.2-impl \
    vendor.qti.hardware.servicetracker@1.2-service

PRODUCT_PACKAGES += $(ANGLE)
PRODUCT_PACKAGES += $(APPOPS_POLICY)
PRODUCT_PACKAGES += $(ATRACE_HAL)
PRODUCT_PACKAGES += $(AUDIO_HARDWARE)
PRODUCT_PACKAGES += $(AUDIO_WRAPPER)
PRODUCT_PACKAGES += $(AMPLOADER)
PRODUCT_PACKAGES += $(BRCTL)
PRODUCT_PACKAGES += $(BSON)
PRODUCT_PACKAGES += $(C2DCC)
PRODUCT_PACKAGES += $(CIMAX)
PRODUCT_PACKAGES += $(RCS)
PRODUCT_PACKAGES += $(CONNECTIVITY)
PRODUCT_PACKAGES += $(CHARGER)
PRODUCT_PACKAGES += $(CURL)
PRODUCT_PACKAGES += $(DASH)
PRODUCT_PACKAGES += $(DATA_OS)
PRODUCT_PACKAGES += $(EBTABLES)
PRODUCT_PACKAGES += $(EXTENDEDMEDIA_EXT)
PRODUCT_PACKAGES += $(HDMID)
PRODUCT_PACKAGES += $(HOSTAPD)
PRODUCT_PACKAGES += $(HIDL_WRAPPER)
PRODUCT_PACKAGES += $(I420CC)
PRODUCT_PACKAGES += $(INIT)
PRODUCT_PACKAGES += $(IPROUTE2)
PRODUCT_PACKAGES += $(IPTABLES)
PRODUCT_PACKAGES += $(KEYPAD)
PRODUCT_PACKAGES += $(KS)
PRODUCT_PACKAGES += $(LIB_NL)
PRODUCT_PACKAGES += $(LIB_XML2)
PRODUCT_PACKAGES += $(LIBCAMERA)
PRODUCT_PACKAGES += $(LIBGESTURES)
PRODUCT_PACKAGES += $(LIBCOPYBIT)
PRODUCT_PACKAGES += $(LIBGRALLOC)
PRODUCT_PACKAGES += $(LIBMEMTRACK)
PRODUCT_PACKAGES += $(LIBLIGHTS)
PRODUCT_PACKAGES += $(LIBAUDIOPARAM)
PRODUCT_PACKAGES += $(LIBAUDIORESAMPLER)
PRODUCT_PACKAGES += $(LIBOPENCOREHW)
PRODUCT_PACKAGES += $(LIBOVERLAY)
PRODUCT_PACKAGES += $(LIBHWCOMPOSER)
PRODUCT_PACKAGES += $(LIBGENLOCK)
PRODUCT_PACKAGES += $(LIBPERFLOCK)
PRODUCT_PACKAGES += $(LIBQCOMUI)
PRODUCT_PACKAGES += $(LIBQDUTILS)
PRODUCT_PACKAGES += $(LIBQDMETADATA)
PRODUCT_PACKAGES += $(LIBPOWER)
PRODUCT_PACKAGES += $(LOC_API)
PRODUCT_PACKAGES += $(MEDIA_PROFILES)
PRODUCT_PACKAGES += $(MM_AUDIO)
PRODUCT_PACKAGES += $(MM_CORE)
PRODUCT_PACKAGES += $(MM_WFD)
PRODUCT_PACKAGES += $(MM_VIDEO)
PRODUCT_PACKAGES += $(NQ_NFC)
PRODUCT_PACKAGES += $(OPENCORE)
PRODUCT_PACKAGES += $(PPP)
PRODUCT_PACKAGES += $(PROTOBUF)
PRODUCT_PACKAGES += $(PVOMX)
PRODUCT_PACKAGES += $(QTI_TELEPHONY_UTILS)
PRODUCT_PACKAGES += $(RF4CE)
PRODUCT_PACKAGES += $(SENSORS_HARDWARE)
#PRODUCT_PACKAGES += $(SOFTAP)
PRODUCT_PACKAGES += $(STK)
PRODUCT_PACKAGES += $(STMLOG)
PRODUCT_PACKAGES += $(THERMAL_HAL)
PRODUCT_PACKAGES += $(TSLIB_EXTERNAL)
PRODUCT_PACKAGES += $(VR_HAL)
PRODUCT_PACKAGES += $(QRGND)
PRODUCT_PACKAGES += $(UPDATER)
PRODUCT_PACKAGES += $(WPA)
PRODUCT_PACKAGES += $(ZLIB)
PRODUCT_HOST_PACKAGES += $(ZLIB_HOST)
PRODUCT_PACKAGES += $(VT_JNI)
PRODUCT_PACKAGES += $(VT_QTI_PERMISSIONS)
PRODUCT_PACKAGES += $(IMS_SETTINGS)
PRODUCT_PACKAGES += $(CRDA)
PRODUCT_PACKAGES += $(WLAN)
PRODUCT_PACKAGES += $(FSTMAN)
PRODUCT_PACKAGES += $(FD_LEAK)
PRODUCT_PACKAGES += $(IMS_EXT)

PRODUCT_PACKAGES += move_wifi_data.sh
PRODUCT_PACKAGES += librs_jni
PRODUCT_PACKAGES += libion

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

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

ifeq ($(TARGET_HAS_LOW_RAM),true)
    PRODUCT_PROPERTY_OVERRIDES += \
        persist.vendor.qcomsysd.enabled=0
else
    PRODUCT_PROPERTY_OVERRIDES += \
        persist.vendor.qcomsysd.enabled=1
endif

PRODUCT_PACKAGES += liboemaids_system
PRODUCT_PACKAGES += liboemaids_vendor

# framework detect libs
PRODUCT_PACKAGES += libvndfwk_detect_jni.qti
PRODUCT_PACKAGES += libqti_vndfwk_detect
PRODUCT_PACKAGES += libvndfwk_detect_jni.qti.vendor
PRODUCT_PACKAGES += libqti_vndfwk_detect.vendor

# vndservicemanager
PRODUCT_PACKAGES += vndservicemanager

PRODUCT_BRAND := qcom
PRODUCT_AAPT_CONFIG += hdpi mdpi

PRODUCT_MANUFACTURER := QUALCOMM

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

QCOM_BOARD_PLATFORMS += bengal

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

PRODUCT_PACKAGES += wifilearner
PRODUCT_PACKAGES += dppdaemon
PRODUCT_PACKAGES += wpa_cli

PRODUCT_PROPERTY_OVERRIDES += \
	wifi.aware.interface=wifi-aware0
