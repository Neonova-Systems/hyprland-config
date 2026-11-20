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
require("on_event_and_autostart")
require("config")

-- Global Variables
FileManager = "nautilus"
Terminal = "kitty"
Menu = "hyprland-run"
Launcher = "vicinae"

if not pcall(require, "monitors") then -- nwg-display generated config
else
    require("monitors")
end

if not pcall(require, "workspaces") then -- nwg-display generated config
else
    require("workspaces")
end

if not pcall(require, "./.secret/hidden") then
else
    require("./.secret/hidden")
end

if not pcall(require, "reserved-space") then -- connect StellarisCoreUI
else
    require("reserved-space")
end

require("rules_and_regulation")
require("keybinds")

-- >>> spatial-overview >>>
-- Phantomat: added by its scripts/install.sh; scripts/uninstall.sh removes it.
hl.plugin.load("/home/xaxeric/.local/share/spatial-overview/spatialoverview.so")
dofile("/home/xaxeric/.config/hypr/spatialoverview.lua")
-- <<< spatial-overview <<<
