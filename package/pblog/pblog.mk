################################################################################
#
# pblog
#
################################################################################

PBLOG_VERSION = 93b05307000ee3d6b7e4276f1cbb51d71fee4b09
PBLOG_SITE = $(call github,google,pblog,$(PBLOG_VERSION))
PBLOG_LICENSE = Apache-2.0
PBLOG_LICENSE_FILES = LICENSE.txt

PBLOG_DEPENDENCIES = host-protobuf host-nanopb nanopb

define PBLOG_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) $(TARGET_CONFIGURE_OPTS) \
		-C $(@D) all
endef

define PBLOG_INSTALL_STAGING_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) $(TARGET_CONFIGURE_OPTS) \
		DESTDIR=$(STAGING_DIR) \
		-C $(@D) install
endef

define PBLOG_INSTALL_TARGET_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) $(TARGET_CONFIGURE_OPTS) \
		DESTDIR=$(TARGET_DIR) \
		-C $(@D) install
endef

$(eval $(generic-package))
