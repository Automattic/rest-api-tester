
THIS_MAKEFILE_PATH:=$(word $(words $(MAKEFILE_LIST)),$(MAKEFILE_LIST))
THIS_DIR:=$(shell cd $(dir $(THIS_MAKEFILE_PATH));pwd)

# Dirs
CURL_DIR=$(THIS_DIR)/curl

# applications
CAT ?= cat

build:
	@$(CAT) $(CURL_DIR)/config $(CURL_DIR)/source > $(CURL_DIR)/Makefile
