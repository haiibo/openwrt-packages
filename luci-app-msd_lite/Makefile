include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-msd_lite
PKG_VERSION:=20220830

include $(INCLUDE_DIR)/package.mk

define Package/luci-app-msd_lite
 	SECTION:=luci
	CATEGORY:=LuCI
	SUBMENU:=3. Applications
	TITLE:=msd_lite web config
	PKGARCH:=all
	DEPENDS:=+msd_lite
endef

define Build/Compile
endef

define Package/luci-app-msd_lite/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci
	cp -pR ./luasrc/* $(1)/usr/lib/lua/luci
endef

$(eval $(call BuildPackage,luci-app-msd_lite))
