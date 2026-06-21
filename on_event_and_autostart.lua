-- ▄▄▄▄▄ ▄▄ ▄▄ ▄▄▄▄▄ ▄▄  ▄▄ ▄▄▄▄▄▄    ▄▄▄  ▄▄ ▄▄ ▄▄▄▄▄▄ ▄▄▄   ▄▄▄▄ ▄▄▄▄▄▄ ▄▄▄  ▄▄▄▄  ▄▄▄▄▄▄ 
-- ██▄▄  ██▄██ ██▄▄  ███▄██   ██     ██▀██ ██ ██   ██  ██▀██ ███▄▄   ██  ██▀██ ██▄█▄   ██   
-- ██▄▄▄  ▀█▀  ██▄▄▄ ██ ▀██   ██     ██▀██ ▀███▀   ██  ▀███▀ ▄▄██▀   ██  ██▀██ ██ ██   ██   
-- https://wiki.hypr.land/Useful-Utilities/Systemd-start/#autostart
-- https://wiki.hypr.land/Configuring/Advanced-and-Cool/Expanding-functionality/
-- https://wiki.hypr.land/Configuring/Basics/Autostart/
-- hl.exec_cmd() will spawn an asynchronous process, so there is no need for & disown at the end.
-- In the same vein, you can spawn processes on exit by listening to hyprland.shutdown.
-- See more about hl.on over at https://wiki.hypr.land/Configuring/Advanced-and-Cool/Expanding-functionality
hl.on("hyprland.start", function()
    hl.exec_cmd("awww-daemon") -- Start awww-daemon for animated wallpapers
    hl.exec_cmd("vicinae server") -- Start vicinae server for animated wallpapers

    hl.exec_cmd("nm-applet --indicator") -- Start network-manager applet
    hl.exec_cmd("udiskie --appindicator") -- Start automounter for removable media, like usb, thumb drives, mobile phones, digital cameras, etc.
    hl.exec_cmd("gnome-keyring-daemon -rd") -- Start gnome-keyring
    hl.exec_cmd("foot --server") -- Start foot server, this will reduced startup time and reduced memory footprint
    hl.exec_cmd("ags run &> ~/.cache/ags/logs") -- Start ags for on screen display and other utilities
    hl.exec_cmd("~/.config/ags/scripts/on-workspace-ipc") -- Start on workspace ipc script, this will send ipc events to ags for workspace changes, so you can have a workspace indicator in your bar.
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP") -- https://wiki.hyprland.org/FAQ/#some-of-my-apps-take-a-really-long-time-to-open
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1") -- Enable polkit-gnome for run root-application with normal user like gparted.
    hl.exec_cmd("wl-paste --watch clipman store --no-persist") -- Start clipboard manager wayland
    hl.exec_cmd("mpd") -- Start music player daemon, if you use one. Remove if you don't use mpd or replace with your preferred music player daemon. You can also start a separate mpris daemon if your music player doesn't support mpris out of the box, such as mpd-mpris.
    hl.exec_cmd("mpd-mpris")
end)