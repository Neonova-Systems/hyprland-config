-- https://wiki.hypr.land/Configuring/Start/#require
require("env")
require("general")
require("decoration")
require("animation")

if not pcall(require, "monitors") then -- nwg-display generated config
else require("monitors") end

if not pcall(require, "workspaces") then -- nwg-display generated config
else require("workspaces") end

if not pcall(require, "./.secret/hidden") then
else require("./.secret/hidden") end

if not pcall(require, "reserved-space") then -- connect StellarisCoreUI
else require("reserved-space") end

-- https://wiki.hypr.land/Configuring/Basics/Autostart/
-- hl.exec_cmd() will spawn an asynchronous process, so there is no need for & disown at the end.
-- In the same vein, you can spawn processes on exit by listening to hyprland.shutdown.
-- See more about hl.on over at https://wiki.hypr.land/Configuring/Advanced-and-Cool/Expanding-functionality
hl.on("hyprland.start", function()
    hl.exec_cmd("awww-daemon") -- Start awww-daemon for animated wallpapers
    hl.exec_cmd("vicinae server") -- Start vicinae server for animated wallpapers

    hl.exec_cmd("nm-applet --indicator") -- Start network-manager applet
    hl.exec_cmd("udiskie --appindicator") -- Start automounter for removable media, like usb, thumb drives, mobile phones, digital cameras, etc.
    hl.exec_cmd("gnome-keyring-daemon -rd") -- Start gnome-keyring
    hl.exec_cmd("foot --server") -- Start foot server, this will reduced startup time and reduced memory footprint
    hl.exec_cmd("ags run &> ~/.cache/ags/logs") -- Start ags for on screen display and other utilities
    hl.exec_cmd("~/.config/ags/scripts/on-workspace-ipc") -- Start on workspace ipc script, this will send ipc events to ags for workspace changes, so you can have a workspace indicator in your bar.
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP") -- https://wiki.hyprland.org/FAQ/#some-of-my-apps-take-a-really-long-time-to-open
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1") -- Enable polkit-gnome for run root-application with normal user like gparted.
    hl.exec_cmd("wl-paste --watch clipman store --no-persist") -- Start clipboard manager wayland
    hl.exec_cmd("mpd") -- Start music player daemon, if you use one. Remove if you don't use mpd or replace with your preferred music player daemon. You can also start a separate mpris daemon if your music player doesn't support mpris out of the box, such as mpd-mpris.
end)

hl.config({
    input = {
        kb_model = "",
        kb_layout = "us",
        kb_variant = "",
        kb_options = "caps:escape_shifted_capslock",
        kb_rules = "",
        kb_file = "",
        numlock_by_default = false,
        resolve_binds_by_sym = false,
        repeat_rate = 50,
        repeat_delay = 250,
        sensitivity = 0.0,
        accel_profile = "",
        force_no_accel = false,
        rotation = 0,
        left_handed = false,
        scroll_points = "custom 0.000 0.170 0.340 0.510 0.680 0.915 1.171 1.426 1.682 1.938 2.193 2.449 2.704 3.052 3.440 3.829 4.217 4.605 4.993 5.381 5.770 6.158 6.546 6.934 7.323 7.711 8.099 8.487 8.875 9.264 9.652 10.040 10.428 10.817 11.205 11.593 11.981 12.369 12.758 13.560",
        scroll_method = "",
        scroll_button = 0,
        scroll_button_lock = false,
        scroll_factor = 1.0,
        natural_scroll = false,
        follow_mouse = 1,
        follow_mouse_threshold = 0.0,
        focus_on_close = 0,
        mouse_refocus = true,
        float_switch_override_focus = 2,
        special_fallthrough = false,
        off_window_axis_events = 1,
        emulate_discrete_scroll = 1,

        touchpad = {
            disable_while_typing = true,
            natural_scroll = true,
            scroll_factor = 0.7,
            middle_button_emulation = true,
            tap_button_map = "",
            clickfinger_behavior = false,
            tap_to_click = true,
            tap_and_drag = true,
            drag_lock = 0,
            flip_x = false,
            flip_y = false,
            drag_3fg = 0,
        },

        touchdevice = {
            transform = -1,
            output = "Auto",
            enabled = true,
        },

        virtualkeyboard = {
            share_states = 2,
            release_pressed_on_close = false,
        },
    },

    binds = {
        pass_mouse_when_bound = false,
        scroll_event_delay = 300,
        workspace_back_and_forth = false,
        hide_special_on_workspace_change = false,
        allow_workspace_cycles = false,
        workspace_center_on = 0,
        focus_preferred_method = 0,
        ignore_group_lock = false,
        movefocus_cycles_fullscreen = false,
        movefocus_cycles_groupfirst = false,
        window_direction_monitor_fallback = true,
        disable_keybind_grabbing = false,
        allow_pin_fullscreen = false,
        drag_threshold = 0,
    },

    cursor = {
        invisible = false,
        sync_gsettings_theme = true,
        no_hardware_cursors = 2,
        no_break_fs_vrr = 2,
        min_refresh_rate = 24,
        hotspot_padding = 0,
        inactive_timeout = 333,
        no_warps = false,
        persistent_warps = true,
        warp_on_change_workspace = 0,
        warp_on_toggle_special = 0,
        default_monitor = "",
        zoom_factor = 1.0,
        zoom_rigid = false,
        zoom_detached_camera = true,
        enable_hyprcursor = true,
        hide_on_key_press = true,
        hide_on_touch = true,
        hide_on_tablet = true,
        use_cpu_buffer = 2,
        warp_back_after_non_mouse_input = true,
        zoom_disable_aa = false,
    },

    ecosystem = {
        no_update_news = false,
        no_donation_nag = false,
        enforce_permissions = false,
    },

    dwindle = {
        force_split = 0,
        preserve_split = false,
        smart_split = false,
        smart_resizing = true,
        permanent_direction_override = false,
        special_scale_factor = 1,
        split_width_multiplier = 1.0,
        use_active_for_splits = true,
        default_split_ratio = 1.0,
        split_bias = 0,
        precise_mouse_move = false,
    },

    layout = {
        single_window_aspect_ratio = { 0, 0 },
        single_window_aspect_ratio_tolerance = 0.1,
    },

    misc = {
        disable_hyprland_logo = true,
        disable_splash_rendering = false,
        disable_scale_notification = false,
        col = {
            splash = 0xffffffff,
        },
        font_family = "Rajdhani",
        splash_font_family = "",
        force_default_wallpaper = 0,
        vrr = 0,
        mouse_move_enables_dpms = false,
        key_press_enables_dpms = false,
        name_vk_after_proc = true,
        always_follow_on_dnd = true,
        layers_hog_keyboard_focus = true,
        animate_manual_resizes = false,
        animate_mouse_windowdragging = false,
        disable_autoreload = false,
        enable_swallow = false,
        swallow_regex = "^(foot)$",
        swallow_exception_regex = "",
        focus_on_activate = true,
        mouse_move_focuses_monitor = true,
        allow_session_lock_restore = false,
        session_lock_xray = false,
        background_color = "rgb(111111)",
        close_special_on_empty = true,
        on_focus_under_fullscreen = 2,
        exit_window_retains_fullscreen = false,
        initial_workspace_tracking = 1,
        middle_click_paste = true,
        render_unfocused_fps = 30,
        disable_xdg_env_checks = false,
    },

    opengl = {
        nvidia_anti_flicker = true,
    },

    render = {
        direct_scanout = 2,
        expand_undersized_textures = true,
        xp_mode = false,
        ctm_animation = 2,
        cm_enabled = true,
        send_content_type = true,
        cm_auto_hdr = 1,
        new_render_scheduling = false,
        non_shader_cm = 3,
        cm_sdr_eotf = "default",
        commit_timing_enabled = true,
    },

    quirks = {
        prefer_hdr = 0,
    },

    debug = {
        overlay = false,
        damage_blink = false,
        gl_debugging = false,
        disable_logs = false,
        disable_time = false,
        damage_tracking = 2,
        enable_stdout_logs = false,
        manual_crash = 0,
        suppress_errors = false,
        disable_scale_checks = false,
        error_limit = 5,
        error_position = 0,
        colored_stdout_logs = true,
        pass = false,
        full_cm_proto = false,
    },

    xwayland = {
        enabled = true,
        use_nearest_neighbor = false,
        force_zero_scaling = false,
        create_abstract_socket = false,
    },

    scrolling = {
        fullscreen_on_one_column = true,
        column_width = 0.5,
        focus_fit_method = 1,
        follow_focus = true,
        follow_min_visible = 0.4,
        explicit_column_widths = "0.333, 0.5, 0.667, 1.0",
        wrap_focus = true,
        wrap_swapcol = true,
        direction = "right",
    },

    gestures = {
        workspace_swipe_distance = 300,
        workspace_swipe_touch = false,
        workspace_swipe_invert = true,
        workspace_swipe_touch_invert = false,
        workspace_swipe_min_speed_to_force = 3,
        workspace_swipe_cancel_ratio = 0.33,
        workspace_swipe_create_new = false,
        workspace_swipe_direction_lock = false,
        workspace_swipe_direction_lock_threshold = 18,
        workspace_swipe_forever = false,
        workspace_swipe_use_r = false,
        close_max_timeout = 1000,
    },
})

hl.device({
    name = "royuan-akko-multi-modes-keyboard-b",
    repeat_rate = 50,
    repeat_delay = 500,
    -- middle_button_emulation = 0,
})

hl.device({
    name = "asue1301:00-04f3:3128-touchpad",
    accel_profile = "custom 0.1678286744 0.000 0.040 0.080 0.129 0.189 0.250 0.310 0.370 0.448 0.540 0.631 0.723 0.815 0.906 0.998 1.089 1.181 1.273 1.364 1.456 1.548 1.639 1.731 1.823 2.012",
    scroll_points = "custom 0.1678286744 0.000 0.040 0.080 0.129 0.189 0.250 0.310 0.370 0.448 0.540 0.631 0.723 0.815 0.906 0.998 1.089 1.181 1.273 1.364 1.456 1.548 1.639 1.731 1.823 2.012",
})

-- Launchers, media, and utilities
local zsh = "zsh -ic "
hl.bind("SUPER + SHIFT + R", hl.dsp.force_renderer_reload())
hl.bind("SUPER + SHIFT + L", hl.dsp.exec_cmd(zsh .. " \"lock-screen\""), { description = "Lock screen" })
hl.bind("SUPER + E", hl.dsp.exec_cmd("/usr/bin/nautilus"))
hl.bind("SUPER + P", hl.dsp.exec_cmd("vicinae"))
hl.bind("SUPER + SHIFT + P", hl.dsp.exec_cmd("pkill wofi || " .. zsh .. " \"wofi-core\""))
hl.bind("SUPER + V", hl.dsp.exec_cmd("pkill wofi || " .. zsh .. " \"autoload wofi-clipboard; wofi-clipboard\""))
hl.bind("SUPER + semicolon", hl.dsp.exec_cmd("pkill wofi || " .. zsh .. " \"autoload wofi-unicode; wofi-unicode\""))
hl.bind("SUPER + R", hl.dsp.exec_cmd("hyprctl reload"))
hl.bind("SUPER + CONTROL + return", hl.dsp.exec_cmd("foot"))
hl.bind("SUPER + CONTROL + B", hl.dsp.exec_cmd("~/.config/hypr/scripts/focus-or-launch browser"))
hl.bind("SUPER + CONTROL + E", hl.dsp.exec_cmd("~/.config/hypr/scripts/focus-or-launch editor"))
hl.bind("SUPER + CONTROL + T", hl.dsp.exec_cmd("~/.config/hypr/scripts/focus-or-launch terminal"))
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(zsh .. " \"brightness-handler up\""), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(zsh .. " \"brightness-handler down\""), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating = true })
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"))
hl.bind("SUPER + CONTROL + XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SOURCE@ 5%-"))
hl.bind("SUPER + CONTROL + XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SOURCE@ 5%+"))
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("SUPER + print", hl.dsp.exec_cmd(zsh .. " \"screenshot\""))
hl.bind("SUPER + SHIFT + S", hl.dsp.exec_raw(zsh .. " \"autoload screenshot-area; screenshot-area\""))
hl.bind("SUPER + SHIFT + T", hl.dsp.exec_cmd(zsh .. " \"screen-ocr\""))
hl.bind("SUPER + F10", hl.dsp.pass({ window = "class:^(com\\.obsproject\\.Studio)$" }))
hl.bind("SUPER + Insert", hl.dsp.exec_cmd(zsh .. " \"bookmarks-grabber\""))
hl.bind("SUPER + mouse:273", hl.dsp.exec_cmd("~/.config/hypr/scripts/spawn-resizing-osd"))
hl.bind("SUPER + mouse:273", hl.dsp.window.resize())
hl.bind("SUPER + CONTROL + mouse:273", hl.dsp.exec_cmd("ags run ~/.config/ags/window/context-menu/context-menu.tsx --gtk 4"))
hl.bind("SUPER + mouse_down", hl.dsp.exec_cmd([[hyprctl -q keyword cursor:zoom_factor $(hyprctl getoption cursor:zoom_factor -j | jq '.float * 1.1')]]))
hl.bind("SUPER + mouse_up", hl.dsp.exec_cmd([[hyprctl -q keyword cursor:zoom_factor $(hyprctl getoption cursor:zoom_factor -j | jq '(.float * 0.9) | if . < 1 then 1 else . end')]]))
hl.bind("SUPER + SHIFT + mouse:274", hl.dsp.exec_cmd("hyprctl -q keyword cursor:zoom_factor 1"))

-- Core window and layout controls
hl.bind("SUPER + SHIFT + E", hl.dsp.exit())
hl.bind("SUPER + CONTROL + S", hl.dsp.exec_cmd("uwsm stop"), { description = "Stop session via uwsm" })
hl.bind("SUPER + C", hl.dsp.window.close())
hl.bind("SUPER + F", hl.dsp.window.fullscreen({ action = "toggle", mode = "fullscreen" }))
hl.bind("SUPER + SHIFT + F", hl.dsp.window.float({ action = "toggle" }))
hl.bind("SUPER + mouse:272", hl.dsp.window.drag())
hl.bind("SUPER + CONTROL + P", hl.dsp.window.pin({ action = "toggle", window = "activewindow" }))
hl.bind("SUPER + M", hl.dsp.layout("swapwithmaster"))
hl.bind("SUPER + return", hl.dsp.layout("focusmaster"))
hl.bind("SUPER + i", hl.dsp.layout("addmaster"))
hl.bind("SUPER + d", hl.dsp.layout("removemaster"))
hl.bind("SUPER + SHIFT + space", hl.dsp.layout("orientationnext"))
hl.bind("SUPER + j", hl.dsp.layout("cyclenext noloop"))
hl.bind("SUPER + k", hl.dsp.layout("cycleprev noloop"))
hl.bind("SUPER + SHIFT + j", hl.dsp.layout("swapnext noloop"))
hl.bind("SUPER + SHIFT + k", hl.dsp.layout("swapprev noloop"))
hl.bind("SUPER + H", hl.dsp.layout("mfact -0.05"))
hl.bind("SUPER + L", hl.dsp.layout("mfact +0.05"))

-- Focus, floating, and navigation
hl.bind("SUPER + space", hl.dsp.window.float({ action = "toggle" }))
hl.bind("SUPER + Tab", hl.dsp.window.cycle_next())
hl.bind("SUPER + SHIFT + Tab", hl.dsp.window.cycle_next({ direction = "prev" }))
hl.bind("SUPER + left", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + right", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + up", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + down", hl.dsp.focus({ direction = "down" }))
hl.bind("SUPER + SHIFT + left", hl.dsp.window.swap({ direction = "left" }))
hl.bind("SUPER + SHIFT + right", hl.dsp.window.swap({ direction = "right" }))
hl.bind("SUPER + SHIFT + up", hl.dsp.window.swap({ direction = "up" }))
hl.bind("SUPER + SHIFT + down", hl.dsp.window.swap({ direction = "down" }))
hl.bind("SUPER + grave", hl.dsp.focus({ last = true }))
hl.bind("SUPER + U", hl.dsp.focus({ urgent_or_last = true }))

-- Workspaces
hl.bind("SUPER + SHIFT + mouse_up", hl.dsp.focus({ workspace = "e-1" }))
hl.bind("SUPER + SHIFT + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + 1", hl.dsp.focus({ workspace = "1" }))
hl.bind("SUPER + 2", hl.dsp.focus({ workspace = "2" }))
hl.bind("SUPER + 3", hl.dsp.focus({ workspace = "3" }))
hl.bind("SUPER + 4", hl.dsp.focus({ workspace = "4" }))
hl.bind("SUPER + 5", hl.dsp.focus({ workspace = "5" }))
hl.bind("SUPER + 6", hl.dsp.focus({ workspace = "6" }))
hl.bind("SUPER + 7", hl.dsp.focus({ workspace = "7" }))
hl.bind("SUPER + 8", hl.dsp.focus({ workspace = "8" }))
hl.bind("SUPER + 9", hl.dsp.focus({ workspace = "9" }))
hl.bind("SUPER + CONTROL + 1", hl.dsp.focus({ workspace = "1" }))
hl.bind("SUPER + CONTROL + 2", hl.dsp.focus({ workspace = "2" }))
hl.bind("SUPER + CONTROL + 3", hl.dsp.focus({ workspace = "3" }))
hl.bind("SUPER + CONTROL + 4", hl.dsp.focus({ workspace = "4" }))
hl.bind("SUPER + CONTROL + 5", hl.dsp.focus({ workspace = "5" }))
hl.bind("SUPER + CONTROL + 6", hl.dsp.focus({ workspace = "6" }))
hl.bind("SUPER + CONTROL + 7", hl.dsp.focus({ workspace = "7" }))
hl.bind("SUPER + CONTROL + 8", hl.dsp.focus({ workspace = "8" }))
hl.bind("SUPER + CONTROL + 9", hl.dsp.focus({ workspace = "9" }))
hl.bind("SUPER + 0", hl.dsp.focus({ workspace = "special"}))
hl.bind("SUPER + SHIFT + 1", hl.dsp.window.move({ workspace = "1" }))
hl.bind("SUPER + SHIFT + 2", hl.dsp.window.move({ workspace = "2" }))
hl.bind("SUPER + SHIFT + 3", hl.dsp.window.move({ workspace = "3" }))
hl.bind("SUPER + SHIFT + 4", hl.dsp.window.move({ workspace = "4" }))
hl.bind("SUPER + SHIFT + 5", hl.dsp.window.move({ workspace = "5" }))
hl.bind("SUPER + SHIFT + 6", hl.dsp.window.move({ workspace = "6" }))
hl.bind("SUPER + SHIFT + 7", hl.dsp.window.move({ workspace = "7" }))
hl.bind("SUPER + SHIFT + 8", hl.dsp.window.move({ workspace = "8" }))
hl.bind("SUPER + SHIFT + 9", hl.dsp.window.move({ workspace = "9" }))
hl.bind("SUPER + SHIFT + 0", hl.dsp.window.move({ workspace = "special" }))

-- Monitors
hl.bind("SUPER + Comma", hl.dsp.focus({ monitor = "l" }))
hl.bind("SUPER + Period", hl.dsp.focus({ monitor = "r" }))
hl.bind("SUPER + ALT + Comma", hl.dsp.window.move({ monitor = "l" }))
hl.bind("SUPER + ALT + Period", hl.dsp.window.move({ monitor = "r" }))
hl.bind("SUPER + ALT + left", hl.dsp.workspace.move({ monitor = "l" }))
hl.bind("SUPER + ALT + right", hl.dsp.workspace.move({ monitor = "r" }))
hl.bind("SUPER + ALT + S", hl.dsp.workspace.swap_monitors({ monitor1 = "current", monitor2 = "+1" }))

-- Mouse-mode submap
hl.define_submap("mouse-mode", "reset", function()
    hl.bind("escape", hl.dsp.submap("reset"))
    hl.bind("h", hl.dsp.exec_cmd("~/.config/hypr/scripts/handle-mousecursor -l"))
    hl.bind("j", hl.dsp.exec_cmd("~/.config/hypr/scripts/handle-mousecursor -d"))
    hl.bind("k", hl.dsp.exec_cmd("~/.config/hypr/scripts/handle-mousecursor -u"))
    hl.bind("l", hl.dsp.exec_cmd("~/.config/hypr/scripts/handle-mousecursor -r"))
    hl.bind("catchall", hl.dsp.submap("reset"))
end)

-- Manage-window submap
hl.define_submap("manage-window", "reset", function()
    hl.bind("escape", hl.dsp.submap("reset"))
    hl.bind("mouse:272", hl.dsp.window.drag())
    hl.bind("mouse:273", hl.dsp.window.resize())
    hl.bind("mouse:272", hl.dsp.submap("reset"))
    hl.bind("mouse:273", hl.dsp.submap("reset"))
    hl.bind("catchall", hl.dsp.submap("reset"))
end)

-- Power submap
hl.define_submap("power", "reset", function()
    hl.bind("s", hl.dsp.exec_cmd("systemctl suspend"), { repeating = true })
    hl.bind("r", hl.dsp.exec_cmd("systemctl reboot"), { repeating = true })
    hl.bind("p", hl.dsp.exec_cmd("systemctl poweroff"), { repeating = true })
    hl.bind("l", hl.dsp.exec_cmd("$zsh \"lock-screen\""), { repeating = true })
    hl.bind("e", hl.dsp.exec_cmd("uwsm stop"), { repeating = true })
    hl.bind("escape", hl.dsp.submap("reset"))
    hl.bind("catchall", hl.dsp.submap("reset"))
end)

-- Resize submap
hl.define_submap("resize", "reset", function()
    -- hl.bind("h", hl.dsp.window.resize({ amount = "-20 0" }), { repeating = true })
    -- hl.bind("l", hl.dsp.window.resize({ amount = "20 0" }), { repeating = true })
    -- hl.bind("k", hl.dsp.window.resize({ amount = "0 -20" }), { repeating = true })
    -- hl.bind("j", hl.dsp.window.resize({ amount = "0 20" }), { repeating = true })
    hl.bind("escape", hl.dsp.submap("reset"))
    hl.bind("catchall", hl.dsp.submap("reset"))
end)


hl.gesture({
    fingers = 3,
    direction = "left",
    action = function()
        hl.dispatch(hl.dsp.exec_cmd("kitty"))
    end,
})

require("rules_and_regulation")