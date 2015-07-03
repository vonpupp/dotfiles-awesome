#!/bin/sh

ln -sf ~/.config/awesome/rc.stable.lua ~/.config/awesome/rc.lua

echo 'awesome.restart()' | awesome-client
