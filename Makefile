TOP_DIR := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
BIN_DIR = $(TOP_DIR)/bin
CONFIG_DIR = $(TOP_DIR)/config
MODULE_DIR = $(TOP_DIR)/modules
SOURCE_DIR = $(TOP_DIR)/src
TMP_DIR = $(TOP_DIR)/tmp

####################
#      targets     #
####################

# install
INSTALL_TARGETS +=
FISH_INSTALL_TARGETS +=

# clean
CLEAN_TARGETS +=
FISH_CLEAN_TARGETS +=

####################
#      include     #
####################

-include $(SOURCE_DIR)/make/*.mk
-include $(MODULE_DIR)/*/Makefile

####################
#     commands     #
####################

# install
.PHONY: install
install: $(INSTALL_TARGETS)

.PHONY: fish-install
fish-install: $(FISH_INSTALL_TARGETS)

# clean
.PHONY: clean
clean: $(CLEAN_TARGETS)

.PHONY: fish-clean
fish-clean: $(FISH_CLEAN_TARGETS)
