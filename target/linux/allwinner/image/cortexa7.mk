# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2013-2019 OpenWrt.org
# Copyright (C) 2016 Yousong Zhou
# Copyright (C) 2023 @lmahmutov

define Device/mangopi_mq-r 
  DEVICE_VENDOR := MangoPi
  DEVICE_MODEL := MQ-R
  SOC := sun8i-t113s
  DEVICE_DTS := sun8i-t113s-mangopi-mq-r
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  UBINIZE_OPTS := -E 5
  KERNEL_INSTALL := 0
  KERNEL_NAME := zImage
  KERNEL_SUFFIX := -zImage
  KERNEL := kernel-bin
  KERNEL_SIZE := 8650752
  DTS_SIZE := 262144
  IMAGES := sysupgrade.bin xfel.bin
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
  IMAGE/xfel.bin := append-dtb | pad-to $$(DTS_SIZE) | append-kernel | pad-to $$(KERNEL_SIZE) | append-ubi
endef
TARGET_DEVICES += mangopi_mq-r

define Device/sk_nano-lv
  DEVICE_VENDOR := StarterKit
  DEVICE_MODEL := NANO-LV-LCD
  SOC := sun8i-t113s
  DEVICE_DTS := sun8i-t113s-sk-nano-lv-nand
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  UBINIZE_OPTS := -E 5
  KERNEL_INSTALL := 0
  KERNEL_NAME := zImage
  KERNEL_SUFFIX := -zImage
  KERNEL := kernel-bin
  KERNEL_SIZE := 8650752
  DTS_SIZE := 262144
  IMAGES := sysupgrade.bin xfel.bin
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
  IMAGE/xfel.bin := append-dtb | pad-to $$(DTS_SIZE) | append-kernel | pad-to $$(KERNEL_SIZE) | append-ubi
endef
TARGET_DEVICES += sk_nano-lv
