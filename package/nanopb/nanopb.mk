################################################################################
#
# nanopb
#
################################################################################

NANOPB_VERSION = 50e989482c981631340c07ad57ec4d81dfd6a892
NANOPB_SITE = $(call github,wak-google,nanopb,$(NANOPB_VERSION))
NANOPB_LICENSE = BSD-3c
NANOPB_LICENSE_FILES = LICENSE.txt
NANOPB_INSTALL_STAGING = YES
NANOPB_INSTALL_TARGET = NO
NANOPB_DEPENDENCIES = host-pkgconf
HOST_NANOPB_DEPENDENCIES = host-pkgconf host-protobuf host-python-protobuf
NANOPB_CONF_OPTS = -Dnanopb_BUILD_RUNTIME=ON -Dnanopb_BUILD_GENERATOR=OFF
HOST_NANOPB_CONF_OPTS = -Dnanopb_BUILD_RUNTIME=OFF -Dnanopb_BUILD_GENERATOR=ON

$(eval $(cmake-package))
$(eval $(host-cmake-package))
