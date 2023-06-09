# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2023 @lmahmutov

define Device/mangopi_mq-r 
  DEVICE_VENDOR := MangoPi
  DEVICE_MODEL := MQ-R
  DEVICE_DTS := sun8i-t113s-mangopi-mq-r
endef
TARGET_DEVICES += mangopi_mq-r

define Device/sk_nano-lv
  DEVICE_VENDOR := StarterKit
  DEVICE_MODEL := NANO-LV-LCD
  DEVICE_DTS := sun8i-t113s-sk-nano-lv-nand
endef
TARGET_DEVICES += sk_nano-lv
