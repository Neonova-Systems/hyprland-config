
hl.config({
    input = { -- https://wiki.hypr.land/Configuring/Basics/Variables/#input
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
        accel_profile = "", -- https://wiki.hypr.land/Configuring/Basics/Variables/#accel_profile
        force_no_accel = false,
        rotation = 0,
        left_handed = false,
        -- https://wiki.hypr.land/Configuring/Basics/Variables/#scroll_points
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
        touchpad = { -- https://wiki.hypr.land/Configuring/Basics/Variables/#touchpad
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
        touchdevice = { -- https://wiki.hypr.land/Configuring/Basics/Variables/#touchdevice
            transform = -1,
            output = "Auto",
            enabled = true,
        },
        virtualkeyboard = { -- https://wiki.hypr.land/Configuring/Basics/Variables/#virtualkeyboard
            share_states = 2,
            release_pressed_on_close = false,
        },
    },
})

-- https://gist.github.com/fufexan/de2099bc3086f3a6c83d61fc1fcc06c9
-- Per-device input configuration, see https://wiki.hypr.land/Configuring/Basics/Variables/#per-device-input-config
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