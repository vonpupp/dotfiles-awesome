local awful = require("awful")
local beautiful = require("beautiful")
--xdg_menu = require(confdir .. "mods/archmenu.lua")
xdg_menu = dofile("/home/av/.homesick/repos/dotfiles-awesome/home/.config/awesome/mods/archmenu.lua")

mymainmenu = awful.menu({ items = { { "awesome", myawesomemenu, beautiful.awesome_icon },
                                    { "Applications", xdgmenu },
                                    { "open terminal", terminal }
                                  }
                        })
