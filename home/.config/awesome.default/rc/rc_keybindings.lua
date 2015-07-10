--awful.key({ modkey, "Shift" }, "m",
--        function ()
--            naughty.notify({text='key pressed!'});
--        end),

-- {{{ Keybindings
globalkeys = awful.util.table.join(
    -- CUSTOM KEYBINDINGS: modkey + shift
    keydoc.group("Apps Keys Shortcuts"),
    awful.key({ modkey, "Shift" }, "v", function () awful.util.spawn_with_shell(editor_cmd) end,
        "VIM shortcut"),
    awful.key({ modkey, "Shift" }, "g", function () awful.util.spawn(xeditor_cmd) end,
        "GVIM shortcut"),
    awful.key({ modkey, "Shift" }, "p", function () awful.util.spawn(pw_mgr) end,
        "GVIM shortcut"),
    awful.key({ modkey, "Shift" }, "w", function () awful.util.spawn_with_shell(wifi) end,
        "Wifi manager (nm) shortcut"),
    awful.key({ modkey, "Shift" }, "f", function () awful.util.spawn(browser) end,
        "firefox shortcut"),
    awful.key({ modkey, "Shift" }, "m", function () awful.util.spawn_with_shell(mail_cmd) end,
        "mutt shortcut"),
    awful.key({ modkey, "Shift" }, "n", function () awful.util.spawn_with_shell(music_cmd) end,
        "ncmpcpp shortcut"),
    awful.key({ modkey, "Shift" }, "e", function () awful.util.spawn_with_shell(chat_cmd) end,
        "weechat shortcut"),
    awful.key({ modkey, "Shift" }, "a", function () awful.util.spawn_with_shell(mixer_cmd) end,
        "mixer shortcut"),
    awful.key({ modkey, "Shift" }, "t", function () awful.util.spawn_with_shell(processes_cmd) end,
        "htop shortcut"),

    awful.key({ modkey, "Shift" }, "s", redshift.toggle,
        "Redshift toggle"),
    awful.key({ altkey }, "Shift_R", function () xkbmap.forward_switch() end,
        "Keyboard layout toggle"),
    --awful.key({ altkey }, "Shift_L", function () xkbmap.backward_switch() end,
    --    "Keyboard layout toggle"),

    -- Screen locking
    awful.key({ modkey, "Shift" }, "l", function () awful.util.spawn(bin .. "/start-locker.sh") end,
        "Lock session with i3loock"),
    awful.key({ modkey, "Shift" }, "F3", function () awful.util.spawn(bin .. "/start-locker.sh") end),
    awful.key({ modkey, "Control" }, "l", function () awful.util.spawn("xscreensaver-command -lock") end,
        "Lock session with screensaver"),

    -- print screen: using scrot
    awful.key({ }, "Print", function () awful.util.spawn("scrot -e 'mv $f ~/screenshots/ 2>/dev/null'") end),

    -- xrandr
    awful.key({},                    "XF86Display", xrandr, "Xrandr output cycle"),

    -- {{ MPD control
    awful.key({ modkey }, "F11", function () awful.util.spawn_with_shell("mpc toggle") end, "music play/pause"),
    awful.key({ modkey }, "F10", function () awful.util.spawn_with_shell("mpc prev")   end, "music prev"),
    awful.key({ modkey }, "F12", function () awful.util.spawn_with_shell("mpc next")   end, "music next"),

    awful.key({}, "XF86AudioPlay", function () awful.util.spawn_with_shell("mpc toggle") end),
    awful.key({}, "XF86AudioPrev", function () awful.util.spawn_with_shell("mpc prev")   end),
    awful.key({}, "XF86AudioNext", function () awful.util.spawn_with_shell("mpc next")   end),
    -- }}

    -- DEFAULT KEYBINDINGS
    keydoc.group("Global Keys"),
    awful.key({ modkey,           }, "Left",   awful.tag.viewprev,
        "Previous Tag"),
    awful.key({ modkey,           }, "Right",  awful.tag.viewnext,
        "Next tag"),
    awful.key({ modkey,           }, "Escape", awful.tag.history.restore,
        "Clear Choice"),
    awful.key({ modkey,           }, "F1",     keydoc.display,
        "Display Keymap Menu"),

    awful.key({ modkey,           }, "j",
        function ()
            awful.client.focus.byidx( 1)
            if client.focus then client.focus:raise() end
        end,"Raise focus"),
    awful.key({ modkey,           }, "k",
        function ()
            awful.client.focus.byidx(-1)
            if client.focus then client.focus:raise() end
        end,"Lower focus"),
    awful.key({ modkey,           }, "w", function () mymainmenu:show({keygrabber=true}) end,"Show menu"),

    -- Layout manipulation
    keydoc.group("Layout manipulation"),
    awful.key({ modkey, "Shift"   }, "j", function () awful.client.swap.byidx(  1)    end,
        "Swap with next window"),
    awful.key({ modkey, "Shift"   }, "k", function () awful.client.swap.byidx( -1)    end,
        "Swap with previous window "),
    awful.key({ modkey, "Control" }, "j", function () awful.screen.focus_relative( 1) end,
        "Swap with next screen" ),
    awful.key({ modkey, "Control" }, "k", function () awful.screen.focus_relative(-1) end,
        "Swap with previous screen"),
    awful.key({ modkey,           }, "u", awful.client.urgent.jumpto,
        "Jump to window "),
    awful.key({ modkey,           }, "Tab",
        function ()
            awful.client.focus.history.previous()
            if client.focus then
                client.focus:raise()
            end
        end,
        "Cycle windows or windows style"),

    -- Standard program
    keydoc.group("Standard Programs"),
    awful.key({ modkey,           }, "Return", function () awful.util.spawn(terminal) end,
        "Open terminal"),
    awful.key({ modkey, "Control" }, "r", awesome.restart,
        "Restart awesome"),
    awful.key({ modkey, "Shift"   }, "q", awesome.quit,
        "Quit awesome"),

    awful.key({ modkey,           }, "l",     function () awful.tag.incmwfact( 0.05)    end,
        "Increase window size"),
    awful.key({ modkey,           }, "h",     function () awful.tag.incmwfact(-0.05)    end,
        "Decrease window size"),
    awful.key({ modkey, "Shift"   }, "h",     function () awful.tag.incnmaster( 1)      end,
        "Increase master"),
    awful.key({ modkey, "Shift"   }, "l",     function () awful.tag.incnmaster(-1)      end,
        "Decrease master"),
    awful.key({ modkey, "Control" }, "h",     function () awful.tag.incncol( 1)         end,
        "Increase column"),
    awful.key({ modkey, "Control" }, "l",     function () awful.tag.incncol(-1)         end,
        "Decrease column"),
    awful.key({ modkey,           }, "space", function () awful.layout.inc(layouts,  1) end,
        "Cycle layout style forward"),
    awful.key({ modkey, "Shift"   }, "space", function () awful.layout.inc(layouts, -1) end,
        "Cycle layout style reverse"),

    awful.key({ modkey, "Control" }, "n", awful.client.restore,
        "Client restore"),

    -- Prompt
    awful.key({ modkey },            "r",     function () mypromptbox[mouse.screen]:run() end,
        "Run command"),

    awful.key({ modkey }, "x",
              function ()
                  awful.prompt.run({ prompt = "Run Lua code: " },
                  mypromptbox[mouse.screen].widget,
                  awful.util.eval, nil,
                  awful.util.getdir("cache") .. "/history_eval")
              end,"Run lua command")
)

clientkeys = awful.util.table.join(
    keydoc.group("Window management"),
    awful.key({ modkey,           }, "f",      function (c) c.fullscreen = not c.fullscreen  end,
        "Toggle fullscreen"),
    awful.key({ modkey, "Shift"   }, "c",      function (c) c:kill()                         end,
        "Kill window"),
    awful.key({ modkey, "Control" }, "space",  awful.client.floating.toggle,
        "Toggle floating"),
    awful.key({ modkey, "Control" }, "Return", function (c) c:swap(awful.client.getmaster()) end,
        "Swap to master"),
    awful.key({ modkey,           }, "o",      awful.client.movetoscreen,
        "Move to screen" ),
    --awful.key({ modkey, "Shift"   }, "r",      function (c) c:redraw() end,"redraw window"),
    awful.key({ modkey,           }, "t",      function (c) c.ontop = not c.ontop            end,
        "On top window"),
    awful.key({ modkey,           }, "n",
        function (c)
            -- The client currently has the input focus, so it cannot be
            -- minimized, since minimized clients can't have the focus.
            c.minimized = true
        end,
        "Minimize window"),
    awful.key({ modkey,           }, "m",
        function (c)
            c.maximized_horizontal = not c.maximized_horizontal
            c.maximized_vertical   = not c.maximized_vertical
        end,
        "Maximize window")
)

-- Bind all key numbers to tags.
-- Be careful: we use keycodes to make it works on any keyboard layout.
-- This should map on the top row of your keyboard, usually 1 to 9.
for i = 1, 9 do
    globalkeys = awful.util.table.join(globalkeys,
        -- View tag only.
        awful.key({ modkey }, "#" .. i + 9,
                  function ()
                        local screen = mouse.screen
                        local tag = awful.tag.gettags(screen)[i]
                        if tag then
                           awful.tag.viewonly(tag)
                        end
                  end),
        -- Toggle tag.
        awful.key({ modkey, "Control" }, "#" .. i + 9,
                  function ()
                      local screen = mouse.screen
                      local tag = awful.tag.gettags(screen)[i]
                      if tag then
                         awful.tag.viewtoggle(tag)
                      end
                  end),
        -- Move client to tag.
        awful.key({ modkey, "Shift" }, "#" .. i + 9,
                  function ()
                      if client.focus then
                          local tag = awful.tag.gettags(client.focus.screen)[i]
                          if tag then
                              awful.client.movetotag(tag)
                          end
                     end
                  end),
        -- Toggle tag.
        awful.key({ modkey, "Control", "Shift" }, "#" .. i + 9,
                  function ()
                      if client.focus then
                          local tag = awful.tag.gettags(client.focus.screen)[i]
                          if tag then
                              awful.client.toggletag(tag)
                          end
                      end
                  end))
end

clientbuttons = awful.util.table.join(
    awful.button({ }, 1, function (c) client.focus = c; c:raise() end),
    awful.button({ modkey }, 1, awful.mouse.client.move),
    awful.button({ modkey }, 3, awful.mouse.client.resize))

-- Set keys
root.keys(globalkeys)
-- }}}
