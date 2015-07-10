--local awful = require("awful")
--local wibox = require("wibox")

-- Keyboard map indicator and changer
xkbmap = {}
xkbmap.cmd = "setxkbmap"
xkbmap.layout = {
    -- caption, layout, variant
    { "us",     "us", "" },
    { "us-int", "us", "intl" },
    { "br",     "br", "" },
    { "es",     "es", "" },
    { "fr",     "fr", "" }
}
xkbmap.current = 1  -- us is our default layout
xkbmap.widget = wibox.widget.textbox()
xkbmap.widget:set_text(" " .. xkbmap.layout[xkbmap.current][1] .. " ")
xkbmap.switch = function ()
    local t = xkbmap.layout[xkbmap.current]
    xkbmap.widget:set_text(" " .. t[1] .. " ")
    os.execute( xkbmap.cmd .. " " .. t[2] .. " " .. t[3] )
end

xkbmap.forward_switch = function ()
    xkbmap.current = xkbmap.current % #(xkbmap.layout) + 1
    xkbmap.switch()
end

xkbmap.backward_switch = function ()
    xkbmap.current = xkbmap.current % #(xkbmap.layout) - 1
    xkbmap.switch()
end

 -- Mouse bindings
xkbmap.widget:buttons(
    awful.util.table.join(awful.button({ }, 1, function () xkbmap.forward_switch() end)),
    awful.util.table.join(awful.button({ }, 3, function () xkbmap.backward_switch() end))
)
