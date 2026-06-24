
hl.config({
    input = { -- https://wiki.hypr.land/Configuring/Basics/Variables/#input
        kb_model = "",                                      -- Appropriate XKB keymap parameter
        kb_layout = "us",                                   -- Appropriate XKB keymap parameter
        kb_variant = "",                                    -- Appropriate XKB keymap parameter  
        kb_options = "caps:escape_shifted_capslock",        -- Appropriate XKB keymap parameter <- Make unmodified Caps Lock an additional Esc, but Shift + Caps Lock behaves like regular Caps Lock
        kb_rules = "",                                      -- Appropriate XKB keymap parameter
        kb_file = "",                                       -- If you prefer, you can use a path to your custom .xkb file.
        numlock_by_default = false,                         -- Engage numlock by default.
        resolve_binds_by_sym = false,                       -- Determines how keybinds act when multiple layouts are used. If false, keybinds will always act as if the first specified layout is active. If true, keybinds specified by symbols are activated when you type the respective symbol with the current layout.
        repeat_rate = 50,                                   -- The repeat rate for held-down keys, in repeats per second.
        repeat_delay = 250,                                 -- Delay before a held-down key is repeated, in milliseconds.
        sensitivity = 0.0,                                  -- Sets the mouse input sensitivity. Value is clamped to the range -1.0 to 1.0. https://wayland.freedesktop.org/libinput/doc/latest/pointer-acceleration.html#pointer-acceleration
        accel_profile = "",                                 -- https://wiki.hypr.land/Configuring/Basics/Variables/#accel_profile
        force_no_accel = false,                             -- Force no cursor acceleration. This bypasses most of your pointer settings to get as raw of a signal as possible. Enabling this is not recommended due to potential cursor desynchronization.
        rotation = 0,                                       -- Sets the rotation of a device in degrees clockwise off the logical neutral position. Value is clamped to the range 0 to 359.
        left_handed = false,                                -- Switches RMB and LMB
        -- https://wiki.hypr.land/Configuring/Basics/Variables/#scroll_points
        scroll_points = "custom 0.000 0.170 0.340 0.510 0.680 0.915 1.171 1.426 1.682 1.938 2.193 2.449 2.704 3.052 3.440 3.829 4.217 4.605 4.993 5.381 5.770 6.158 6.546 6.934 7.323 7.711 8.099 8.487 8.875 9.264 9.652 10.040 10.428 10.817 11.205 11.593 11.981 12.369 12.758 13.560",
        scroll_method = "",
        scroll_button = 0,
        scroll_button_lock = false,
        scroll_factor = 1.0,
        natural_scroll = false,                     -- Inverts scrolling direction. When enabled, scrolling moves content directly, rather than manipulating a scrollbar.
        follow_mouse = 1,                           -- Specify if and how cursor movement should affect window focus. See the note below. [0/1/2/3]
        follow_mouse_shrink = 0,                    -- Shrinks the inactive window hitboxes used for focus detection by the specified number of pixels. This creates a dead zone in gaps between windows where moving the cursor will not change focus. Works only with follow_mouse = 1.
        follow_mouse_threshold = 0.0,               -- The smallest distance in logical pixels the mouse needs to travel for the window under it to get focused. Works only with follow_mouse = 1.
        focus_on_close = 0,                         -- Controls the window focus behavior when a window is closed. When set to 0, focus will shift to the next window candidate. When set to 1, focus will shift to the window under the cursor. [0/1]
        mouse_refocus = true,                       -- If disabled, mouse focus won’t switch to the hovered window unless the mouse crosses a window boundary when follow_mouse=1.
        float_switch_override_focus = 2,            -- If enabled (1 or 2), focus will change to the window under the cursor when changing from tiled-to-floating and vice versa. If 2, focus will also follow mouse on float-to-float switches.
        special_fallthrough = false,                -- if enabled, having only floating windows in the special workspace will not block focusing windows in the regular workspace.
        off_window_axis_events = 1,                 -- Handles axis events around (gaps/border for tiled, dragarea/border for floated) a focused window. 0 ignores axis events 1 sends out-of-bound coordinates 2 fakes pointer coordinates to the closest point inside the window 3 warps the cursor to the closest point inside the window 
        emulate_discrete_scroll = 1,                -- Emulates discrete scrolling from high resolution scrolling events. 0 disables it, 1 enables handling of non-standard events only, and 2 force enables all scroll wheel events to be handled
        touchpad = { -- https://wiki.hypr.land/Configuring/Basics/Variables/#touchpad
            disable_while_typing = true,        -- Disable the touchpad while typing.
            natural_scroll = true,              -- Inverts scrolling direction. When enabled, scrolling moves content directly, rather than manipulating a scrollbar.
            scroll_factor = 0.7,                -- Multiplier applied to the amount of scroll movement.
            middle_button_emulation = true,     -- Sending LMB and RMB simultaneously will be interpreted as a middle click. This disables any touchpad area that would normally send a middle click based on location.
            tap_button_map = "",                -- Sets the tap button mapping for touchpad button emulation. Can be one of lrm (default) or lmr (Left, Middle, Right Buttons). [lrm/lmr]
            clickfinger_behavior = false,       -- Button presses with 1, 2, or 3 fingers will be mapped to LMB, RMB, and MMB respectively. This disables interpretation of clicks based on location on the touchpad.
            tap_to_click = true,                -- Tapping on the touchpad with 1, 2, or 3 fingers will send LMB, RMB, and MMB respectively.
            drag_lock = 0,                      -- When enabled, lifting the finger off while dragging will not drop the dragged item. 0 -> disabled, 1 -> enabled with timeout, 2 -> enabled sticky. 
            tap_and_drag = true,                -- sets the tap and drag mode for the touchpad
            flip_x = false,                     -- inverts the horizontal movement of the touchpad
            flip_y = false,                     -- inverts the vertical movement of the touchpad
            drag_3fg = 0,                       -- enables three finger drag, 0 -> disabled, 1 -> 3 fingers, 2 -> 4 fingers
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