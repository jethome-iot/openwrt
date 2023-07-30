# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2013-2016 OpenWrt.org
# Copyright (C) 2016 Yousong Zhou

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/image.mk

KERNEL_LOADADDR:=0x40008000

# why \x00\x00\x00\x00 for zImage-initramfs
define Device/Default
  PROFILES := Default
  SOC := sun8i-t113s
  BLOCKSIZE := 128k
  PAGESIZE := 2048
  UBINIZE_OPTS := -E 5
  KERNEL_INSTALL := 0
  KERNEL_NAME := zImage
  KERNEL_SUFFIX := -zImage
  KERNEL := kernel-bin
  KERNEL_SIZE := 8912896
  DTS_SIZE := 262144
  AWBOOT_SIZE := 262144
  IMAGES := sysupgrade.bin xfel.bin
  IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
  IMAGE/xfel.bin := copy-file spi-boot.img | pad-to $$(AWBOOT_SIZE) | append-dtb | pad-to $$(DTS_SIZE) | append-kernel | pad-to $$(KERNEL_SIZE) | append-ubi
endef

include $(SUBTARGET).mk

$(eval $(call BuildImage))
