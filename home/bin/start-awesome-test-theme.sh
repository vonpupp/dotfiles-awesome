#!/bin/sh

ln -sf ~/.config/awesome/rc.test.lua ~/.config/awesome/rc.lua

echo 'awesome.restart()' | awesome-client
