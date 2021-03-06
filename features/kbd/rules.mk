KBD_MODULES := $(shell $(FEATURESDIR)/kbd/bin/get-modules)
KBD_DIRS    := $(shell $(FEATURESDIR)/kbd/bin/get-data dirs)
KBD_FILES   := $(shell env \
	"KBD_DATA_DIR=$(KBD_DATA_DIR)" \
	"KBD_FONTS_DIR=$(KBD_FONTS_DIR)" \
	"KBD_UNIMAPS_DIR=$(KBD_UNIMAPS_DIR)" \
	"KBD_KEYMAPS_DIR=$(KBD_KEYMAPS_DIR)" \
	$(FEATURESDIR)/kbd/bin/get-data files)

MODULES_ADD += $(KBD_MODULES)

PUT_FEATURE_DIRS  += $(KBD_DATADIR) $(KBD_DIRS)
PUT_FEATURE_FILES += $(KBD_FILES)
PUT_FEATURE_PROGS += $(KBD_UTILITIES)

$(call require,depmod-image)
