SHELL := /bin/bash

# Install Guarani (Paraguay) keyboard layout

DESTDIR=debian/guarani-py-keyboard

install-core:
	install -dm775 $(DESTDIR)/usr/share/X11/xkb/
	install -dm775 $(DESTDIR)/usr/share/X11/xkb/symbols/
	install -Dpm 0644 guarani.txt $(DESTDIR)/usr/share/X11/xkb/guarani.txt
	install -Dpm 0644 pyg $(DESTDIR)/usr/share/X11/xkb/symbols/pyg

install: install-core

uninstall:
	rm -f $(DESTDIR)/usr/share/X11/xkb/symbols/pyg
	rm -f $(DESTDIR)/usr/share/X11/xkb/guarani.txt


