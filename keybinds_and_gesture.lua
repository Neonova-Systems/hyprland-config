-- https://wiki.hypr.land/Configuring/Basics/Binds/
-- https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/

-- Mouse Wheel
hl.bind("SUPER + SHIFT + mouse_up", hl.dsp.focus({ workspace = "e-1" }))
hl.bind("SUPER + SHIFT + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind("SUPER + CONTROL + mouse_up", hl.dsp.layout("move +col")) -- Scolling layout
hl.bind("SUPER + CONTROL + mouse_down", hl.dsp.layout("move -col")) -- Scrolling layout