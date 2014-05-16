#############################################################
#
# mono
#
#############################################################

MONO_VERSION	= 3.4.0
MONO_SITE	= http://download.mono-project.com/sources/mono/
MONO_SOURCE	= mono-$(MONO_VERSION).tar.bz2
MONO_INSTALL_STAGING = YES

MONO_CONF_OPT = \
	--program-prefix="" \
	--disable-gtk-doc \
	--enable-static \
	--enable-shared \
	--with-tls=pthread \
	--with-sigaltstack=no \
	--with-mcs-docs=no 

ifeq ($(BR2_PACKAGE_MONO),y)
	include package/mono/*/*.mk
	TARGETS += mono-managed mono-native
endif
