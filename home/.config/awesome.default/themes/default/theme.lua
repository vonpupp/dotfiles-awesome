---------------------------
-- Default awesome theme --
---------------------------

theme = {}

theme.font          = "sans 8"

theme.bg_normal     = "#222222"
theme.bg_focus      = "#535d6c"
theme.bg_urgent     = "#ff0000"
theme.bg_minimize   = "#444444"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#aaaaaa"
theme.fg_focus      = "#ffffff"
theme.fg_urgent     = "#ffffff"
theme.fg_minimize   = "#ffffff"

theme.border_width  = 1
theme.border_normal = "#000000"
theme.border_focus  = "#535d6c"
theme.border_marked = "#91231c"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Display the taglist squares
theme.taglist_squares_sel   = active_theme .. "/taglist/squarefw.png"
theme.taglist_squares_unsel = active_theme .. "/taglist/squarew.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = active_theme .. "/submenu.png"
theme.menu_height = 15
theme.menu_width  = 100

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = active_theme .. "/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = active_theme .. "/titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = active_theme .. "/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = active_theme .. "/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = active_theme .. "/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = active_theme .. "/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = active_theme .. "/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = active_theme .. "/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = active_theme .. "/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = active_theme .. "/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = active_theme .. "/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = active_theme .. "/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = active_theme .. "/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = active_theme .. "/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = active_theme .. "/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = active_theme .. "/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = active_theme .. "/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = active_theme .. "/titlebar/maximized_focus_active.png"

theme.wallpaper = active_theme .. "/background.png"

-- You can use your own layout icons like this:
theme.layout_fairh = active_theme .. "/layouts/fairhw.png"
theme.layout_fairv = active_theme .. "/layouts/fairvw.png"
theme.layout_floating  = active_theme .. "/layouts/floatingw.png"
theme.layout_magnifier = active_theme .. "/layouts/magnifierw.png"
theme.layout_max = active_theme .. "/layouts/maxw.png"
theme.layout_fullscreen = active_theme .. "/layouts/fullscreenw.png"
theme.layout_tilebottom = active_theme .. "/layouts/tilebottomw.png"
theme.layout_tileleft   = active_theme .. "/layouts/tileleftw.png"
theme.layout_tile = active_theme .. "/layouts/tilew.png"
theme.layout_tiletop = active_theme .. "/layouts/tiletopw.png"
theme.layout_spiral  = active_theme .. "/layouts/spiralw.png"
theme.layout_dwindle = active_theme .. "/layouts/dwindlew.png"

theme.awesome_icon = "/usr/share/awesome/icons/awesome16.png"

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
