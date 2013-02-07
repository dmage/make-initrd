GUESS_COMMON_SCRIPTS = $(call wildcard_features,guess/common)

guess-common:
	$V echo "Processing $@ ..."
	@for m in $(GUESS_COMMON_SCRIPTS); do \
	    [ ! -x "$$m" ] || "$$m"; \
	done

guess: guess-common
