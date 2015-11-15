#!/bin/sh

# Source:
# https://wiki.archlinux.org/index.php/Xdg-menu#Awesome

xdg_menu --format awesome --root-menu /etc/xdg/menus/arch-applications.menu > ~/.config/awesome/rc/archmenu.lua
