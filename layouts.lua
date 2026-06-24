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
        focus_master_on_close = false 	        -- whether to focus the master window when the focused window is closed
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