################################################################################
#
# nanopb
#
################################################################################

NANOPB_VERSION = c946b7011a843afce09417a563e49209736de0f0
NANOPB_SITE = $(call github,wak-google,nanopb,$(NANOPB_VERSION))
NANOPB_LICENSE = BSD-3c
NANOPB_LICENSE_FILES = LICENSE.txt
HOST_NANOPB_DEPENDENCIES = host-protobuf host-python-protobuf
NANOPB_CONF_OPTS = -Dnanopb_BUILD_RUNTIME=ON -Dnanopb_BUILD_GENERATOR=OFF
HOST_NANOPB_CONF_OPTS = -Dnanopb_BUILD_RUNTIME=OFF -Dnanopb_BUILD_GENERATOR=ON

$(eval $(cmake-package))
$(eval $(host-cmake-package))
