#
# Copyright (C) 2008-2014 The LuCI Team <luci@lists.subsignal.org>
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

PKG_LICENSE:=Apache-2.0

LUCI_TITLE:=LuCI Statistics Application
LUCI_DEPENDS:= \
	+luci-base \
	+collectd \
	+rrdtool1 \
	+collectd-mod-rrdtool \
	+collectd-mod-iwinfo \
	+collectd-mod-cpu \
	+collectd-mod-memory \
	+collectd-mod-interface \
	+collectd-mod-load \
	+collectd-mod-network

PKG_MAINTAINER:=Jo-Philipp Wich <jo@mein.io>

define Package/luci-app-statistics/conffiles
/etc/config/luci_statistics
endef

include ../../luci.mk

# call BuildPackage - OpenWrt buildroot signature
