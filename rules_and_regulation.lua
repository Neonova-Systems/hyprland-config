-- https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

hl.window_rule({ name = "suppress-maximize-events", match = { class = ".*" }, suppress_event = "maximize", })
hl.window_rule({ name = "fix-xwayland-drags", match = { class = "^$", title = "^$", xwayland = true, float = true, fullscreen = false, pin = false, }, no_focus = true, })

hl.window_rule({ name = "monitorrule", match = { class = "silent_kitty" }, monitor = "HEADLESS-3 silent", })
hl.window_rule({ name = "monitorrule-override", match = { class = "kitty_exec_override" }, workspace = "2", })
hl.window_rule({ name = "tag-mutation", match = { class = "kitty_tag_mutate" }, workspace = "2", })

hl.window_rule({ name = "window-rule-focus-on-activate", match = { class = ".*" }, focus_on_activate = true, })
hl.window_rule({ name = "window-rule-focus-on-activate-off", match = { class = "^(KeePassXC|Bitwarden|1Password)$" }, focus_on_activate = false, })
hl.window_rule({ name = "window-rule-no-initial-focus", match = { title = "^(.*Sharing Indicator.*)$" }, no_initial_focus = true, })
hl.window_rule({ name = "window-rule-no-screen-share", match = { class = "^(KeePassXC|Bitwarden|1Password)$" }, no_screen_share = true, })
hl.window_rule({ name = "window-rule-focus-on-activate-games", match = { class = "^(steam|lutris|heroic|gamescope)$" }, focus_on_activate = true, })

hl.window_rule({ name = "window-rule-allows-input", match = { xwayland = true, class = "^(steam|lutris|heroic|steamwebhelper|gamescope|com.heroicgameslauncher.hgl)$" }, allows_input = true, })
hl.window_rule({ name = "window-rule-dim-around", match = { class = "^(pavucontrol|blueman-manager)$" }, dim_around = true, })
hl.window_rule({ name = "window-rule-stay-focused", match = { class = "^(pinentry-.*)$" }, stay_focused = true, })

hl.window_rule({ name = "window-rule-nearest-neighbor", match = { class = "^(retroarch|mGBA|Snes9x|PCSX2)$" }, nearest_neighbor = true, })
hl.window_rule({ name = "window-rule-immediate", match = { class = "^(cs2)$" }, immediate = true, })

hl.window_rule({ name = "window-rule-pin-pip", match = { title = "^(Picture-in-Picture)$" }, pin = true, })
hl.window_rule({ name = "window-rule-float-pip", match = { title = "^(Picture-in-Picture|.*Sharing Indicator.*)$" }, float = true, })

hl.window_rule({ name = "window-rule-float-popups", match = { class = "^(pavucontrol|nemo|pcmanfm|thunar|file-roller|gucharmap)$" }, float = true, })
hl.window_rule({ name = "window-rule-slide-right", match = { class = "^(nemo|pcmanfm|thunar|file-roller)$" }, animation = "slide right", })
hl.window_rule({ name = "window-rule-slide-up", match = { class = "^(firefox|librewolf|google-chrome|qutebrowser)$" }, animation = "slide up", })
hl.window_rule({ name = "window-rule-move-popups", match = { class = "^(nemo|pcmanfm|thunar|file-roller|gucharmap)$" }, move = "(cursor_x-(window_w*0.5)) (cursor_y-(window_h*0.5))", })

hl.window_rule({ name = "window-rule-no-focus-ibus", match = { class = "^(Ibus-ui-gtk3)$" }, no_focus = true, })
hl.window_rule({ name = "window-rule-idle-inhibit", match = { class = "^(mpv)$" }, idle_inhibit = "focus", })
hl.window_rule({ name = "window-rule-tag-media", match = { class = "^(mpv|vlc|celluloid)$" }, tag = "+media", })
hl.window_rule({ name = "window-rule-opacity-media", match = { tag = "media" }, opacity = "1.0 override 0.92 override 1.0 override", })
hl.window_rule({ name = "window-rule-border-media", match = { tag = "media" }, border_color = "rgb(8ec07c)", })
hl.window_rule({ name = "window-rule-sharing-move", match = { title = "^(.*Sharing Indicator.*)$" }, move = "0 0", })

hl.window_rule({ name = "window-rule-rounding-zero", match = { initial_title = "^(win0|win1)$", class = "^$" }, rounding = 0, })

hl.window_rule({ name = "window-rule-sync-fullscreen", match = { class = "^(gamescope|steam_app_.*)$" }, sync_fullscreen = true, })
hl.window_rule({ name = "window-rule-no-shortcuts-inhibit", match = { class = "^(steam|gamescope)$" }, no_shortcuts_inhibit = true, })
hl.window_rule({ name = "window-rule-render-unfocused", match = { class = "^(obs|com.obsproject.Studio)$" }, render_unfocused = true, })

hl.window_rule({ name = "window-rule-content-photo", match = { class = "^(imv|nsxiv|feh)$" }, content = "photo", })
hl.window_rule({ name = "window-rule-content-video", match = { class = "^(mpv|vlc|celluloid)$" }, content = "video", })
hl.window_rule({ name = "window-rule-content-game", match = { class = "^(gamescope|steam_app_.*)$" }, content = "game", })

hl.window_rule({ name = "window-rule-center-utils", match = { class = "^(qalculate-gtk|org.gnome.Calculator|nm-connection-editor)$" }, float = true, center = true, persistent_size = true, rounding = 18, })
hl.window_rule({ name = "window-rule-clean-terminals", match = { class = "^(foot|kitty|Alacritty)$" }, no_blur = true, no_shadow = true, })
hl.window_rule({ name = "window-rule-keep-aspect", match = { class = "^(imv|nsxiv|feh)$" }, keep_aspect_ratio = true, })
hl.window_rule({ name = "window-rule-no-follow-mouse", match = { class = "^(Ibus-ui-gtk3)$" }, no_follow_mouse = true, })
hl.window_rule({ name = "window-rule-no-anim-sharing", match = { title = "^(.*Sharing Indicator.*)$" }, no_anim = true, })

hl.window_rule({ name = "window-rule-fullscreen-state", match = { fullscreen_state_internal = 2 }, border_color = "rgb(f38ba8)", })

hl.window_rule({ name = "window-rule-fullscreen-state-client", match = { fullscreen_state_client = 2 }, border_color = "rgb(a6e3a1)", })

hl.window_rule({ name = "window-rule-fullscreen-opacity", match = { fullscreen = true }, opacity = "1.0 override 0.95 override", })
hl.window_rule({ name = "window-rule-pin-dim", match = { pin = true }, dim_around = true, })
hl.window_rule({ name = "window-rule-group-border", match = { group = true }, border_color = "rgb(f9e2af)", })
hl.window_rule({ name = "window-rule-sharing-suppress", match = { title = "^(.*Sharing Indicator.*)$" }, suppress_event = "activate activatefocus", })

hl.window_rule({ name = "window-rule-group-barred", match = { class = "^(steamwebhelper)$" }, group = "barred", })
hl.window_rule({ name = "window-rule-xdg-tag", match = { xdg_tag = ".+" }, tag = "+has-xdgtag", })
hl.layer_rule({ name = "layer-rule-wofi-vicinae", match = { namespace = "^(wofi|vicinae|main-dashboard)$" }, blur = true, ignore_alpha = 0.35, })
hl.layer_rule({ name = "layer-rule-wofi-vicinae-popups", match = { namespace = "^(wofi|vicinae)$" }, blur_popups = true, dim_around = true, })

hl.layer_rule({ name = "layer-rule-gtk-layer-shell", match = { namespace = "gtk-layer-shell" }, blur = true, ignore_alpha = 0.38, })

hl.layer_rule({ name = "layer-rule-workspace-info", match = { namespace = "^(workspace-info-osd)$" }, animation = "slide up", })
hl.layer_rule({ name = "layer-rule-bottomlayer", match = { namespace = "bottomlayer" }, blur = true, ignore_alpha = 0.18, })

hl.layer_rule({ name = "layer-rule-no-anim-wofi", match = { namespace = "^(wofi|vicinae)$" }, no_anim = true, order = 20, })
hl.layer_rule({ name = "layer-rule-above-lock", match = { namespace = "^(notifications|swaync-control-center)$" }, above_lock = 1, })
hl.layer_rule({ name = "layer-rule-no-screen-share", match = { namespace = "^(notifications)$" }, no_screen_share = true, })

hl.window_rule({
    name = "smart-gaps-1",
    match = { float = false, workspace = "n[s:window] w[tv1]" },
    border_size = 0,
    rounding = 0,
})

hl.window_rule({
    name = "smart-gaps-2",
    match = { float = false, workspace = "n[s:window] f[1]" },
    border_size = 0,
    rounding = 0,
})

hl.workspace_rule({ workspace = "n[s:window] w[tv1]", gaps_out = { top = 0, right = 0, bottom = 0, left = 0 }, gaps_in = { top = 0, right = 0, bottom = 0, left = 0 } })
hl.workspace_rule({ workspace = "n[s:window] f[1]", gaps_out = { top = 0, right = 0, bottom = 0, left = 0 }, gaps_in = { top = 0, right = 0, bottom = 0, left = 0 } })