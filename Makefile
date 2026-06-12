#!/usr/bin/make -f

install:
	# The sommelier script itself
	install -D -m755 scripts/sommelier "$(DESTDIR)"/bin/sommelier

	# The yad script itself
	install -D -m755 scripts/yad "$(DESTDIR)"/bin/yad

	# Empty directories for mounting content snaps
	install -d "$(DESTDIR)"/wine-runtime
	install -d "$(DESTDIR)"/wine-platform
