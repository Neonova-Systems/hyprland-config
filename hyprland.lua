-- ░██     ░██                                ░██                              ░██ 
-- ░██     ░██                                ░██                              ░██ 
-- ░██     ░██ ░██    ░██ ░████████  ░██░████ ░██  ░██████   ░████████   ░████████ 
-- ░██████████ ░██    ░██ ░██    ░██ ░███     ░██       ░██  ░██    ░██ ░██    ░██ 
-- ░██     ░██ ░██    ░██ ░██    ░██ ░██      ░██  ░███████  ░██    ░██ ░██    ░██ 
-- ░██     ░██ ░██   ░███ ░███   ░██ ░██      ░██ ░██   ░██  ░██    ░██ ░██   ░███ 
-- ░██     ░██  ░█████░██ ░██░█████  ░██      ░██  ░█████░██ ░██    ░██  ░█████░██ 
--                    ░██ ░██                                                      
--              ░███████  ░██                                                      
-- https://wiki.hypr.land/Configuring/Basics/Variables/
-- https://wiki.hypr.land/Configuring/Basics/Variables/#variable-types
-- https://wiki.hypr.land/Configuring/Start/#require
require("env")
require("general")
require("decoration")
require("animation")
require("input_and_device_inputs")
require("gestures")
require("on_event_and_autostart")
require("renderer")
require("layouts")
require("misc_and_debug")
require("binds_and_cursor")
require("group")

-- Global Variables
FileManager = "nautilus"
Terminal = "foot"
Menu = "hyprland-run"
Launcher = "vicinae"

if not pcall(require, "monitors") then -- nwg-display generated config
else require("monitors") end

if not pcall(require, "workspaces") then -- nwg-display generated config
else require("workspaces") end

if not pcall(require, "./.secret/hidden") then
else require("./.secret/hidden") end

if not pcall(require, "reserved-space") then -- connect StellarisCoreUI
else require("reserved-space") end

require("rules_and_regulation")
require("keybinds")