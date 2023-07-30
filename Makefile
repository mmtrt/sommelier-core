#!/usr/bin/make -f

install:
	# The sommelier script itself
	install -D -m755 scripts/sommelier "$(DESTDIR)"/bin/sommelier

	# The mesa-utils
	install -D -m755 scripts/glxgears "$(DESTDIR)"/bin/glxgears
	install -D -m755 scripts/glxinfo "$(DESTDIR)"/bin/glxinfo
	install -D -m755 scripts/vkcube "$(DESTDIR)"/bin/vkcube
	install -D -m755 scripts/vulkaninfo "$(DESTDIR)"/bin/vulkaninfo

	# The desktop-launch script itself
	install -D -m755 scripts/desktop-launch "$(DESTDIR)"/bin/desktop-launch

	# Empty directories for mounting content snaps
	install -d "$(DESTDIR)"/graphics
	install -d "$(DESTDIR)"/wine-runtime
	install -d "$(DESTDIR)"/wine-platform

	# cjk languages config
	install -D -m644 config/noto-sans-cjk-jp.reg "$(DESTDIR)"/sommelier/config/noto-sans-cjk-jp.reg
	install -D -m644 config/noto-sans-cjk-kr.reg "$(DESTDIR)"/sommelier/config/noto-sans-cjk-kr.reg
	install -D -m644 config/noto-sans-cjk-tc.reg "$(DESTDIR)"/sommelier/config/noto-sans-cjk-tc.reg
	install -D -m644 config/noto-sans-cjk-hk.reg "$(DESTDIR)"/sommelier/config/noto-sans-cjk-hk.reg
	install -D -m644 config/noto-sans-cjk-sc.reg "$(DESTDIR)"/sommelier/config/noto-sans-cjk-sc.reg

	# hooks
	install -D -m755 scripts/configure "$(DESTDIR)"/meta/hooks/configure
