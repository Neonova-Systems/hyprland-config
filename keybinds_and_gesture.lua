-- https://wiki.hypr.land/Configuring/Basics/Binds/
-- https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/
local functions = require("functions")

---------------------
---- KEYBINDINGS ----
---------------------
local mainMod = "SUPER" -- Sets "Windows" key as main modifier
local zsh = "zsh -ic "
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(FileManager))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(Menu))
hl.bind(mainMod .. " + P", hl.dsp.exec_cmd(Launcher))
hl.bind(mainMod .. " + SHIFT + R", hl.dsp.exec_cmd("hyprctl reload"))
hl.bind(mainMod .. " + space", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + CONTROL + return", hl.dsp.exec_cmd(Terminal))
hl.bind(mainMod .. " + C", hl.dsp.window.close())
-- hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(mainMod .. " + SHIFT + E", hl.dsp.exit())
hl.bind(mainMod .. " + CONTROL + P", hl.dsp.window.pin({ action = "toggle", window = "activewindow" }))
hl.bind(mainMod .. " + print", hl.dsp.exec_cmd(zsh .. " \"screenshot\""))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_raw(zsh .. " \"autoload screenshot-area; screenshot-area\""))
hl.bind(mainMod .. " + SHIFT + T", hl.dsp.exec_cmd(zsh .. " \"screen-ocr\""))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.exec_cmd(zsh .. " \"lock-screen\""), { description = "Lock screen" })
hl.bind(mainMod .. " + Insert", hl.dsp.exec_cmd(zsh .. " \"bookmarks-grabber\""))
-- hl.bind("SUPER + SHIFT + P", hl.dsp.exec_cmd("pkill wofi || " .. zsh .. " \"wofi-core\""))
-- hl.bind("SUPER + V", hl.dsp.exec_cmd("pkill wofi || " .. zsh .. " \"autoload wofi-clipboard; wofi-clipboard\""))
-- hl.bind("SUPER + semicolon", hl.dsp.exec_cmd("pkill wofi || " .. zsh .. " \"autoload wofi-unicode; wofi-unicode\""))
hl.bind(mainMod .. " + CONTROL + B", hl.dsp.exec_cmd("~/.config/hypr/scripts/focus-or-launch browser"))
hl.bind(mainMod .. " + CONTROL + E", hl.dsp.exec_cmd("~/.config/hypr/scripts/focus-or-launch editor"))
hl.bind(mainMod .. " + CONTROL + T", hl.dsp.exec_cmd("~/.config/hypr/scripts/focus-or-launch terminal"))
hl.bind(mainMod .." + Tab", function()
    hl.dispatch(hl.dsp.window.cycle_next())   -- Change focus to another window
    hl.dispatch(hl.dsp.window.bring_to_top()) -- Bring it to the top
end)
hl.bind(mainMod .. " + SHIFT + Tab", function()
    hl.dispatch(hl.dsp.window.cycle_next({ direction = "prev"}))
    hl.dispatch(hl.dsp.window.bring_to_top())
end)
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))
hl.bind(mainMod .. " + SHIFT + left", hl.dsp.window.swap({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + right", hl.dsp.window.swap({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + up", hl.dsp.window.swap({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + down", hl.dsp.window.swap({ direction = "down" }))
hl.bind(mainMod .. " + grave", hl.dsp.focus({ last = true }))
hl.bind(mainMod .. " + U", hl.dsp.focus({ urgent_or_last = true }))
hl.bind(mainMod .. " + CONTROL + S", hl.dsp.exec_cmd("uwsm stop"), { description = "Stop session via uwsm" })
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen({ action = "toggle", mode = "fullscreen" }))
hl.bind(mainMod .. " + M", hl.dsp.layout("swapwithmaster"))
hl.bind(mainMod .. " + return", hl.dsp.layout("focusmaster"))
hl.bind(mainMod .. " + i", hl.dsp.layout("addmaster"))
hl.bind(mainMod .. " + d", hl.dsp.layout("removemaster"))
hl.bind(mainMod .. " + SHIFT + space", hl.dsp.layout("orientationnext"))
hl.bind(mainMod .. " + j", hl.dsp.layout("cyclenext noloop"))
hl.bind(mainMod .. " + k", hl.dsp.layout("cycleprev noloop"))
hl.bind(mainMod .. " + SHIFT + j", hl.dsp.layout("swapnext noloop"))
hl.bind(mainMod .. " + SHIFT + k", hl.dsp.layout("swapprev noloop"))
hl.bind(mainMod .. " + H", hl.dsp.layout("mfact -0.05"))
hl.bind(mainMod .. " + L", hl.dsp.layout("mfact +0.05"))
hl.bind(mainMod .. " + Z", functions.zoom)
hl.bind(mainMod .. " + KP_ADD", function() functions.zoom(0.5) end)
hl.bind(mainMod .. " + minus", function() functions.zoom(-0.5) end)
hl.bind(mainMod .." + F1", function () -- Hotkey to toggle "game mode" which disables animations, gaps and window decorations for a more immersive gaming experience. It does this by checking if animations are currently disabled and if so it reloads the config to restore everything, otherwise it applies the "game mode" settings.
    local game_mode = (hl.get_config("animations.enabled") == false)
    if game_mode then
        hl.exec_cmd("hyprctl reload")
        return
    end
    hl.config({
        general = {
            gaps_in = 0, gaps_out = 0, -- Disable gaps  
            border_size = 0,
        },

        animations = {
            enabled = false, -- Disable animations
        },
        
        -- Disable blur, shadow and window rounding
        decoration = {
            shadow = { enabled = false },
            blur = { enabled = false },
            rounding = 0,
        }
    })
end)
hl.bind("SUPER + X", function () -- Minimize window using a special workspace as a scratchpad since Hyprland does not have native minimize functionality
    hl.dispatch(hl.dsp.workspace.toggle_special("minimize"))
    hl.dispatch(hl.dsp.window.move({workspace = "+0"}))
    hl.dispatch(hl.dsp.workspace.toggle_special("minimize"))
    hl.dispatch(hl.dsp.window.move({workspace = "special:minimize"}))
    hl.dispatch(hl.dsp.workspace.toggle_special("minimize"))
end)

-- Mouse Binds
hl.bind(mainMod .. " + CONTROL + mouse:273", hl.dsp.exec_cmd("ags run ~/.config/ags/window/context-menu/context-menu.tsx --gtk 4"))
hl.bind(mainMod .. " + mouse:273", hl.dsp.exec_cmd("~/.config/hypr/scripts/spawn-resizing-osd"))
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize())
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag())
hl.bind(mainMod .. " + SHIFT + mouse:274", hl.dsp.exec_cmd("hyprctl -q keyword cursor:zoom_factor 1"))

-- Mouse Wheel Binds
hl.bind(mainMod .. " + SHIFT + mouse_up", hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mainMod .. " + SHIFT + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
-- hl.bind(mainMod .. " + mouse_down", hl.dsp.exec_cmd([[hyprctl -q keyword cursor:zoom_factor $(hyprctl getoption cursor:zoom_factor -j | jq '.float * 1.1')]]))
-- hl.bind(mainMod .. " + mouse_up", hl.dsp.exec_cmd([[hyprctl -q keyword cursor:zoom_factor $(hyprctl getoption cursor:zoom_factor -j | jq '(.float * 0.9) | if . < 1 then 1 else . end')]]))
hl.bind(mainMod .. " + mouse_up", function()
    local current_layout = hl.get_active_workspace().tiled_layout
    if current_layout == "scrolling" then
        hl.dispatch(hl.dsp.layout("move +col"))
    else
        hl.dispatch(hl.dsp.window.cycle_next())
        hl.dispatch(hl.dsp.window.bring_to_top())
    end
end)
hl.bind(mainMod .. " + mouse_down", function()
    local current_layout = hl.get_active_workspace().tiled_layout
    if current_layout == "scrolling" then
        hl.dispatch(hl.dsp.layout("move -col"))
    else
        hl.dispatch(hl.dsp.window.cycle_next({ direction = "prev"}))
        hl.dispatch(hl.dsp.window.bring_to_top())
    end
end)

-- Media Control Keys
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(zsh .. " \"brightness-handler up\""), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(zsh .. " \"brightness-handler down\""), { locked = true, repeating = true })
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"), { repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { repeating = true })
hl.bind(mainMod .. " + XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SOURCE@ 5%-"), { repeating = true })
hl.bind(mainMod .. " + XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SOURCE@ 5%+"), { repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind(mainMod .. " + XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { long_press = true }) -- Skip player on long press and only skip 5s on normal press
hl.bind(mainMod .. " + XF86AudioNext", hl.dsp.exec_cmd("playerctl position +5"))
hl.bind(mainMod .. " + XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { long_press = true })
hl.bind(mainMod .. " + XF86AudioPrev", hl.dsp.exec_cmd("playerctl position -5"))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end
hl.bind(mainMod .. " + 0", hl.dsp.workspace.toggle_special())
hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = "special" }))

-- Monitors Binds
hl.bind(mainMod .. " + Comma", hl.dsp.focus({ monitor = "l" }))
hl.bind(mainMod .. " + Period", hl.dsp.focus({ monitor = "r" }))
hl.bind(mainMod .. " + ALT + Comma", hl.dsp.window.move({ monitor = "l" }))
hl.bind(mainMod .. " + ALT + Period", hl.dsp.window.move({ monitor = "r" }))
hl.bind(mainMod .. " + ALT + left", hl.dsp.workspace.move({ monitor = "l" }))
hl.bind(mainMod .. " + ALT + right", hl.dsp.workspace.move({ monitor = "r" }))
hl.bind(mainMod .. " + ALT + S", hl.dsp.workspace.swap_monitors({ monitor1 = "current", monitor2 = "+1" }))