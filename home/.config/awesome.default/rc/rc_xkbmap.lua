--local awful = require("awful")
--local wibox = require("wibox")

-- Keyboard map indicator and changer
xkbmap = {}
xkbmap.cmd = "setxkbmap"
xkbmap.layout = {
    { "us", "" },
    { "br", "" },
    { "es", "" },
    { "fr", "" }
}
xkbmap.current = 1  -- us is our default layout
xkbmap.widget = wibox.widget.textbox()
xkbmap.widget:set_text(" " .. xkbmap.layout[xkbmap.current][1] .. " ")
xkbmap.switch = function ()
  xkbmap.current = xkbmap.current % #(xkbmap.layout) + 1
  local t = xkbmap.layout[xkbmap.current]
  xkbmap.widget:set_text(" " .. t[1] .. " ")
  os.execute( xkbmap.cmd .. " " .. t[1] .. " " .. t[2] )
end

 -- Mouse bindings
xkbmap.widget:buttons(
 awful.util.table.join(awful.button({ }, 1, function () xkbmap.switch() end))
)
