-- Standard awesome library
gears = require("gears")
awful = require("awful")
awful.rules = require("awful.rules")
require("awful.autofocus")
-- Widget and layout library
wibox = require("wibox")
-- Theme handling library
beautiful = require("beautiful")
-- Notification library
naughty = require("naughty")
menubar = require("menubar")

--awful.key({ modkey            }, "l",
    --    function ()
    --        naughty.notify({text='Modkey+key pressed!'});
    --    end),

--function naugthy_debug(I

-- Path of the rc.lua
function rc_path()
   local str = debug.getinfo(2, "S").source:sub(2)
   return str:match("(.*/)")
end

package.path = package.path .. ";" .. rc_path() .. "rc/?.lua"

require("rc_errors")

-- {{{ Variable definitions
home            = os.getenv("HOME")
bin             = home .. "/bin"
confdir         = rc_path()
scripts         = confdir .. "/scripts/"
themes          = confdir .. "/themes"
language        = string.gsub(os.getenv("LANG"), ".utf8", "")

active_theme    = themes .. "/default"
beautiful.init("/usr/share/awesome/themes/default/theme.lua")

terminal        = os.getenv("TERMINAL") or "urxvt"
editor          = os.getenv("EDITOR") or "vim"
editor_cmd      = terminal .. " -e " .. editor
browser         = "dwb"
mail            = terminal .. " -e mutt "
wifi            = terminal .. " nmtui "
music_player    = terminal .. " -g 130x34-320+16 -e ncmpcpp "

-- Default modkey.
-- Usually, Mod4 is the key with a logo between Control and Alt.
-- If you do not like this or do not have such a key,
-- I suggest you to remap Mod4 to another key using xmodmap or other tools.
-- However, you can use another modifier like Mod1, but it may interact with others.
modkey = "Mod4"
altkey = "Mod1"

-- Menubar configuration
menubar.utils.terminal = terminal -- Set the terminal for applications that require it
-- }}}

-- my rc's
require("rc_xkbmap")
require("rc_redshift")
require("rc_menu")
require("rc_keydoc")
require("rc_videout")

-- default rc's
require("rc_layouts")
require("rc_wallpaper")
require("rc_tags")
require("rc_widgets")
require("rc_mousebindings")
require("rc_keybindings")
require("rc_rules")
require("rc_signals")

