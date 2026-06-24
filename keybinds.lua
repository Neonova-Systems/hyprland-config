-- ░  ░░░░  ░░        ░░  ░░░░  ░░       ░░░        ░░   ░░░  ░░       ░░░░      ░░░░░░░░░░      ░░░        ░░░      ░░░        ░░  ░░░░  ░░       ░░░        ░
-- ▒  ▒▒▒  ▒▒▒  ▒▒▒▒▒▒▒▒▒  ▒▒  ▒▒▒  ▒▒▒▒  ▒▒▒▒▒  ▒▒▒▒▒    ▒▒  ▒▒  ▒▒▒▒  ▒▒  ▒▒▒▒▒▒▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒▒  ▒▒▒▒▒▒▒▒▒▒▒  ▒▒▒▒▒  ▒▒▒▒  ▒▒  ▒▒▒▒  ▒▒  ▒▒▒▒▒▒▒
-- ▓     ▓▓▓▓▓      ▓▓▓▓▓▓    ▓▓▓▓       ▓▓▓▓▓▓  ▓▓▓▓▓  ▓  ▓  ▓▓  ▓▓▓▓  ▓▓▓      ▓▓▓▓▓▓▓▓▓  ▓▓▓   ▓▓      ▓▓▓▓▓      ▓▓▓▓▓▓  ▓▓▓▓▓  ▓▓▓▓  ▓▓       ▓▓▓      ▓▓▓
-- █  ███  ███  ███████████  █████  ████  █████  █████  ██    ██  ████  ████████  ████████  ████  ██  ██████████████  █████  █████  ████  ██  ███  ███  ███████
-- █  ████  ██        █████  █████       ███        ██  ███   ██       ████      ██████████      ███        ███      ██████  ██████      ███  ████  ██        █
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
hl.bind(mainMod .. " + CONTROL + return", hl.dsp.exec_cmd(Terminal))
hl.bind(mainMod .. " + SHIFT + R", hl.dsp.exec_cmd("hyprctl reload"))
hl.bind(mainMod .. " + space", function() 
    hl.dispatch(hl.dsp.window.float({ action = "toggle" }))
    hl.dispatch(hl.dsp.window.center())
end)
hl.bind(mainMod .. " + C", hl.dsp.window.close())
-- hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(mainMod .. " + SHIFT + E", hl.dsp.exit())
hl.bind(mainMod .. " + CONTROL + P", hl.dsp.window.pin({ action = "toggle", window = "activewindow" }))
hl.bind("print", hl.dsp.exec_cmd(zsh .. " \"screenshot\""))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_raw(zsh .. " \"autoload screenshot-area; screenshot-area\""))
hl.bind(mainMod .. " + SHIFT + T", hl.dsp.exec_cmd(zsh .. " \"screen-ocr\""))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.exec_cmd(zsh .. " \"lock-screen\""), { description = "Lock screen" })
hl.bind(mainMod .. " + Insert", hl.dsp.exec_cmd(zsh .. " \"bookmarks-grabber\""))
-- hl.bind(mainMod .. " + SHIFT + P", hl.dsp.exec_cmd("pkill wofi || " .. zsh .. " \"wofi-core\""))
-- hl.bind(mainMod .. " + V", hl.dsp.exec_cmd("pkill wofi || " .. zsh .. " \"autoload wofi-clipboard; wofi-clipboard\""))
-- hl.bind(mainMod .. " + semicolon", hl.dsp.exec_cmd("pkill wofi || " .. zsh .. " \"autoload wofi-unicode; wofi-unicode\""))
hl.bind(mainMod .. " + CONTROL + B", hl.dsp.exec_cmd("~/.config/hypr/scripts/focus-or-launch browser"))
hl.bind(mainMod .. " + CONTROL + E", hl.dsp.exec_cmd("~/.config/hypr/scripts/focus-or-launch editor"))
hl.bind(mainMod .. " + CONTROL + T", hl.dsp.exec_cmd("~/.config/hypr/scripts/focus-or-launch terminal"))
hl.bind(mainMod .. " + Tab", function()
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
hl.bind(mainMod .. " + SHIFT + F", function()
    local ws = hl.get_active_workspace().id
    local windows = hl.get_windows()
    local tiled_count = 0
    local total_count = 0

    -- Count current workspace window states
    for _, win in ipairs(windows) do
        if win.workspace == ws then
            total_count = total_count + 1
            if not win.floating then
                tiled_count = tiled_count + 1
            end
        end
    end

    if total_count == 0 then return end

    -- Target state = toggle based on majority state
    local target_action = (tiled_count > 0) and "enable" or "disable"

    for _, win in ipairs(windows) do
        if win.workspace == ws then
            hl.dispatch(hl.dsp.window.float({ action = target_action, window = "address:" .. win.address }))
        end
    end
end)
hl.bind(mainMod .. " + SHIFT + space", functions.layout_bind({
    master = hl.dsp.layout("orientationnext"),
    scrolling = hl.dsp.layout("fit visible")
}))
hl.bind(mainMod .. " + M", functions.layout_bind({
    master = hl.dsp.layout("swapwithmaster"),
    scrolling = hl.dsp.layout("promote")
}))
hl.bind(mainMod .. " + SHIFT + J", functions.layout_bind({
    master = hl.dsp.layout("swapnext noloop"),
    scrolling = hl.dsp.layout("swapcol l")
}))
hl.bind(mainMod .. " + SHIFT + K", functions.layout_bind({
    master = hl.dsp.layout("swapprev noloop"),
    scrolling = hl.dsp.layout("swapcol r")
}))
hl.bind(mainMod .. " + H", functions.layout_bind({
    master = hl.dsp.layout("mfact -0.05"),
    scrolling = hl.dsp.layout("colrezize -0.5")
}))
hl.bind(mainMod .. " + L", functions.layout_bind({
    master = hl.dsp.layout("mfact +0.05"),
    scrolling = hl.dsp.layout("colrezize +0.5")
}))
hl.bind(mainMod .. " + I ", functions.layout_bind({
    master = hl.dsp.layout("addmaster"),
    scrolling = hl.dsp.layout("consume")
}))
hl.bind(mainMod .. " + D ", functions.layout_bind({
    master = hl.dsp.layout("removemaster"),
    scrolling = hl.dsp.layout("expel")
}))
hl.bind(mainMod .. " + J", functions.layout_bind({
    master = hl.dsp.layout("cyclenext noloop"),
    scrolling = hl.dsp.layout("focus down")
}))
hl.bind(mainMod .. " + K", functions.layout_bind({
    master = hl.dsp.layout("cycleprev noloop"),
    scrolling = hl.dsp.layout("focus up")
}))
hl.bind(mainMod .. " + return", functions.layout_bind({
    master = hl.dsp.layout("focusmaster"),
    scrolling = hl.dsp.layout("fit_into_view")
}))
hl.bind(mainMod .. " + Z", functions.zoom)
hl.bind(mainMod .. " + equal", function() functions.zoom(0.5) end)
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
hl.bind(mainMod .. " + X", function () -- Minimize window using a special workspace as a scratchpad since Hyprland does not have native minimize functionality
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
for i = 1, 9 do
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

-- Submaps bind
hl.bind(mainMod .. " + ALT + M", hl.dsp.submap("mouse-mode"))
hl.bind(mainMod .. " + ALT + mouse:273", hl.dsp.submap("manage-window"))
hl.bind(mainMod .. " + ALT + X", hl.dsp.submap("power"))
hl.bind(mainMod .. " + ALT + R", hl.dsp.submap("resize"))

hl.define_submap("mouse-mode", "reset", function()
    hl.bind("escape", hl.dsp.submap("reset"))
    hl.bind("h", hl.dsp.exec_cmd("~/.config/hypr/scripts/handle-mousecursor -l"))
    hl.bind("j", hl.dsp.exec_cmd("~/.config/hypr/scripts/handle-mousecursor -d"))
    hl.bind("k", hl.dsp.exec_cmd("~/.config/hypr/scripts/handle-mousecursor -u"))
    hl.bind("l", hl.dsp.exec_cmd("~/.config/hypr/scripts/handle-mousecursor -r"))
    hl.bind("catchall", hl.dsp.submap("reset"))
end)

hl.define_submap("manage-window", "reset", function()
    hl.bind("escape", hl.dsp.submap("reset"))
    hl.bind("mouse:272", hl.dsp.window.drag())
    hl.bind("mouse:273", hl.dsp.window.resize())
    hl.bind("mouse:272", hl.dsp.submap("reset"))
    hl.bind("mouse:273", hl.dsp.submap("reset"))
    hl.bind("catchall", hl.dsp.submap("reset"))
end)

hl.define_submap("power", "reset", function()
    hl.bind("s", hl.dsp.exec_cmd("systemctl suspend"), { repeating = true })
    hl.bind("r", hl.dsp.exec_cmd("systemctl reboot"), { repeating = true })
    hl.bind("p", hl.dsp.exec_cmd("systemctl poweroff"), { repeating = true })
    hl.bind("l", hl.dsp.exec_cmd("$zsh \"lock-screen\""), { repeating = true })
    hl.bind("e", hl.dsp.exec_cmd("uwsm stop"), { repeating = true })
    hl.bind("escape", hl.dsp.submap("reset"))
    hl.bind("catchall", hl.dsp.submap("reset"))
end)

hl.define_submap("resize", "reset", function()
    -- hl.bind("h", hl.dsp.window.resize({ amount = "-20 0" }), { repeating = true })
    -- hl.bind("l", hl.dsp.window.resize({ amount = "20 0" }), { repeating = true })
    -- hl.bind("k", hl.dsp.window.resize({ amount = "0 -20" }), { repeating = true })
    -- hl.bind("j", hl.dsp.window.resize({ amount = "0 20" }), { repeating = true })
    hl.bind("escape", hl.dsp.submap("reset"))
    hl.bind("catchall", hl.dsp.submap("reset"))
end)