#############################################################
#
# mono
#
#############################################################

MONO_VERSION	= 3.4.0
MONO_SITE	= http://download.mono-project.com/sources/mono/
MONO_SOURCE	= mono-$(MONO_VERSION).tar.bz2
MONO_INSTALL_STAGING = YES

ifeq ($(BR2_PACKAGE_MONO),y)
	include package/mono/*/*.mk
	TARGETS += mono-managed mono-native
endif
