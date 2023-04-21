# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2013-2019 OpenWrt.org
# Copyright (C) 2016 Yousong Zhou

define Device/mangopi_mq-r 
  DEVICE_VENDOR := MangoPi
  DEVICE_MODEL := MQ-R
  SOC := sun8i-t113s
endef
TARGET_DEVICES += mangopi_mq-r
