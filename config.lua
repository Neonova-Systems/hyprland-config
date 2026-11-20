-- ── env ──────────────────────────────────────────────────────
--  ________                   _                                                        _    
-- |_   __  |                 (_)                                                      / |_  
--   | |_ \_| _ .--.  _   __  __   _ .--.   .--.   _ .--.   _ .--..--.  .---.  _ .--. `| |-' 
--   |  _| _ [ `.-. |[ \ [  ][  | [ `/'`\]/ .'`\ \[ `.-. | [ `.-. .-. |/ /__\\[ `.-. | | |   
--  _| |__/ | | | | | \ \/ /  | |  | |    | \__. | | | | |  | | | | | || \__., | | | | | |,  
-- |________|[___||__] \__/  [___][___]    '.__.' [___||__][___||__||__]'.__.'[___||__]\__/  
-- https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

-- # Hyprland Environment Variables 
hl.env("HYPRLAND_TRACE", "1") -- Enables more verbose logging.
-- hl.env("HYPRLAND_NO_RT", "1") -- Disables realtime priority setting by Hyprland.
-- hl.env("HYPRLAND_NO_SD_NOTIFY", "1") -- If systemd, disables the sd_notify calls.
-- hl.env("HYPRLAND_NO_SD_VARS", "1") -- Disables management of variables in systemd and dbus activation environments.
-- hl.env("HYPRLAND_CONFIG", "/path/to/hyprland.lua") -- Specifies where you want your Hyprland configuration.

-- # Aquamarine Environment Variables
hl.env("AQ_TRACE", "1") -- Enables more verbose logging.
-- hl.env("AQ_DRM_DEVICES", "...") - Set an explicit list of DRM devices (GPUs) to use. It’s a colon-separated list of paths, with the first being the primary. E.g.: /dev/dri/card1:/dev/dri/card0
-- hl.env("AQ_FORCE_LINEAR_BLIT", "0") -- Disables forcing linear explicit modifiers on Multi-GPU buffers to potentially workaround Nvidia issues.
-- hl.env("AQ_MGPU_NO_EXPLICIT", "1") -- Disables explicit syncing on mgpu buffers.
-- hl.env("AQ_NO_MODIFIERS", "1") -- Disables modifiers for DRM buffers.
-- hl.env("AQ_NO_KMS_REQUIREMENT", "1") -- Disable KMS requirement for starting on headless GPUs.

-- # Toolkit Backend Variables
hl.env("GDK_BACKEND", "wayland,x11,*") -- GTK: Use Wayland if available; if not, try X11 and then any other GDK backend.
hl.env("QT_QPA_PLATFORM", "wayland;xcb") -- Qt: Use Wayland if available, fall back to X11 if not.
hl.env("SDL_VIDEODRIVER", "wayland") -- Run SDL2 applications on Wayland. Remove or set to x11 if games that provide older versions of SDL cause compatibility issues
hl.env("CLUTTER_BACKEND", "wayland") -- Clutter package already has Wayland enabled, this variable will force Clutter applications to try and use the Wayland backend

-- # XDG Specifications
-- XDG specific environment variables are often detected through portals and applications that may set those for you, however it is not a bad idea to set them explicitly.
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

-- # Qt Variables
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1") -- (From the Qt documentation) enables automatic scaling, based on the monitor’s pixel density
hl.env("QT_QPA_PLATFORM", "wayland;xcb") -- Tell Qt applications to use the Wayland backend, and fall back to X11 if Wayland is unavailable
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1") -- Disables window decorations on Qt applications
hl.env("QT_QPA_PLATFORMTHEME", "qt5ct") -- Tells Qt based applications to pick your theme from qt5ct, use with Kvantum.

-- # NVIDIA Specific
-- To force GBM as a backend, set the following environment variables:
-- hl.env("GBM_BACKEND", "nvidia-drm")
-- hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")

-- See https://wiki.archlinux.org/title/Wayland#Requirements for more details on those variables.
-- hl.env("LIBVA_DRIVER_NAME", "nvidia") -- Hardware acceleration on NVIDIA GPUs

-- See https://wiki.archlinux.org/title/Hardware_video_acceleration for details and necessary values before setting this variable.
-- hl.env("__GL_GSYNC_ALLOWED", "0") -- Controls if G-Sync capable monitors should use Variable Refresh Rate (VRR). Recommended to set as “0” to avoid having problems on some games.

-- See https://download.nvidia.com/XFree86/Linux-32bit-ARM/375.26/README/openglenvvariables.html for details.
-- hl.env("__GL_VRR_ALLOWED", "0") -- Controls if Adaptive Sync should be used. Recommended to set as “0” to avoid having problems on some games.
-- hl.env("AQ_NO_ATOMIC", "1") -- use legacy DRM interface instead of atomic mode setting. NOT recommended.


-- # Theming Related Variables 
-- hl.env("GTK_THEME", "Nord") -- Set a GTK theme manually, for those who want to avoid appearance tools such as lxappearance or nwg-look.
-- hl.env("XCURSOR_THEME", "Adwaita") -- Set your cursor theme. The theme needs to be installed and readable by your user.
hl.env("XCURSOR_SIZE", "24") -- Set cursor size. See https://wiki.hypr.land/FAQ/#how-do-i-change-me-mouse-cursor for why you might want this variable set.
hl.env("HYPRCURSOR_SIZE", "24")

-- ── general ──────────────────────────────────────────────────
-- https://wiki.hypr.land/Configuring/Basics/Variables/#variable-types

hl.config({ -- You are allowed multiple hl.config() invocations, each one will update just what you pass into it
    general = { -- https://wiki.hypr.land/Configuring/Basics/Variables/#general
        border_size = 0,                        -- size of the border around windows
        gaps_in = { top = 4, right = 5, bottom = 4, left = 5 },
        gaps_out = 10,                          -- gaps between windows and monitor edges, also supports css style gaps (top, right, bottom, left -> 5,10,15,20)
        float_gaps = -1,                        -- gaps between windows and monitor edges for floating windows, also supports css style gaps (top, right, bottom, left -> 5 10 15 20). -1 means default
        gaps_workspaces = 0,                    -- gaps between workspaces. Stacks with gaps_out.
        col = {
            inactive_border = "rgba(00000000)", -- border color for inactive windows
            active_border = "rgba(00000000)",   -- border color for the active window
            nogroup_border = "rgba(00000000)",
            nogroup_border_active = "rgba(00000000)",
        },
        layout = "master",                          -- which layout to use. [dwindle/master/scrolling/monocle]
        no_focus_fallback = false,                  -- if true, will not fall back to the next available window when moving focus in a direction where no window was found
        resize_on_border = true,                    -- enables resizing windows by clicking and dragging on borders and gaps
        extend_border_grab_area = 15,               -- extends the area around the border where you can click and drag on, only used when general:resize_on_border is on.
        hover_icon_on_border = true,                -- show a cursor icon when hovering over borders, only used when general:resize_on_border is on.
        allow_tearing = false,                      -- master switch for allowing tearing to occur. See the Tearing page. https://wiki.hypr.land/Configuring/Tearing
        resize_corner = 0,                          -- force floating windows to use a specific corner when being resized (1-4 going clockwise from top left, 0 to disable)
        modal_parent_blocking = true,               -- whether parent windows of modals will be interactive
        locale = "",
        snap = { -- https://wiki.hypr.land/Configuring/Basics/Variables/#snap
            enabled = true, 	        -- enable snapping for floating windows
            window_gap = 20, 	        -- minimum gap in pixels between windows before snapping
            monitor_gap = 20, 	        -- minimum gap in pixels between window and monitor edges before snapping
            border_overlap = false, 	-- if true, windows snap such that only one border's worth of space is between them
            respect_gaps = false, 	    -- if true, snapping will respect gaps between windows(set in general:gaps_in)
        },
    }
})

-- ── decoration ───────────────────────────────────────────────
hl.config({
    decoration = { -- https://wiki.hypr.land/Configuring/Basics/Variables/#decoration
        rounding = 28,                      -- rounded corners' radius (in layout px)
        rounding_power = 1.0,               -- adjusts the curve used for rounding corners, larger is smoother, 2.0 is a circle, 4.0 is a squircle, 1.0 is a triangular corner. [1.0 - 10.0]
        active_opacity = 1.0,               -- opacity of active windows. [0.0 - 1.0]
        inactive_opacity = 1.0,             -- opacity of inactive windows. [0.0 - 1.0]
        fullscreen_opacity = 1.0,           -- opacity of fullscreen windows. [0.0 - 1.0]
        dim_modal = true,                   -- enables dimming of parents of modal windows
        dim_inactive = false,               -- enables dimming of inactive windows
        dim_strength = 0.5,                 -- how much inactive windows should be dimmed [0.0 - 1.0]
        dim_special = 0.7,                  -- how much to dim the rest of the screen by when a special workspace is open. [0.0 - 1.0]
        dim_around = 0.4,                   -- how much the dim_around window rule should dim by. [0.0 - 1.0]
        screen_shader = "",                 -- a path to a custom shader to be applied at the end of rendering. See examples/screenShader.frag for an example.
        border_part_of_window = true,       -- whether the window border should be a part of the window
        blur = { -- https://wiki.hypr.land/Configuring/Basics/Variables/#blur
            enabled = true,                     -- enable kawase window background blur
            size = 3,                           -- blur size (distance)
            passes = 4,                         -- the amount of passes to perform
            ignore_opacity = true,              -- make the blur layer ignore the opacity of the window
            new_optimizations = true,           -- whether to enable further optimizations to the blur. Recommended to leave on, as it will massively improve performance.
            xray = false,                       -- if enabled, floating windows will ignore tiled windows in their blur. Only available if new_optimizations is true. Will reduce overhead on floating blur significantly.
            noise = 0.0117,                     -- how much noise to apply. [0.0 - 1.0]
            contrast = 0.8916,                  -- contrast modulation for blur. [0.0 - 2.0]
            brightness = 0.8172,                -- brightness modulation for blur. [0.0 - 2.0]
            vibrancy = 0.1696,                  -- Increase saturation of blurred colors. [0.0 - 1.0]
            vibrancy_darkness = 0.0,            -- How strong the effect of vibrancy is on dark areas . [0.0 - 1.0]
            special = false,                    -- whether to blur behind the special workspace (note: expensive)
            popups = false,                     -- whether to blur popups (e.g. right-click menus)
            popups_ignorealpha = 0.2,           -- works like ignore_alpha in layer rules. If pixel opacity is below set value, will not blur. [0.0 - 1.0]
            input_methods = false,              -- whether to blur input methods (e.g. fcitx5)
            input_methods_ignorealpha = 0.2,    -- works like ignore_alpha in layer rules. If pixel opacity is below set value, will not blur. [0.0 - 1.0]
        },
        shadow = { -- https://wiki.hypr.land/Configuring/Basics/Variables/#shadow
            enabled = true,                     -- enable drop shadows on windows
            range = 20,                         -- Shadow range (“size”) in layout px
            render_power = 3,                   -- in what power to render the falloff (more power, the faster the falloff) [1 - 4]
            sharp = false,                      -- if enabled, will make the shadows sharp, akin to an infinite render power
            color = "rgba(00000040)",           -- shadow’s color. Alpha dictates shadow’s opacity.
            color_inactive = "rgba(00000040)",  -- inactive shadow color. (if not set, will fall back to color)
            offset = { 0, 0 },                  -- shadow’s rendering offset. [x, y]
            scale = 1.0,                        -- shadow’s scale. [0.0 - 1.0]
        },
        -- glow { -- https://wiki.hypr.land/Configuring/Basics/Variables/#glow
        --     enabled = false,
        --     size = 20,
        --     render_power = 3,1,
        --     color = "rgba(00000040)",
        --     color_inactive = "",
        -- },
        -- motion_blur = { -- https://wiki.hypr.land/Configuring/Basics/Variables/#motion-blur
        --     enabled = false,
        --     samples = 8,
        -- },
    },
})

-- ── animation ────────────────────────────────────────────────
-- https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/
-- global
--   ↳ windows - styles: slide, popin, gnomed
--     ↳ windowsIn - window open - styles: same as windows
--     ↳ windowsOut - window close - styles: same as windows
--     ↳ windowsMove - everything in between, moving, dragging, resizing.
--   ↳ layers - styles: slide, popin, fade
--     ↳ layersIn - layer open
--     ↳ layersOut - layer close
--   ↳ fade
--     ↳ fadeIn - fade in for window open
--     ↳ fadeOut - fade out for window close
--     ↳ fadeSwitch - fade on changing activewindow and its opacity
--     ↳ fadeShadow - fade on changing activewindow for shadows
--     ↳ fadeDim - the easing of the dimming of inactive windows
--     ↳ fadeLayers - for controlling fade on layers
--       ↳ fadeLayersIn - fade in for layer open
--       ↳ fadeLayersOut - fade out for layer close
--     ↳ fadePopups - for controlling fade on wayland popups
--       ↳ fadePopupsIn - fade in for wayland popup open
--       ↳ fadePopupsOut - fade out for wayland popup close
--     ↳ fadeDpms - for controlling fade when dpms is toggled
--   ↳ border - for animating the border's color switch speed
--   ↳ borderangle - for animating the border's gradient angle - styles: once (default), loop
--   ↳ workspaces - styles: slide, slidevert, fade, slidefade, slidefadevert
--     ↳ workspacesIn - styles: same as workspaces
--     ↳ workspacesOut - styles: same as workspaces
--     ↳ specialWorkspace - styles: same as workspaces
--       ↳ specialWorkspaceIn - styles: same as workspaces
--       ↳ specialWorkspaceOut - styles: same as workspaces
--   ↳ zoomFactor - animates the screen zoom
--   ↳ monitorAdded - monitor added zoom animation

hl.config({
    animations = { -- https://wiki.hypr.land/Configuring/Basics/Variables/#animations
        enabled = true,
        workspace_wraparound = false,
    },
})

-- https://wiki.hypr.land/Configuring/Advanced-and-Cool/Animations/#curves 
hl.curve( "spring", { type = "spring", mass = 1, stiffness = 70, dampening = 14 } )
hl.curve( "bounce", { type = "spring", mass = 1, stiffness = 100, dampening = 20 } )
hl.curve( "smooth_ease", { type = "bezier", points = { {0.25, 0.1}, {0.25, 1.0} } } ) -- Fallback
hl.curve( "easeInOut", { type = "bezier", points = { {0.37, 0}, {0.63, 1} } } )
hl.animation({ leaf = "global", enabled = true, speed = 4, bezier = "smooth_ease" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4, spring = "spring", style = "popin 80%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 5, bezier = "easeInOut"})
hl.animation({ leaf = "workspaces", enabled = true, speed = 3, spring = "bounce", style = "slidefade" })

hl.animation({ leaf = "fade", enabled = true, speed = 5, bezier = "smooth_ease" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 5, bezier = "easeInOut" })
hl.animation({ leaf = "fadeSwitch", enabled = false, speed = 4, bezier = "smooth_ease" })
hl.animation({ leaf = "fadeShadow", enabled = true, speed = 4, bezier = "smooth_ease" })
hl.animation({ leaf = "fadeDim", enabled = true, speed = 3, bezier = "smooth_ease" })

-- ── input & devices ──────────────────────────────────────────
hl.config({
    input = {                                        -- https://wiki.hypr.land/Configuring/Basics/Variables/#input
        kb_model = "",                               -- Appropriate XKB keymap parameter
        kb_layout = "us",                            -- Appropriate XKB keymap parameter
        kb_variant = "",                             -- Appropriate XKB keymap parameter
        kb_options = "caps:escape_shifted_capslock", -- Appropriate XKB keymap parameter <- Make unmodified Caps Lock an additional Esc, but Shift + Caps Lock behaves like regular Caps Lock
        kb_rules = "",                               -- Appropriate XKB keymap parameter
        kb_file = "",                                -- If you prefer, you can use a path to your custom .xkb file.
        numlock_by_default = false,                  -- Engage numlock by default.
        resolve_binds_by_sym = false,                -- Determines how keybinds act when multiple layouts are used. If false, keybinds will always act as if the first specified layout is active. If true, keybinds specified by symbols are activated when you type the respective symbol with the current layout.
        repeat_rate = 50,                            -- The repeat rate for held-down keys, in repeats per second.
        repeat_delay = 250,                          -- Delay before a held-down key is repeated, in milliseconds.
        sensitivity = 0.0,                           -- Sets the mouse input sensitivity. Value is clamped to the range -1.0 to 1.0. https://wayland.freedesktop.org/libinput/doc/latest/pointer-acceleration.html#pointer-acceleration
        -- accel_profile = "",                          -- https://wiki.hypr.land/Configuring/Basics/Variables/#accel_profile
        force_no_accel = false,                      -- Force no cursor acceleration. This bypasses most of your pointer settings to get as raw of a signal as possible. Enabling this is not recommended due to potential cursor desynchronization.
        rotation = 0,                                -- Sets the rotation of a device in degrees clockwise off the logical neutral position. Value is clamped to the range 0 to 359.
        left_handed = false,                         -- Switches RMB and LMB
        -- https://wiki.hypr.land/Configuring/Basics/Variables/#scroll_points
        scroll_points =
        "custom 0.000 0.170 0.340 0.510 0.680 0.915 1.171 1.426 1.682 1.938 2.193 2.449 2.704 3.052 3.440 3.829 4.217 4.605 4.993 5.381 5.770 6.158 6.546 6.934 7.323 7.711 8.099 8.487 8.875 9.264 9.652 10.040 10.428 10.817 11.205 11.593 11.981 12.369 12.758 13.560",
        -- scroll_method = "",
        scroll_button = 0,
        scroll_button_lock = false,
        scroll_factor = 1.0,
        natural_scroll = false,             -- Inverts scrolling direction. When enabled, scrolling moves content directly, rather than manipulating a scrollbar.
        follow_mouse = 1,                   -- Specify if and how cursor movement should affect window focus. See the note below. [0/1/2/3]
        follow_mouse_shrink = 0,            -- Shrinks the inactive window hitboxes used for focus detection by the specified number of pixels. This creates a dead zone in gaps between windows where moving the cursor will not change focus. Works only with follow_mouse = 1.
        follow_mouse_threshold = 0.0,       -- The smallest distance in logical pixels the mouse needs to travel for the window under it to get focused. Works only with follow_mouse = 1.
        focus_on_close = 0,                 -- Controls the window focus behavior when a window is closed. When set to 0, focus will shift to the next window candidate. When set to 1, focus will shift to the window under the cursor. [0/1]
        mouse_refocus = true,               -- If disabled, mouse focus won’t switch to the hovered window unless the mouse crosses a window boundary when follow_mouse=1.
        float_switch_override_focus = 2,    -- If enabled (1 or 2), focus will change to the window under the cursor when changing from tiled-to-floating and vice versa. If 2, focus will also follow mouse on float-to-float switches.
        special_fallthrough = false,        -- if enabled, having only floating windows in the special workspace will not block focusing windows in the regular workspace.
        off_window_axis_events = 1,         -- Handles axis events around (gaps/border for tiled, dragarea/border for floated) a focused window. 0 ignores axis events 1 sends out-of-bound coordinates 2 fakes pointer coordinates to the closest point inside the window 3 warps the cursor to the closest point inside the window
        emulate_discrete_scroll = 1,        -- Emulates discrete scrolling from high resolution scrolling events. 0 disables it, 1 enables handling of non-standard events only, and 2 force enables all scroll wheel events to be handled
        touchpad = {                        -- https://wiki.hypr.land/Configuring/Basics/Variables/#touchpad
            disable_while_typing = true,    -- Disable the touchpad while typing.
            natural_scroll = true,          -- Inverts scrolling direction. When enabled, scrolling moves content directly, rather than manipulating a scrollbar.
            scroll_factor = 0.7,            -- Multiplier applied to the amount of scroll movement.
            middle_button_emulation = true, -- Sending LMB and RMB simultaneously will be interpreted as a middle click. This disables any touchpad area that would normally send a middle click based on location.
            -- tap_button_map = "",                -- Sets the tap button mapping for touchpad button emulation. Can be one of lrm (default) or lmr (Left, Middle, Right Buttons). [lrm/lmr]
            clickfinger_behavior = false,   -- Button presses with 1, 2, or 3 fingers will be mapped to LMB, RMB, and MMB respectively. This disables interpretation of clicks based on location on the touchpad.
            tap_to_click = true,            -- Tapping on the touchpad with 1, 2, or 3 fingers will send LMB, RMB, and MMB respectively.
            drag_lock = 0,                  -- When enabled, lifting the finger off while dragging will not drop the dragged item. 0 -> disabled, 1 -> enabled with timeout, 2 -> enabled sticky.
            tap_and_drag = true,            -- sets the tap and drag mode for the touchpad
            flip_x = false,                 -- inverts the horizontal movement of the touchpad
            flip_y = false,                 -- inverts the vertical movement of the touchpad
            drag_3fg = 0,                   -- enables three finger drag, 0 -> disabled, 1 -> 3 fingers, 2 -> 4 fingers
        },
        touchdevice = {                     -- https://wiki.hypr.land/Configuring/Basics/Variables/#touchdevice
            -- transform = -1,
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
    accel_profile =
    "custom 0.1678286744 0.000 0.040 0.080 0.129 0.189 0.250 0.310 0.370 0.448 0.540 0.631 0.723 0.815 0.906 0.998 1.089 1.181 1.273 1.364 1.456 1.548 1.639 1.731 1.823 2.012",
    scroll_points =
    "custom 0.1678286744 0.000 0.040 0.080 0.129 0.189 0.250 0.310 0.370 0.448 0.540 0.631 0.723 0.815 0.906 0.998 1.089 1.181 1.273 1.364 1.456 1.548 1.639 1.731 1.823 2.012",
})

-- ── gestures ─────────────────────────────────────────────────
-- https://wiki.hypr.land/Configuring/Advanced-and-Cool/Gestures
hl.config({
    gestures = { -- https://wiki.hypr.land/Configuring/Basics/Variables/#gestures
        workspace_swipe_distance = 300,                     -- In px, the distance of the touchpad gesture
        workspace_swipe_touch = false,                      -- Enable workspace swiping from the edge of a touchscreen
        workspace_swipe_invert = true,                      -- Invert the direction (touchpad only)    
        workspace_swipe_touch_invert = false,               -- Invert the direction (touchscreen only)
        workspace_swipe_min_speed_to_force = 3,             -- Minimum speed in px per timepoint to force the change ignoring cancel_ratio. Setting to 0 will disable this mechanic.
        workspace_swipe_cancel_ratio = 0.33,                -- How much the swipe has to proceed in order to commence it. (0.7 -> if > 0.7 * distance, switch, if less, revert) [0.0 - 1.0]
        workspace_swipe_create_new = false,                 -- Whether a swipe right on the last workspace should create a new one.
        workspace_swipe_direction_lock = false,             -- If enabled, switching direction will be locked when you swipe past the direction_lock_threshold (touchpad only).
        workspace_swipe_direction_lock_threshold = 18,      -- In px, the distance to swipe before direction lock activates (touchpad only).
        workspace_swipe_forever = false,                    -- If enabled, swiping will not clamp at the neighboring workspaces but continue to the further ones.
        workspace_swipe_use_r = false,                      -- If enabled, swiping will use the r prefix instead of the m prefix for finding workspaces.
        close_max_timeout = 1000,                           -- The timeout for a window to close when using a 1:1 gesture, in ms
    },
})

-- https://wiki.hypr.land/Configuring/Advanced-and-Cool/Gestures/
hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })
hl.gesture({ fingers = 4, direction = "up", action = "fullscreen" })
hl.gesture({ fingers = 3, direction = "down", mods = "ALT", action = "close" })
hl.gesture({ fingers = 3, direction = "up", mods = "SUPER", scale = 1.5, action = "fullscreen" })
hl.gesture({ fingers = 4, direction = "down", mods = "SUPER", action = "special", workspace_name = "scratchpad", disable_inhibit = true })
hl.gesture({ fingers = 3, direction = "swipe", mods = "SUPER", action = "resize" })
hl.gesture({ fingers = 3, direction = "swipe", mods = "CTRL", action = "move" })

-- https://wiki.hypr.land/Configuring/Advanced-and-Cool/Gestures/#cursorzoom
hl.gesture({ fingers = 2, direction = "pinchout", mods = "ALT", action = "cursorZoom", zoom_level = 1.5 })
hl.gesture({ fingers = 2, direction = "pinchin", mods = "ALT", action = "cursorZoom", zoom_level = 0.8, mode = "mult" })

-- ── renderer ─────────────────────────────────────────────────
hl.config({
    xwayland = { -- https://wiki.hypr.land/Configuring/Basics/Variables/#xwayland
        enabled = true,                 -- allow running applications using X11
        use_nearest_neighbor = false,   -- uses the nearest neighbor filtering for xwayland apps, making them pixelated rather than blurry
        force_zero_scaling = false,     -- forces a scale of 1 on xwayland windows on scaled displays.
        create_abstract_socket = false, -- Create the abstract Unix domain socket for XWayland connections. (XWayland restart is required for changes to take effect; Linux only)
    },

    opengl = { -- https://wiki.hypr.land/Configuring/Basics/Variables/#opengl
        nvidia_anti_flicker = true,     -- reduces flickering on nvidia at the cost of possible frame drops on lower-end GPUs. On non-nvidia, this is ignored.
    },

    render = { -- https://wiki.hypr.land/Configuring/Basics/Variables/#render
        direct_scanout = 2,                 -- Enables direct scanout. Direct scanout attempts to reduce lag when there is only one fullscreen application on a screen (e.g. game). It is also recommended to set this to false if the fullscreen application shows graphical glitches. 0 - off, 1 - on, 2 - auto (on with content type ‘game’)
        expand_undersized_textures = true,  -- Whether to expand undersized textures along the edge, or rather stretch the entire texture.
        xp_mode = false,                    -- Disables back buffer and bottom layer rendering.
        ctm_animation = 2,                  -- Whether to enable a fade animation for CTM changes (hyprsunset). 2 means “auto” which disables them on Nvidia.
        cm_enabled = true,                  -- Whether the color management pipeline should be enabled or not (requires a restart of Hyprland to fully take effect)
        send_content_type = true,           -- Report content type to allow monitor profile autoswitch (may result in a black screen during the switch)
        cm_auto_hdr = 1,                    -- Auto-switch to HDR in fullscreen when needed. 0 - off, 1 - switch to cm, hdr, 2 - switch to cm, hdredid
        new_render_scheduling = false,      -- Automatically uses triple buffering when needed, improves FPS on underpowered devices.
        non_shader_cm = 2,                  -- Enable CM without shader. 0 - disable, 1 - whenever possible, 2 - DS and passthrough only, 3 - disable and ignore CM issues 
        non_shader_cm_interop = 2,          -- 0 - external ctm (hyprsunset, etc.) is disabled in fullscreen, 1 - external ctm is enabled in fullscreen, 2 - external ctm is disabled for fullscreen photo/video/game content types
        cm_sdr_eotf = "default",            -- Default transfer function for displaying SDR apps. default - Use default value (Gamma 2.2), gamma22 - Treat unspecified as Gamma 2.2, gamma22force - Treat unspecified and sRGB as Gamma 2.2, srgb - Treat unspecified as sRGB
        commit_timing_enabled = true,       -- Enable commit timing proto. Requires restart
        use_fp16 = 2,                       -- Use FP16 buffers internally. 0 - disabled, 1 - enabled, 2 - enabled in hdr mode
        keep_unmodified_copy = 2,           -- Keep unmodified SDR frame copy for screensharing. 0 - disabled, 1 - on, 2 - auto (enabled in HDR with SDR modifiers). Set to 1 if screenshots are transparent
        use_shader_blur_blend = false       -- Use experimental blurred bg blending (glitched on rotated screens). Set to true if blur is missing with fp16 or keep_unmodified_copy
        -- cm_auto_hdr requires --target-colorspace-hint-mode=source mpv option to work with mpv versions greater than v0.40.0
    },

    quirks = { -- https://wiki.hypr.land/Configuring/Basics/Variables/#quirks
        prefer_hdr = 0, -- Report HDR mode as preferred. 0 - off, 1 - always, 2 - gamescope only
    },
})

-- ── layouts ──────────────────────────────────────────────────
hl.config({
    layout = { -- https://wiki.hypr.land/Configuring/Basics/Variables/#layout
        single_window_aspect_ratio = { 0, 0 }, -- Whenever only a single window is shown on a screen, add padding so that it conforms to the specified aspect ratio. A value like 4 3 on a 16:9 screen will make it a 4:3 window in the middle with padding to the sides.
        single_window_aspect_ratio_tolerance = 0.1, -- sets a tolerance for single_window_aspect_ratio, so that if the padding that would have been added is smaller than the specified fraction of the height or width of the screen, it will not attempt to adjust the window size [0 - 1]
    },
    master = { -- https://wiki.hypr.land/Configuring/Layouts/Master-Layout/#config
        allow_small_split = false,	            -- enable adding additional master windows in a horizontal split style
        special_scale_factor = 0.9,	            -- the scale of the special workspace windows. [0.0 - 1.0]
        mfact = 0.55, 	                        -- the size as a percentage of the master window, for example mfact = 0.70 would mean 70% of the screen will be the master window, and 30% the slave [0.0 - 1.0]
        new_status = "slave", 	                -- master: new window becomes master; slave: new windows are added to slave stack; inherit: inherit from focused window
        new_on_top = false, 	                -- whether a newly open window should be on the top of the stack
        new_on_active = "none",	                -- before, after: place new window relative to the focused window; none: place new window according to the value of new_on_top.
        orientation = "left",	                --  default placement of the master area, can be left, right, top, bottom or center
        slave_count_for_center_master = 2,      -- when using orientation=center, make the master window centered only when at least this many slave windows are open. (Set 0 to always_center_master)
        center_master_fallback = "left", 	    -- Set fallback for center master when slaves are less than slave_count_for_center_master, can be left, right, top, bottom
        smart_resizing = true, 	                -- if enabled, resizing direction will be determined by the mouse’s position on the window (nearest to which corner). Else, it is based on the window’s tiling position.
        drop_at_cursor = true, 	                -- when enabled, dragging and dropping windows will put them at the cursor position. Otherwise, when dropped at the stack side, they will go to the top/bottom of the stack depending on new_on_top.
        always_keep_position = false, 	        -- whether to keep the master window in its configured position when there are no slave windows
        -- focus_master_on_close = false 	        -- whether to focus the master window when the focused window is closed
    },
    dwindle = { -- https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/#config
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
    scrolling = { -- https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/#config
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

-- ── misc & debug ─────────────────────────────────────────────
hl.config({
    ecosystem = { -- https://wiki.hypr.land/Configuring/Basics/Variables/#ecosystem
        no_update_news = false,         -- disable the popup that shows up when you update hyprland to a new version
        no_donation_nag = false,        -- disable the popup that shows up twice a year encouraging to donate
        enforce_permissions = false,    -- whether to enable https://wiki.hypr.land/Configuring/Advanced-and-Cool/Permissions
    },
    misc = { -- https://wiki.hypr.land/Configuring/Basics/Variables/#misc
        disable_hyprland_logo = true,               -- disables the random Hyprland logo / anime girl background. :(
        disable_splash_rendering = false,           -- disables the Hyprland splash rendering. (requires a monitor reload to take effect)
        disable_scale_notification = false,         -- disables notification popup when a monitor fails to set a suitable scale
        col = { splash = 0xffffffff, },             -- Changes the color of the splash text (requires a monitor reload to take effect).
        font_family = "Rajdhani",                   -- Set the global default font to render the text including debug fps/notification, config error messages and etc., selected from system fonts.
        splash_font_family = "",                    -- Changes the font used to render the splash text, selected from system fonts (requires a monitor reload to take effect).
        force_default_wallpaper = 0,                -- Enforce any of the 3 default wallpapers. Setting this to 0 or 1 disables the anime background. -1 means “random”. [-1/0/1/2]
        vrr = 0,                                    -- Controls the VRR (Adaptive Sync) of your monitors. 0 - off, 1 - on, 2 - fullscreen only, 3 - fullscreen with video or game content type [0/1/2/3]
        mouse_move_enables_dpms = false,            -- If DPMS is set to off, wake up the monitors if the mouse moves.
        key_press_enables_dpms = false,             -- If DPMS is set to off, wake up the monitors if a key is pressed.
        name_vk_after_proc = true,                  -- Name virtual keyboards after the processes that create them. E.g. /usr/bin/fcitx5 will have hl-virtual-keyboard-fcitx5.
        always_follow_on_dnd = true,                -- Will make mouse focus follow the mouse when drag and dropping. Recommended to leave it enabled, especially for people using focus follows mouse at 0.
        layers_hog_keyboard_focus = true,           -- If true, will make keyboard-interactive layers keep their focus on mouse move (e.g. wofi, bemenu)
        animate_manual_resizes = false,             -- If true, will animate manual window resizes/moves
        animate_mouse_windowdragging = false,       -- If true, will animate windows being dragged by mouse, note that this can cause weird behavior on some curves
        disable_autoreload = false,                 -- If true, the config will not reload automatically on save, and instead needs to be reloaded with hyprctl reload. Might save on battery.
        enable_swallow = false,                     -- Enable window swallowing
        swallow_regex = "^(foot)$",                 -- The class regex to be used for windows that should be swallowed (usually, a terminal).
        swallow_exception_regex = "",               -- The title regex to be used for windows that should not be swallowed by the windows specified in swallow_regex (e.g. wev). The regex is matched against the parent (e.g. Kitty) window’s title on the assumption that it changes to whatever process it’s running.
        focus_on_activate = true,                   -- Whether Hyprland should focus an app that requests to be focused (an activate request)
        mouse_move_focuses_monitor = true,          -- Whether mouse moving into a different monitor should focus it
        allow_session_lock_restore = false,         -- If true, will allow you to restart a lockscreen app in case it crashes
        session_lock_xray = false,                  -- If true, keep rendering workspaces below your lockscreen
        background_color = "rgb(111111)",           -- Change the background color. (requires enabled disable_hyprland_logo)
        close_special_on_empty = true,              -- Close the special workspace if the last window is removed
        on_focus_under_fullscreen = 2,              -- If there is a fullscreen or maximized window, decide whether a tiled window requested to focus should replace it, stay behind or disable the fullscreen/maximized state. 0 - ignore focus request (keep focus on fullscreen window), 1 - takes over, 2 - unfullscreen/unmaximize [0/1/2]
        exit_window_retains_fullscreen = false,     -- If true, closing a fullscreen window makes the next focused window fullscreen
        initial_workspace_tracking = 1,             -- If enabled, windows will open on the workspace they were invoked on. 0 - disabled, 1 - single-shot, 2 - persistent (all children too)
        middle_click_paste = true,                  -- Whether to enable middle-click-paste (aka primary selection)
        render_unfocused_fps = 30,                  -- The maximum limit for render_unfocused windows’ fps in the background (see also Window-Rules - render_unfocused)
        disable_xdg_env_checks = false,             -- Disable the warning if XDG environment is externally managed
        disable_hyprland_guiutils_check = false,    -- Disable the warning if hyprland-guiutils is not installed
        lockdead_screen_delay = 1000,               -- delay after which the “lockdead” screen will appear in case a lockscreen app fails to cover all the outputs (5 seconds max)
        enable_anr_dialog = true,                   -- whether to enable the ANR (app not responding) dialog when your apps hang
        anr_missed_pings = 5,                       -- how many missed pings before the ANR dialog is shown
        size_limits_tiled = false,                  -- whether to enforce size limits on tiled windows (see also Window-Rules - size_limits)  
        disable_watchdog_warning = false,           -- whether to disable the warning about not using start-hyprland
    },
    debug = { -- https://wiki.hypr.land/Configuring/Basics/Variables/#debug
        overlay = false,                    -- print the debug performance overlay. Disable VFR for accurate results.
        damage_blink = false,               -- (epilepsy warning!) flash areas updated with damage tracking
        gl_debugging = false,               -- enables OpenGL debugging with glGetError and EGL_KHR_debug, requires a restart after changing.
        vfr = true,                         -- enables variable framerate, disables vsync and allows the compositor to render as fast as possible. (requires a restart after changing) Heavily recommended to leave enabled to conserve resources.
        disable_logs = false,               -- disable logging to a file
        disable_time = false,               -- disables time logging
        damage_tracking = 2,                -- redraw only the needed bits of the display. Do not change. (default: full - 2) monitor - 1, none - 0
        enable_stdout_logs = false,         -- enables logging to stdout
        manual_crash = 0,                   -- set to 1 and then back to 0 to crash Hyprland.
        suppress_errors = false,            -- if true, do not display config file parsing errors.
        -- watchdog_timeout = 5,               -- sets the timeout in seconds for watchdog to abort processing of a signal of the main thread. Set to 0 to disable.
        disable_scale_checks = false,       -- disables verification of the scale factors. Will result in pixel alignment and rounding errors.
        error_limit = 5,                    -- limits the number of displayed config file parsing errors.
        error_position = 0,                 -- sets the position of the error bar. top - 0, bottom - 1
        colored_stdout_logs = true,         -- enables colors in the stdout logs.
        pass = false,                       -- enables render pass debugging.
        full_cm_proto = false,              -- claims support for all cm proto features (requires restart)
        invalidate_fp16 = false,            -- Allow fp16 buffer invalidation (invalidation increases performance but produces glitches on some systems). 0 - not allowed, 1 - allowed, 2 - not allowed on nvidia
    },
})

-- ── binds & cursor ───────────────────────────────────────────
hl.config({
    binds = {                                     -- https://wiki.hypr.land/Configuring/Basics/Variables/#binds
        pass_mouse_when_bound = false,            -- If disabled, will not pass the mouse events to apps / dragging windows around if a keybind has been triggered.
        scroll_event_delay = 300,                 -- in ms, how many ms to wait after a scroll event to allow passing another one for the binds.
        workspace_back_and_forth = false,         -- If enabled, an attempt to switch to the currently focused workspace will instead switch to the previous workspace. Akin to i3's auto_back_and_forth.
        hide_special_on_workspace_change = false, -- If enabled, changing the active workspace (including to itself) will hide the special workspace on the monitor where the newly active workspace resides.
        allow_workspace_cycles = false,           -- If enabled, workspaces don’t forget their previous workspace, so cycles can be created by switching to the first workspace in a sequence, then endlessly going to the previous workspace.
        workspace_center_on = 0,                  -- Whether switching workspaces should center the cursor on the workspace (0) or on the last active window for that workspace (1)
        focus_preferred_method = 0,               -- sets the preferred focus finding method when using hl.dsp.focus({ direction })/hl.dsp.window.move({ direction })/etc. 0 - history (recent have priority), 1 - length (longer shared edges have priority)
        ignore_group_lock = false,                -- If enabled, dispatchers like hl.dsp.window.move({ into_group }) and hl.dsp.window.move({ out_of_group }) will ignore lock per group
        movefocus_cycles_fullscreen = false,      -- If enabled, when on a fullscreen window, hl.dsp.focus({ direction }) will cycle fullscreen, if not, it will move the focus in a direction.
        movefocus_cycles_groupfirst = false,      -- If enabled, when in a grouped window, hl.dsp.focus({ direction }) will cycle windows in the groups first, then at each ends of tabs, it’ll move on to other windows/groups
        window_direction_monitor_fallback = true, -- If enabled, moving a window or focus over the edge of a monitor with a direction will move it to the next monitor in that direction.
        disable_keybind_grabbing = false,         -- If enabled, apps that request keybinds to be disabled (e.g. VMs) will not be able to do so.
        allow_pin_fullscreen = false,             -- If enabled, Allow fullscreen to pinned windows, and restore their pinned status afterwards
        drag_threshold = 0,                       -- Movement threshold in pixels for window dragging and c/g bind flags. 0 to disable and grab on mousedown.
    },

    cursor = {                                  -- https://wiki.hypr.land/Configuring/Basics/Variables/#cursor
        invisible = false,                      -- don’t render cursors
        sync_gsettings_theme = true,            -- sync xcursor theme with gsettings, it applies cursor-theme and cursor-size on theme load to gsettings making most CSD gtk based clients use same xcursor theme and size.
        no_hardware_cursors = 2,                -- disables hardware cursors. 0 - use hw cursors if possible, 1 - don’t use hw cursors, 2 - auto (disable when tearing)
        no_break_fs_vrr = 2,                    -- disables scheduling new frames on cursor movement for fullscreen apps with VRR enabled to avoid framerate spikes (may require no_hardware_cursors = true) 0 - off, 1 - on, 2 - auto (on with content type ‘game’)
        min_refresh_rate = 24,                  -- minimum refresh rate for cursor movement when no_break_fs_vrr is active. Set to minimum supported refresh rate or higher
        hotspot_padding = 0,                    -- the padding, in logical px, between screen edges and the cursor
        inactive_timeout = 20,                  -- In seconds, after how many seconds of cursor’s inactivity to hide it. Set to 0 for never.
        no_warps = false,                       -- If true, will not warp the cursor in many cases (focusing, keybinds, etc)
        persistent_warps = true,                -- When a window is refocused, the cursor returns to its last position relative to that window, rather than to the centre.
        warp_on_change_workspace = 0,           -- Move the cursor to the last focused window after changing the workspace. Options: 0 (Disabled), 1 (Enabled), 2 (Force - ignores cursor:no_warps option)
        warp_on_toggle_special = 1,             -- Move the cursor to the last focused window when toggling a special workspace. Options: 0 (Disabled), 1 (Enabled), 2 (Force - ignores cursor:no_warps option)
        default_monitor = "",                   -- the name of a default monitor for the cursor to be set to on startup (see hyprctl monitors for names)
        zoom_factor = 1.0,                      -- the factor to zoom by around the cursor. Like a magnifying glass. Minimum 1.0 (meaning no zoom)
        zoom_rigid = false,                     -- whether the zoom should follow the cursor rigidly (cursor is always centered if it can be) or loosely
        zoom_detached_camera = true,            -- detach the camera from the mouse when zoomed in, only ever moving the camera to keep the mouse in view when it goes past the screen edges
        enable_hyprcursor = true,               -- whether to enable hyprcursor support
        hide_on_key_press = false,              -- Hides the cursor when you press any key until the mouse is moved.
        hide_on_touch = true,                   -- Hides the cursor when the last input was a touch input until a mouse input is done.
        hide_on_tablet = true,                  -- Hides the cursor when the last input was a tablet input until a mouse input is done.
        use_cpu_buffer = 2,                     -- Makes HW cursors use a CPU buffer. Required on Nvidia to have HW cursors. 0 - off, 1 - on, 2 - auto (nvidia only)
        warp_back_after_non_mouse_input = true, -- Warp the cursor back to where it was after using a non-mouse input to move it, and then returning back to mouse.
        zoom_disable_aa = false,                -- disable antialiasing when zooming, which means things will be pixelated instead of blurry
    },
})

-- ── group ────────────────────────────────────────────────────
hl.config({
    group = { -- https://wiki.hypr.land/Configuring/Basics/Variables/#group
        auto_group = true,	                            -- whether new windows will be automatically grouped into the focused unlocked group. Note: if you want to disable auto_group only for specific windows, use the “group barred” window rule instead.
        insert_after_current = true,	                -- whether new windows in a group spawn after current or at group tail
        focus_removed_window = true,	                -- whether Hyprland should focus on the window that has just been moved out of the group
        drag_into_group = 1,	                        -- whether dragging a window into a unlocked group will merge them. Options: 0 (disabled), 1 (enabled), 2 (only when dragging into the groupbar)
        merge_groups_on_drag = true,	                -- whether window groups can be dragged into other groups
        merge_groups_on_groupbar = true, 	            -- whether one group will be merged with another when dragged into its groupbar
        merge_floated_into_tiled_on_groupbar = false,   -- whether dragging a floating window into a tiled window groupbar will merge them
        group_on_movetoworkspace = false, 	            -- whether using movetoworkspace[silent] will merge the window into the workspace’s solitary unlocked group
        col = {
            border_active = "rgba(66ffff00)", 	            -- active group border color
            border_inactive = "rgba(66777700)", 	            -- inactive (out of focus) group border color
            border_locked_active = "rgba(66ff5500)", 	        -- active locked group border color
            border_locked_inactive = "rgba(66775500)", 	    -- inactive locked group border color
        },
        groupbar = { -- https://wiki.hypr.land/Configuring/Basics/Variables/#groupbar
            enabled = true,                         -- enables groupbars
            font_family = "", 	                    -- font used to display groupbar titles, use misc:font_family if not specified
            font_size = 8,	                        -- font size of groupbar title
            font_weight_active = "normal", 	        -- font weight of active groupbar title
            font_weight_inactive = "normal", 	    -- font weight of inactive groupbar title
            gradients = false, 	                    -- enables gradients
            height = 14,	                        -- height of the groupbar
            indicator_gap = 0, 	                    -- height of gap between groupbar indicator and title
            indicator_height = 3, 	                -- height of the groupbar indicator
            stacked = false, 	                    -- render the groupbar as a vertical stack
            priority = 3, 	                        -- sets the decoration priority for groupbars
            render_titles = true, 	                -- whether to render titles in the group bar decoration
            text_offset = 0, 	                    -- adjust vertical position for titles
            text_padding = 0, 	                    -- set horizontal padding for titles
            scrolling = true, 	                    -- whether scrolling in the groupbar changes group active window
            rounding = 1, 	                        -- how much to round the indicator
            rounding_power = 2.0, 	                -- adjusts the curve used for rounding groupbar corners
            gradient_rounding = 2, 	                -- how much to round the gradients
            gradient_rounding_power = 2.0, 	        -- adjusts the curve used for rounding gradient corners
            round_only_edges = true, 	            -- round only the indicator edges of the entire groupbar
            gradient_round_only_edges = true, 	    -- round only the gradient edges of the entire groupbar
            text_color = 0xffffffff, 	            -- color for window titles in the groupbar
            -- text_color_inactive = "[[empty]]", 	            -- color for inactive windows’ titles in the groupbar (if unset, defaults to text_color)
            -- text_color_locked_active = "[[empty]]", 	        -- color for the active window's title in a locked group (if unset, defaults to text_color)
            -- text_color_locked_inactive = "[[empty]]",        -- color for inactive windows’ titles in locked groups (if unset, defaults to text_color_inactive)
            col = {
                active = "rgba(66ffff00)",                -- active group bar background color
                inactive = "rgba(66777700)",              -- inactive (out of focus) group bar background color
                locked_active = "rgba(66ff5500)", 	        -- active locked group bar background color
                locked_inactive = "rgba(66775500)", 	    -- inactive locked group bar background color
            },
            gaps_in = 2, 	                        -- gap size between gradients
            gaps_out = 2, 	                        -- gap size between gradients and window
            keep_upper_gap = true, 	                -- add or remove upper gap
            blur = false 	                        -- applies blur to the groupbar indicators and gradients
        }
    },
})
