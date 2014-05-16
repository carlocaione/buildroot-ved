#############################################################
#
# mono-native
#
#############################################################

MONO_NATIVE_VERSION 	= $(MONO_VERSION)
MONO_NATIVE_SITE 	= $(MONO_SITE)
MONO_NATIVE_SOURCE 	= $(MONO_SOURCE)
MONO_NATIVE_INSTALL_STAGING	= $(MONO_INSTALL_STAGING)

#MONO_NATIVE_DEPENDENCIES = mono

# Disable managed code (mcs folder) from building
MONO_NATIVE_CONF_OPT = \
	$(MONO_CONF_OPT) \
	--disable-mcs-build

$(eval $(autotools-package))
