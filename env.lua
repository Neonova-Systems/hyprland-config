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