#!/usr/bin/make -f

ICONS_PATH=$(PREFIX)/icons/
GTK_THEMES_PATH=$(PREFIX)/themes/
PREFIX=/usr/share

%: installtheme

installtheme:
	cp -r themes/Yaru-Cinnamon-Dark $(GTK_THEMES_PATH)
	echo "Done"

	cp -r themes/Yaru-Cinnamon-Light $(GTK_THEMES_PATH)
	echo "Done"

install-gtk:
	cp -r themes/Yaru-Cinnamon-Dark $(GTK_THEMES_PATH)
	echo "Done"

	cp -r themes/Yaru-Cinnamon-Light $(GTK_THEMES_PATH)
	echo "Done"

install-icons:
	cp -r icons/Yaru-Cinnamon $(ICONS_PATH)
	echo "Done"
