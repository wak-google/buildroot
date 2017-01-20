################################################################################
#
# pblog
#
################################################################################

PBLOG_VERSION = ddc6ad1082d50b24602a61771341177ba7bba6e5
PBLOG_SITE = $(call github,wak-google,pblog,$(PBLOG_VERSION))
PBLOG_LICENSE = Apache-2.0
PBLOG_LICENSE_FILES = LICENSE.txt
PBLOG_INSTALL_STAGING = YES
PBLOG_INSTALL_TARGET = NO
PBLOG_DEPENDENCIES = host-pkgconf host-protobuf host-nanopb nanopb

define PBLOG_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) $(TARGET_CONFIGURE_OPTS) \
		-C $(@D) all
endef

define PBLOG_INSTALL_STAGING_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) $(TARGET_CONFIGURE_OPTS) \
		DESTDIR=$(STAGING_DIR) \
		-C $(@D) install
endef

$(eval $(generic-package))
