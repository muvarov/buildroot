################################################################################
#
# FIDO device onboarding
#
################################################################################

# FIDO_SITE = $(call github,fedora-iot,fido-device-onboard-rs,$(FIDO_VERSION))
# FIDO_VERSION = d728d874ec540323b9b3b3f5180729be8a97ddb3

FIDO_SITE = $(call github,muvarov,fido-device-onboard-rs,$(FIDO_VERSION))
FIDO_VERSION = ecd5e055e537a4f0d015c84d514491447769195e

FIDO_LICENSE = BSD-3.0
FIDO_LICENSE_FILES = LICENSE
FIDO_DEPENDENCIES += cryptsetup openssl tpm2-tss clang

define FIDO_INSTALL_TARGET_CMDS
        $(INSTALL) -m 755 -t $(TARGET_DIR)/usr/bin/ \
                $(@D)/$(FIDO_DISTDIR)/target/*/release/fdo-client-linuxapp
endef


$(eval $(cargo-package))
