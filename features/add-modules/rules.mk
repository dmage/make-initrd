$(call require,depmod-image)

put-modules: create
	@$(MSG) "Putting modules ..."
	@$(FEATURESDIR)/add-modules/bin/put-modules

depmod-image: put-modules
