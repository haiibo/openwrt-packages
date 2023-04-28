include $(TOPDIR)/rules.mk

PKG_NAME:=msd_lite
PKG_RELEASE=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL=https://github.com/rozhuk-im/msd_lite
PKG_SOURCE_DATE:=2023-01-21
PKG_SOURCE_VERSION:=a8c16319588bb0407ba3edc3ba367d4070ea32c3
PKG_HASH:=6b8b9ae756e4131002fc9ba5589fd48e30a5b5f2247c2cb5ef0bda06a25ca819
CMAKE_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/msd_lite
  SECTION:=net
  CATEGORY:=Network
  TITLE:=Convert UDP IPTV streams into HTTP streams
  DEPENDS:=
endef


define Package/msd_lite/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/msd_lite $(1)/usr/bin/
	$(INSTALL_DIR) $(1)/etc/msd_lite
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/etc/msd_lite/msd_lite.conf.sample $(1)/etc/msd_lite/msd_lite.conf
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/msd_lite.init $(1)/etc/init.d/msd_lite
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_DATA) ./files/msd_lite.conf $(1)/etc/config/msd_lite
endef


$(eval $(call BuildPackage,msd_lite))
