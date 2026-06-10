-- https://wiki.hypr.land/Configuring/Start/#require
require("env")
require("general")
require("decoration")

hl.on("hyprland.start", function()
    hl.exec_cmd([=[sh -lc '[[ -f ~/.config/hypr/.secret/hidden.conf ]] || { mkdir -p ~/.config/hypr/.secret && touch ~/.config/hypr/.secret/hidden.conf; }']=])
end)

hl.config({
    animations = {
        enabled = true,
        workspace_wraparound = false,
    },

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

hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } })
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1 } } })
hl.curve("quick", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } })
hl.curve("easy", { type = "spring", mass = 1, stiffness = 71.2633, dampening = 15.8273644 })

hl.animation({ leaf = "global", enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "border", enabled = true, speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows", enabled = true, speed = 4.79, spring = "easy" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.1, spring = "easy", style = "popin 87%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.49, bezier = "linear", style = "popin 87%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade", enabled = true, speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers", enabled = true, speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 4, bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.5, bezier = "linear", style = "fade" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 1.21, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "zoomFactor", enabled = true, speed = 7, bezier = "quick" })

hl.monitor({ output = "eDP-1", mode = "1920x1080@60.01", position = "0x0", scale = 1.0 })
hl.monitor({ output = "HDMI-A-1", mode = "1920x1080@60.0", position = "1920x0", scale = 1.5, mirror = "eDP-1" })

hl.workspace_rule({ workspace = "2", monitor = "eDP-1", default = true })
hl.workspace_rule({ workspace = "1", monitor = "HDMI-A-1", default = true })
hl.workspace_rule({ workspace = "3", monitor = "eDP-1" })
hl.workspace_rule({ workspace = "4", monitor = "eDP-1" })
hl.workspace_rule({ workspace = "5", monitor = "eDP-1" })
hl.workspace_rule({ workspace = "6", monitor = "eDP-1" })
hl.workspace_rule({ workspace = "7", monitor = "eDP-1" })
hl.workspace_rule({ workspace = "8", monitor = "eDP-1" })
hl.workspace_rule({ workspace = "9", monitor = "eDP-1" })

hl.device({
    name = "royuan-akko-multi-modes-keyboard-b",
    repeat_rate = 50,
    repeat_delay = 500,
    middle_button_emulation = 0,
})

hl.device({
    name = "asue1301:00-04f3:3128-touchpad",
    accel_profile = "custom 0.1678286744 0.000 0.040 0.080 0.129 0.189 0.250 0.310 0.370 0.448 0.540 0.631 0.723 0.815 0.906 0.998 1.089 1.181 1.273 1.364 1.456 1.548 1.639 1.731 1.823 2.012",
    scroll_points = "custom 0.1678286744 0.000 0.040 0.080 0.129 0.189 0.250 0.310 0.370 0.448 0.540 0.631 0.723 0.815 0.906 0.998 1.089 1.181 1.273 1.364 1.456 1.548 1.639 1.731 1.823 2.012",
})

-- Launchers, media, and utilities
hl.bind("SUPERSHIFT + R", hl.dsp.force_renderer_reload())
hl.bind("SUPERSHIFT + L", hl.dsp.exec_cmd("$zsh \"lock-screen\""), { description = "Lock screen" })
hl.bind("SUPER + E", hl.dsp.exec_cmd("/usr/bin/nautilus"))
hl.bind("SUPER + P", hl.dsp.exec_cmd("vicinae"))
hl.bind("SUPERSHIFT + P", hl.dsp.exec_cmd("pkill wofi || $zsh \"wofi-core\""))
hl.bind("SUPER + V", hl.dsp.exec_cmd("pkill wofi || $zsh \"autoload wofi-clipboard; wofi-clipboard\""))
hl.bind("SUPER + semicolon", hl.dsp.exec_cmd("pkill wofi || $zsh \"autoload wofi-unicode; wofi-unicode\""))
hl.bind("SUPER + R", hl.dsp.exec_cmd("hyprctl reload"))
hl.bind("SUPERCONTROL + return", hl.dsp.exec_cmd("foot"))
hl.bind("SUPERCONTROL + B", hl.dsp.exec_cmd("~/.config/hypr/scripts/focus-or-launch browser"))
hl.bind("SUPERCONTROL + E", hl.dsp.exec_cmd("~/.config/hypr/scripts/focus-or-launch editor"))
hl.bind("SUPERCONTROL + T", hl.dsp.exec_cmd("~/.config/hypr/scripts/focus-or-launch terminal"))
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("$zsh \"brightness-handler up\""), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("$zsh \"brightness-handler down\""), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true, repeating = true })
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"))
hl.bind("SUPERCONTROL + XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SOURCE@ 5%-"))
hl.bind("SUPERCONTROL + XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SOURCE@ 5%+"))
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("SUPER + print", hl.dsp.exec_cmd("$zsh \"screenshot\""))
hl.bind("SUPERSHIFT + S", hl.dsp.exec_cmd("$zsh \"autoload screenshot-area; screenshot-area\""))
hl.bind("SUPERSHIFT + T", hl.dsp.exec_cmd("$zsh \"screen-ocr\""))
hl.bind("SUPER + F10", hl.dsp.pass({ window = "class:^(com\\.obsproject\\.Studio)$" }))
hl.bind("SUPER + Insert", hl.dsp.exec_cmd("$zsh \"bookmarks-grabber\""))
hl.bind("SUPER + mouse:273", hl.dsp.exec_cmd("~/.config/hypr/scripts/spawn-resizing-osd"))
hl.bind("SUPERCONTROL + mouse:273", hl.dsp.exec_cmd("ags run ~/.config/ags/window/context-menu/context-menu.tsx --gtk 4"))
hl.bind("SUPER + mouse_down", hl.dsp.exec_cmd([[hyprctl -q keyword cursor:zoom_factor $(hyprctl getoption cursor:zoom_factor -j | jq '.float * 1.1')]]))
hl.bind("SUPER + mouse_up", hl.dsp.exec_cmd([[hyprctl -q keyword cursor:zoom_factor $(hyprctl getoption cursor:zoom_factor -j | jq '(.float * 0.9) | if . < 1 then 1 else . end')]]))
hl.bind("SUPERSHIFT + mouse:274", hl.dsp.exec_cmd("hyprctl -q keyword cursor:zoom_factor 1"))

-- Core window and layout controls
hl.bind("SUPERSHIFT + E", hl.dsp.exit())
hl.bind("SUPERCONTROL + S", hl.dsp.exec_cmd("uwsm stop"), { description = "Stop session via uwsm" })
hl.bind("SUPER + C", hl.dsp.window.close())
hl.bind("SUPER + F", hl.dsp.window.fullscreen({ action = "toggle", mode = "fullscreen" }))
hl.bind("SUPERSHIFT + F", hl.dsp.window.float({ action = "toggle" }))
hl.bind("SUPER + mouse:272", hl.dsp.window.move())
hl.bind("SUPERCONTROL + P", hl.dsp.window.pin({ action = "toggle", window = "activewindow" }))
hl.bind("SUPER + M", hl.dsp.layout("swapwithmaster"))
hl.bind("SUPER + return", hl.dsp.layout("focusmaster"))
hl.bind("SUPER + i", hl.dsp.layout("addmaster"))
hl.bind("SUPER + d", hl.dsp.layout("removemaster"))
hl.bind("SUPERSHIFT + space", hl.dsp.layout("orientationnext"))
hl.bind("SUPER + j", hl.dsp.layout("cyclenext noloop"))
hl.bind("SUPER + k", hl.dsp.layout("cycleprev noloop"))
hl.bind("SUPERSHIFT + j", hl.dsp.layout("swapnext noloop"))
hl.bind("SUPERSHIFT + k", hl.dsp.layout("swapprev noloop"))
hl.bind("SUPER + H", hl.dsp.layout("mfact -0.05"))
hl.bind("SUPER + L", hl.dsp.layout("mfact +0.05"))

-- Focus, floating, and navigation
hl.bind("SUPER + space", hl.dsp.window.float({ action = "toggle" }))
hl.bind("SUPER + Tab", hl.dsp.window.cycle_next())
hl.bind("SUPERSHIFT + Tab", hl.dsp.window.cycle_next({ direction = "prev" }))
hl.bind("SUPER + left", hl.dsp.focus({ direction = "left" }))
hl.bind("SUPER + right", hl.dsp.focus({ direction = "right" }))
hl.bind("SUPER + up", hl.dsp.focus({ direction = "up" }))
hl.bind("SUPER + down", hl.dsp.focus({ direction = "down" }))
hl.bind("SUPERSHIFT + left", hl.dsp.window.swap({ direction = "left" }))
hl.bind("SUPERSHIFT + right", hl.dsp.window.swap({ direction = "right" }))
hl.bind("SUPERSHIFT + up", hl.dsp.window.swap({ direction = "up" }))
hl.bind("SUPERSHIFT + down", hl.dsp.window.swap({ direction = "down" }))
hl.bind("SUPER + grave", hl.dsp.focus({ direction = "last" }))
hl.bind("SUPER + U", hl.dsp.focus({ direction = "urgent_or_last" }))

-- Workspaces
hl.bind("SUPERSHIFT + mouse_up", hl.dsp.workspace({ workspace = "e-1" }))
hl.bind("SUPERSHIFT + mouse_down", hl.dsp.workspace({ workspace = "e+1" }))
hl.bind("SUPER + 1", hl.dsp.workspace({ workspace = "1" }))
hl.bind("SUPER + 2", hl.dsp.workspace({ workspace = "2" }))
hl.bind("SUPER + 3", hl.dsp.workspace({ workspace = "3" }))
hl.bind("SUPER + 4", hl.dsp.workspace({ workspace = "4" }))
hl.bind("SUPER + 5", hl.dsp.workspace({ workspace = "5" }))
hl.bind("SUPER + 6", hl.dsp.workspace({ workspace = "6" }))
hl.bind("SUPER + 7", hl.dsp.workspace({ workspace = "7" }))
hl.bind("SUPER + 8", hl.dsp.workspace({ workspace = "8" }))
hl.bind("SUPER + 9", hl.dsp.workspace({ workspace = "9" }))
hl.bind("SUPERCONTROL + 1", hl.dsp.focus({ workspace = "1" }))
hl.bind("SUPERCONTROL + 2", hl.dsp.focus({ workspace = "2" }))
hl.bind("SUPERCONTROL + 3", hl.dsp.focus({ workspace = "3" }))
hl.bind("SUPERCONTROL + 4", hl.dsp.focus({ workspace = "4" }))
hl.bind("SUPERCONTROL + 5", hl.dsp.focus({ workspace = "5" }))
hl.bind("SUPERCONTROL + 6", hl.dsp.focus({ workspace = "6" }))
hl.bind("SUPERCONTROL + 7", hl.dsp.focus({ workspace = "7" }))
hl.bind("SUPERCONTROL + 8", hl.dsp.focus({ workspace = "8" }))
hl.bind("SUPERCONTROL + 9", hl.dsp.focus({ workspace = "9" }))
hl.bind("SUPER + 0", hl.dsp.workspace({ action = "toggle", special = true }))
hl.bind("SUPERSHIFT + 1", hl.dsp.window.move({ workspace = "1" }))
hl.bind("SUPERSHIFT + 2", hl.dsp.window.move({ workspace = "2" }))
hl.bind("SUPERSHIFT + 3", hl.dsp.window.move({ workspace = "3" }))
hl.bind("SUPERSHIFT + 4", hl.dsp.window.move({ workspace = "4" }))
hl.bind("SUPERSHIFT + 5", hl.dsp.window.move({ workspace = "5" }))
hl.bind("SUPERSHIFT + 6", hl.dsp.window.move({ workspace = "6" }))
hl.bind("SUPERSHIFT + 7", hl.dsp.window.move({ workspace = "7" }))
hl.bind("SUPERSHIFT + 8", hl.dsp.window.move({ workspace = "8" }))
hl.bind("SUPERSHIFT + 9", hl.dsp.window.move({ workspace = "9" }))
hl.bind("SUPERSHIFT + 0", hl.dsp.window.move({ workspace = "special" }))

-- Monitors
hl.bind("SUPER + Comma", hl.dsp.focus({ monitor = "l" }))
hl.bind("SUPER + Period", hl.dsp.focus({ monitor = "r" }))
hl.bind("SUPERALT + Comma", hl.dsp.window.move({ monitor = "l" }))
hl.bind("SUPERALT + Period", hl.dsp.window.move({ monitor = "r" }))
hl.bind("SUPERALT + left", hl.dsp.workspace.move({ monitor = "l" }))
hl.bind("SUPERALT + right", hl.dsp.workspace.move({ monitor = "r" }))
hl.bind("SUPERALT + S", hl.dsp.workspace.swap_monitors({ monitor1 = "current", monitor2 = "+1" }))

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
    hl.bind("mouse:272", hl.dsp.window.move())
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
    hl.bind("h", hl.dsp.window.resize({ amount = "-20 0" }), { repeating = true })
    hl.bind("l", hl.dsp.window.resize({ amount = "20 0" }), { repeating = true })
    hl.bind("k", hl.dsp.window.resize({ amount = "0 -20" }), { repeating = true })
    hl.bind("j", hl.dsp.window.resize({ amount = "0 20" }), { repeating = true })
    hl.bind("escape", hl.dsp.submap("reset"))
    hl.bind("catchall", hl.dsp.submap("reset"))
end)

-- Geometric / app rules
hl.window_rule({
    name = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

hl.window_rule({
    name = "fix-xwayland-drags",
    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false,
    },
    no_focus = true,
})

hl.workspace_rule({ workspace = "n[s:window] w[tv1]", gaps_out = { top = 0, right = 0, bottom = 0, left = 0 }, gaps_in = { top = 0, right = 0, bottom = 0, left = 0 } })
hl.workspace_rule({ workspace = "n[s:window] f[1]", gaps_out = { top = 0, right = 0, bottom = 0, left = 0 }, gaps_in = { top = 0, right = 0, bottom = 0, left = 0 } })

hl.window_rule({
    name = "smart-gaps-1",
    match = { float = false, workspace = "n[s:window] w[tv1]" },
    border_size = 0,
    rounding = 0,
})

hl.window_rule({
    name = "smart-gaps-2",
    match = { float = false, workspace = "n[s:window] f[1]" },
    border_size = 0,
    rounding = 0,
})

hl.window_rule({
    name = "wr-kitty-stuff",
    match = { class = "wr_kitty" },
    float = true,
    size = "200 200",
    pin = false,
})

hl.window_rule({
    name = "tagged-kitty-floats",
    match = { tag = "tag_kitty" },
    float = true,
})

hl.window_rule({
    name = "static-kitty-tag",
    match = { class = "tag_kitty" },
    tag = "+tag_kitty",
})

hl.gesture({
    fingers = 3,
    direction = "left",
    action = function()
        hl.dispatch(hl.dsp.exec_cmd("kitty"))
    end,
})

hl.window_rule({
    name = "suppress-maximize-events-2",
    match = { class = ".*" },
    suppress_event = "maximize",
})

hl.window_rule({
    name = "fix-xwayland-drags-2",
    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false,
    },
    no_focus = true,
})

hl.window_rule({
    name = "monitorrule",
    match = { class = "silent_kitty" },
    monitor = "HEADLESS-3 silent",
})

hl.window_rule({
    name = "monitorrule-override",
    match = { class = "kitty_exec_override" },
    workspace = "2",
})

hl.window_rule({
    name = "tag-mutation",
    match = { class = "kitty_tag_mutate" },
    workspace = "2",
})

hl.window_rule({
    name = "window-rule-focus-on-activate",
    match = { class = ".*" },
    focus_on_activate = true,
})

hl.window_rule({
    name = "window-rule-focus-on-activate-off",
    match = { class = "^(KeePassXC|Bitwarden|1Password)$" },
    focus_on_activate = false,
})

hl.window_rule({
    name = "window-rule-no-initial-focus",
    match = { title = "^(.*Sharing Indicator.*)$" },
    no_initial_focus = true,
})

hl.window_rule({
    name = "window-rule-no-screen-share",
    match = { class = "^(KeePassXC|Bitwarden|1Password)$" },
    no_screen_share = true,
})

hl.window_rule({
    name = "window-rule-allows-input",
    match = { xwayland = true, class = "^(steam|lutris|heroic|steamwebhelper|gamescope|com.heroicgameslauncher.hgl)$" },
    allows_input = true,
})

hl.window_rule({
    name = "window-rule-dim-around",
    match = { class = "^(pavucontrol|blueman-manager)$" },
    dim_around = true,
})

hl.window_rule({
    name = "window-rule-stay-focused",
    match = { class = "^(pinentry-.*)$" },
    stay_focused = true,
})

hl.window_rule({
    name = "window-rule-nearest-neighbor",
    match = { class = "^(retroarch|mGBA|Snes9x|PCSX2)$" },
    nearest_neighbor = true,
})

hl.window_rule({
    name = "window-rule-immediate",
    match = { class = "^(cs2)$" },
    immediate = true,
})

hl.window_rule({
    name = "window-rule-pin-pip",
    match = { title = "^(Picture-in-Picture)$" },
    pin = true,
})

hl.window_rule({
    name = "window-rule-float-pip",
    match = { title = "^(Picture-in-Picture|.*Sharing Indicator.*)$" },
    float = true,
})

hl.window_rule({
    name = "window-rule-float-popups",
    match = { class = "^(pavucontrol|nemo|pcmanfm|thunar|file-roller|gucharmap)$" },
    float = true,
})

hl.window_rule({
    name = "window-rule-slide-right",
    match = { class = "^(nemo|pcmanfm|thunar|file-roller)$" },
    animation = "slide right",
})

hl.window_rule({
    name = "window-rule-slide-up",
    match = { class = "^(firefox|librewolf|google-chrome|qutebrowser)$" },
    animation = "slide up",
})

hl.window_rule({
    name = "window-rule-move-popups",
    match = { class = "^(nemo|pcmanfm|thunar|file-roller|gucharmap)$" },
    move = "(cursor_x-(window_w*0.5)) (cursor_y-(window_h*0.5))",
})

hl.window_rule({
    name = "window-rule-no-focus-ibus",
    match = { class = "^(Ibus-ui-gtk3)$" },
    no_focus = true,
})

hl.window_rule({
    name = "window-rule-idle-inhibit",
    match = { class = "^(mpv)$" },
    idle_inhibit = "focus",
})

hl.window_rule({
    name = "window-rule-sharing-move",
    match = { title = "^(.*Sharing Indicator.*)$" },
    move = "0 0",
})

hl.window_rule({
    name = "window-rule-rounding-zero",
    match = { initial_title = "^(win0|win1)$", class = "^$" },
    rounding = 0,
})

hl.window_rule({
    name = "window-rule-focus-on-activate-games",
    match = { class = "^(steam|lutris|heroic|gamescope)$" },
    focus_on_activate = true,
})

hl.window_rule({
    name = "window-rule-sync-fullscreen",
    match = { class = "^(gamescope|steam_app_.*)$" },
    sync_fullscreen = true,
})

hl.window_rule({
    name = "window-rule-no-shortcuts-inhibit",
    match = { class = "^(steam|gamescope)$" },
    no_shortcuts_inhibit = true,
})

hl.window_rule({
    name = "window-rule-render-unfocused",
    match = { class = "^(obs|com.obsproject.Studio)$" },
    render_unfocused = true,
})

hl.window_rule({
    name = "window-rule-tag-media",
    match = { class = "^(mpv|vlc|celluloid)$" },
    tag = "+media",
})

hl.window_rule({
    name = "window-rule-opacity-media",
    match = { tag = "media" },
    opacity = "1.0 override 0.92 override 1.0 override",
})

hl.window_rule({
    name = "window-rule-border-media",
    match = { tag = "media" },
    border_color = "rgb(8ec07c)",
})

hl.window_rule({
    name = "window-rule-content-photo",
    match = { class = "^(imv|nsxiv|feh)$" },
    content = "photo",
})

hl.window_rule({
    name = "window-rule-content-video",
    match = { class = "^(mpv|vlc|celluloid)$" },
    content = "video",
})

hl.window_rule({
    name = "window-rule-content-game",
    match = { class = "^(gamescope|steam_app_.*)$" },
    content = "game",
})

hl.window_rule({
    name = "window-rule-center-utils",
    match = { class = "^(qalculate-gtk|org.gnome.Calculator|nm-connection-editor)$" },
    float = true,
    center = true,
    persistent_size = true,
    rounding = 18,
})

hl.window_rule({
    name = "window-rule-clean-terminals",
    match = { class = "^(foot|kitty|Alacritty)$" },
    no_blur = true,
    no_shadow = true,
})

hl.window_rule({
    name = "window-rule-keep-aspect",
    match = { class = "^(imv|nsxiv|feh)$" },
    keep_aspect_ratio = true,
})

hl.window_rule({
    name = "window-rule-no-follow-mouse",
    match = { class = "^(Ibus-ui-gtk3)$" },
    no_follow_mouse = true,
})

hl.window_rule({
    name = "window-rule-no-anim-sharing",
    match = { title = "^(.*Sharing Indicator.*)$" },
    no_anim = true,
})

hl.window_rule({
    name = "window-rule-float-legacy",
    match = { float = true },
    opacity = 0.96,
})

hl.window_rule({
    name = "window-rule-fullscreen-state",
    match = { fullscreen_state_internal = 2 },
    border_color = "rgb(f38ba8)",
})

hl.window_rule({
    name = "window-rule-fullscreen-state-client",
    match = { fullscreen_state_client = 2 },
    border_color = "rgb(a6e3a1)",
})

hl.window_rule({
    name = "window-rule-fullscreen-opacity",
    match = { fullscreen = true },
    opacity = "1.0 override 0.95 override",
})

hl.window_rule({
    name = "window-rule-pin-dim",
    match = { pin = true },
    dim_around = true,
})

hl.window_rule({
    name = "window-rule-group-border",
    match = { group = true },
    border_color = "rgb(f9e2af)",
})

hl.window_rule({
    name = "window-rule-sharing-suppress",
    match = { title = "^(.*Sharing Indicator.*)$" },
    suppress_event = "activate activatefocus",
})

hl.window_rule({
    name = "window-rule-group-barred",
    match = { class = "^(steamwebhelper)$" },
    group = "barred",
})

hl.window_rule({
    name = "window-rule-xdg-tag",
    match = { xdg_tag = ".+" },
    tag = "+has-xdgtag",
})

hl.layer_rule({
    name = "layer-rule-wofi-vicinae",
    match = { namespace = "^(wofi|vicinae|main-dashboard)$" },
    blur = true,
    ignore_alpha = 0.35,
})

hl.layer_rule({
    name = "layer-rule-wofi-vicinae-popups",
    match = { namespace = "^(wofi|vicinae)$" },
    blur_popups = true,
    dim_around = true,
})

hl.layer_rule({
    name = "layer-rule-workspace-info",
    match = { namespace = "^(workspace-info-osd)$" },
    animation = "slide up",
})

hl.layer_rule({
    name = "layer-rule-gtk-layer-shell",
    match = { namespace = "gtk-layer-shell" },
    blur = true,
    ignore_alpha = 0.38,
})

hl.layer_rule({
    name = "layer-rule-bottomlayer",
    match = { namespace = "bottomlayer" },
    blur = true,
    ignore_alpha = 0.18,
})

hl.layer_rule({
    name = "layer-rule-demo",
    match = { namespace = "demo" },
    blur = true,
    ignore_alpha = 0.38,
})

hl.layer_rule({
    name = "layer-rule-no-anim-wofi",
    match = { namespace = "^(wofi|vicinae)$" },
    no_anim = true,
    order = 20,
})

hl.layer_rule({
    name = "layer-rule-above-lock",
    match = { namespace = "^(notifications|swaync-control-center)$" },
    above_lock = 1,
})

hl.layer_rule({
    name = "layer-rule-no-screen-share",
    match = { namespace = "^(notifications)$" },
    no_screen_share = true,
})