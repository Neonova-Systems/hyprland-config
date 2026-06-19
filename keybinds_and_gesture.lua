-- https://wiki.hypr.land/Configuring/Basics/Binds/
-- https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/

-- Mouse Wheel
hl.bind("SUPER + SHIFT + mouse_up", hl.dsp.focus({ workspace = "e-1" }))
hl.bind("SUPER + SHIFT + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + mouse_up", hl.dsp.layout("focus up")) -- Scolling layout
hl.bind("SUPER + mouse_down", hl.dsp.layout("focus down")) -- Scrolling layout