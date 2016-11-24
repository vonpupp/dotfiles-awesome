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
foggy = require('foggy')
-- obvious = require('obvious')

--function naugthy_debug(I

-- Path of the rc.lua
function rc_path()
   local str = debug.getinfo(2, "S").source:sub(2)
   return str:match("(.*/)")
end

package.path = package.path .. ";" .. rc_path() .. "rc/?.lua"

require("rc_errors")

-- {{{ Variable definitions
home_dir        = os.getenv("HOME") .. "/"
bin_dir         = home_dir .. "bin/"
conf_dir        = rc_path()
scripts_dir     = bin_dir .. "awesomewm-scripts/"
themes_dir      = conf_dir .. "themes/"
language        = string.gsub(os.getenv("LANG"), ".utf8", "")

active_theme    = themes_dir .. "greenish/"
beautiful.init(active_theme .. "theme.lua")

terminal        = os.getenv("TERMINAL") or "urxvt"
editor          = os.getenv("EDITOR") or "vim"
xeditor         = os.getenv("XEDITOR") or "gvim"
pw_mgr          = os.getenv("PW_MGR") or "keepassx"
editor_cmd      = terminal .. " -e " .. editor
--browser         = "dwb"
browser         = "firefox"
file_manager    = "spacefm"
mail_cmd        = terminal .. " -e mutt "
wifi_cmd        = terminal .. " -e nmtui "
music_cmd       = terminal .. " -g 130x34-320+16 -e ncmpcpp "
--music_cmd       = terminal .. " -e ncmpcpp"
chat_cmd        = terminal .. " -e weechat-curses"
mixer_cmd       = terminal .. " -e alsamixer"
processes_cmd   = terminal .. " -e htop"
bg_change_cmd   = "feh --bg-scale -z ~/Pictures/wallpapers"

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
require("rc_autostart")
--require("rc_conky")
require("rc_volumetext")
--require("rc_acpitext")
-- require("obvious.battery")

-- default rc's
require("rc_layouts")
require("rc_wallpaper")
require("rc_tags")
require("rc_widgets")
require("rc_mousebindings")
require("rc_keybindings")
require("rc_rules")
require("rc_signals")

-- libs
--require("obvious.battery")
--require("obvious.net")
