#!/usr/bin/make -f

ICONS_PATH=$(PREFIX)/icons/
GTK_THEMES_PATH=$(PREFIX)/themes/
PREFIX=/usr/share

%:
	echo "Redirecting to task install"
  install

install:
	echo "Installing GTK Themes. Root may be required."

	echo "Installing GTK Themes - Dark Themes"
  cp -r themes/Yaru-Cinnamon-Dark $(GTK_THEMES_PATH)
	echo "Done"

	echo "Installing GTK Themes - Light Themes"
  cp -r themes/Yaru-Cinnamon-Light $(GTK_THEMES_PATH)
	echo "Done"

install-gtk:
	echo "Installing GTK Themes. Root may be required."

	echo "Installing GTK Themes - Dark Themes"
 	cp -r themes/Yaru-Cinnamon-Dark $(GTK_THEMES_PATH)
	echo "Done"

	echo "Installing GTK Themes - Light Themes"
	cp -r themes/Yaru-Cinnamon-Light $(GTK_THEMES_PATH)
	echo "Done"

install-icons:
	echo "Installing Icon Theme. Root may be required."

	cp -r icons/Yaru-Cinnamon $(ICONS_PATH)
	echo "Done"

local:
	PREFIX=~/.local/share
	install

local-gtk:
	PREFIX=~/.local/share
	install-gtk

local-icons:
	PREFIX=~/.local/share
	install-icons
