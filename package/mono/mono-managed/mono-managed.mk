#############################################################
#
# mono-managed
#
#############################################################

MONO_MANAGED_VERSION = $(MONO_VERSION)
MONO_MANAGED_SITE = $(MONO_SITE)
MONO_MANAGED_SOURCE = $(MONO_SOURCE)
MONO_MANAGED_INSTALL_STAGING = $(MONO_INSTALL_STAGING)
HOST_MONO_MANAGED_CONF_OPT += --enable-static --prefix=$(TARGET_DIR)/usr

$(eval $(host-autotools-package))
