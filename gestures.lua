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
hl.gesture({ fingers = 3, direction = "left", scale = 1.5, action = "float" })
hl.gesture({ fingers = 4, direction = "down", mods = "SUPER", action = "special", workspace_name = "scratchpad", disable_inhibit = true })
hl.gesture({ fingers = 3, direction = "swipe", mods = "SUPER", action = "resize" })
hl.gesture({ fingers = 3, direction = "swipe", mods = "CTRL", action = "move" })

-- https://wiki.hypr.land/Configuring/Advanced-and-Cool/Gestures/#cursorzoom
hl.gesture({ fingers = 2, direction = "pinchout", mods = "ALT", action = "cursorZoom", zoom_level = 1.5 })
hl.gesture({ fingers = 2, direction = "pinchin", mods = "ALT", action = "cursorZoom", zoom_level = 0.8, mode = "mult" })