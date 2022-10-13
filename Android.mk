#
# Copyright (C) 2013-2022, The Linux Foundation
# Copyright (C) 2022 StatiXOS
#
# SPDX-License-Identifer: Apache-2.0

# create symbolic links for INI file
$(shell mkdir -p $(TARGET_OUT_VENDOR)/firmware/wlan/qca_cld; \
ln -sf /vendor/etc/wifi/WCNSS_qcom_cfg.ini \
$(TARGET_OUT_VENDOR)/firmware/wlan/qca_cld/WCNSS_qcom_cfg.ini)
