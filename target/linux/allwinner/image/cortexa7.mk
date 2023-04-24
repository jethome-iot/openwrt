# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2013-2019 OpenWrt.org
# Copyright (C) 2016 Yousong Zhou

define Device/mangopi_mq-r 
  DEVICE_VENDOR := MangoPi
  DEVICE_MODEL := MQ-R
  SOC := sun8i-t113s
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  UBINIZE_OPTS := -E 5
  KERNEL_INSTALL := 0
  KERNEL_NAME := zImage
  KERNEL_SUFFIX := -zImage
  KERNEL := kernel-bin
  IMAGES := sysupgrade.bin dtb rootfs.bin
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
  IMAGE/rootfs.bin := append-ubi
  IMAGE/dtb := install-dtb
endef
TARGET_DEVICES += mangopi_mq-r
