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

hl.config({
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

})



require("rules_and_regulation")
require("keybinds")