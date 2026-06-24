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
hl.animation({ leaf = "windowsOut", enabled = true, speed = 10, bezier = "easeInOut"})
hl.animation({ leaf = "workspaces", enabled = true, speed = 3, spring = "bounce", style = "slidefade" })

hl.animation({ leaf = "fade", enabled = true, speed = 5, bezier = "smooth_ease" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 5, bezier = "easeInOut" })
hl.animation({ leaf = "fadeSwitch", enabled = false, speed = 4, bezier = "smooth_ease" })
hl.animation({ leaf = "fadeShadow", enabled = true, speed = 4, bezier = "smooth_ease" })
hl.animation({ leaf = "fadeDim", enabled = true, speed = 3, bezier = "smooth_ease" })