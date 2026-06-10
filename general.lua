-- https://wiki.hypr.land/Configuring/Basics/Variables/#variable-types

hl.config({ -- You are allowed multiple hl.config() invocations, each one will update just what you pass into it
    general = { -- https://wiki.hypr.land/Configuring/Basics/Variables/#general
        border_size = 0,
        gaps_in = { top = 4, right = 5, bottom = 4, left = 5 },
        gaps_out = 10,
        float_gaps = -1,
        gaps_workspaces = 0,
        col = {
            inactive_border = "rgba(00000000)",
            active_border = "rgba(00000000)",
            nogroup_border = "rgba(00000000)",
            nogroup_border_active = "rgba(00000000)",
        },
        layout = "master",
        no_focus_fallback = false,
        resize_on_border = true,
        extend_border_grab_area = 15,
        hover_icon_on_border = true,
        allow_tearing = false,
        resize_corner = 0,
        modal_parent_blocking = true,
        locale = "",
        snap = {
            enabled = true,
            window_gap = 20,
            monitor_gap = 20,
            border_overlap = false,
            respect_gaps = false,
        },
    }
})
