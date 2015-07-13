local awful = require("awful")
local beautiful = require("beautiful")
local menubar = require("menubar")

terminal = "urxvtc"
editor = os.getenv("EDITOR") or "vim"
editor_cmd = terminal .. " -e " .. editor
home = os.getenv("HOME")
conf_dir = home .. "/.config/awesome"
scriptdir = conf_dir .. "/scripts/"
themes = conf_dir .. "/themes"
active_theme = themes .. "/default"
config_dir = awful.util.getdir("/files")
beautiful.init( active_theme .. "/theme.lua")


-- {{{ Menu
-- Create a laucher widget and a main menu
myawesomemenu = { 
   { "manual", terminal .. " -e man awesome" },
--   { "edit config", terminal" -e "  .. editor .. " " .. conf_dir .. "/rc.lua"  },  
   { "restart", awesome.restart },
   { "quit", awesome.quit }
}

--communicationmenu = { 
--    { "Skype", skype_cmd, beautiful.skype_icon },
--    { "IRC", irc_cmd, beautiful.irc_icon }
--}

downloadmenu = { 
  {"Transmission","transmission-gtk",beautiful.transm_icon},
  {"Filezilla","filezilla",beautiful.filez_icon}
}

mymainmenu = awful.menu({ items = { { "awesome", myawesomemenu, beautiful.awesome_icon },
--                                    { "communicate",communicationmenu, beautiful.comm_icon},
                                    --{ "Debian", debian_menu.Debian, beautiful.debian_icon }, --useless to have a debian menu
                                    { "Download",downloadmenu,beautiful.tunnel_icon},
--                                    { "open terminal", terminal, beautiful.vim_icon },
--                                    { "restart", awesome.restart, beautiful.restart_icon },
                                    { "quit", awesome.quit, beautiful.switch_icon }
                                  }   
                        })  

mylauncher = awful.widget.launcher({ image = beautiful.awesome_icon,
                                     menu = mymainmenu })

-- Menubar configuration
menubar.utils.terminal = terminal -- Set the terminal for applications that require it
-- End Menu}}}

