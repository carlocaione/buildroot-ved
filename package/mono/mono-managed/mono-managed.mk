#############################################################
#
# mono-managed
#
#############################################################

MONO_MANAGED_VERSION         = $(MONO_VERSION)
MONO_MANAGED_SITE            = $(MONO_SITE)
MONO_MANAGED_SOURCE 	     = $(MONO_SOURCE)
MONO_MANAGED_INSTALL_STAGING = $(MONO_INSTALL_STAGING)

MONO_MANAGED_CONF_ENV = \
	CFLAGS="--sysroot=$(STAGING_DIR)"

define MONO_MANAGED_CONFIGURE_CMDS
	(cd $(@D); \
		PKG_CONFIG_SYSROOT_DIR="$(STAGING_DIR)" \
		PKG_CONFIG="$(PKG_CONFIG_HOST_BINARY)" \
		MAKEFLAGS="$(MAKEFLAGS) -j$(PARALLEL_JOBS)" ./configure \
		--with-sysroot=$(STAGING_DIR) \
	)
endef

define MONO_MANAGED_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) -C $(@D)
endef

$(eval $(generic-package))
