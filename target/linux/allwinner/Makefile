# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2013-2016 OpenWrt.org

include $(TOPDIR)/rules.mk

ARCH:=arm
BOARD:=allwinner
BOARDNAME:=Allwinner T113
FEATURES:=fpu usb ext4 display rootfs-part rtc squashfs
SUBTARGETS:=cortexa7

KERNEL_PATCHVER:=6.3

KERNELNAME:=zImage dtbs

include $(INCLUDE_DIR)/target.mk

DEFAULT_PACKAGES += uboot-envtools
DEFAULT_PACKAGES += partx-utils mkf2fs e2fsprogs

$(eval $(call BuildTarget))
