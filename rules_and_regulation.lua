-- https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Tags
hl.window_rule({ match = { class = "^(firefox.*|librewolf|qutebrowser|chromium|google-chrome|zen-browser|Brave-browser|thorium|epiphany|ladybird|Mullvad%sBrowser|tor-browser|floorp|waterfox|orion)$" }, tag = "+browser" })
hl.window_rule({ match = { class = "^(code.*|VSCodium|jetbrain-.+|nvimport|nvim-qt|emacs.*|neovide|sublime_text|Helix|zed|cursor|lapce|eclipse|QtCreator|clion|pycharm|intellij-idea|webstorm|rider|android-studio)$" }, tag = "+code" })
hl.window_rule({ match = { class = "^(foot.*|kitty|Alacritty|wezterm|ghostty|rio|tabby|blackbox|gnome-terminal|xfce4-terminal|konsole)$" }, tag = "+terminal" })
hl.window_rule({ match = { class = "^(steam|lutris|heroic|gamescope|com.heroicgameslauncher.hgl|wine|wine64|bottles|proton)$" }, tag = "+game" })
hl.window_rule({ match = { class = "^(retroarch|mGBA|Snes9x|PCSX2|dolphin-emu|yuzu|ryujinx|mgba.*|citra|rpcs3|duckstation|ppsspp|minecraft.*|PrismLauncher|flycast|xemu|vita3k)$" }, tag = "+game-emulator" })
hl.window_rule({ match = { class = "^(mpv|vlc|celluloid|clapper|haruna|spotify|audacious|rhythmbox|amberol|io.github.CelluloidPlayer|plex.*|jellyfin.*|mpd|ncmpcpp)$" }, tag = "+media" })
hl.window_rule({ match = { class = "^(obs|com.obsproject.Studio|Gimp.*|krita|Inkscape|blender|darktable|kdenlive|audacity|resolve|freecad|reaper|lmms|ardour)$" }, tag = "+creative-media" })
hl.window_rule({ match = { class = "^(discord|vesktop|Slack|TelegramDesktop|org.telegram.desktop|Element|signal|whatsapp.*|teams|zoom|matrix-.+|thunderbird|evolution|revolt|matrix-ext)$" }, tag = "+communication" })
hl.window_rule({ match = { class = "^(thunar|nemo|pcmanfm.*|org.gnome.Nautilus|dolphin|yazi|ranger|doublecmd|krusader|file-roller|ark)$" }, tag = "+file-manager" })
hl.window_rule({ match = { class = "^(KeePassXC|Bitwarden|1Password|proton-pass|seahorse|gnome-passwords.*|keepass)$" }, tag = "+password-manager" })
hl.window_rule({ match = { class = "^(imv|nsxiv|feh|org.gnome.eog|Sxiv|swayimg|loupe|qview|gwenview|digikam|viewnior|shotwell)$" }, tag = "+image-viewer" })
hl.window_rule({ match = { class = "^(qcalculate-gtk|org.gnome.Calculator|nm-connection-editor|pinentry-.+|pavucontrol|blueman-manager|corectrl|gparted.*|htop|btop|nvtop|wihotspot)$" }, tag = "+utility" })
hl.window_rule({ match = { class = "^(libreoffice-.+|soffice|wps|et|wpp|okular|org.gnome.Papers|zathura|evince|pdfarranger|sioyek)$" }, tag = "+office-docs" })
hl.window_rule({ match = { class = "^(Waydroid|waydroid..*|com.android..*)$" }, tag = "+android-env" })
hl.window_rule({ match = { class = "^(virt-manager|virt-viewer|qemu.*|VirtualBox.*|proxmox.*|vmware.*)$" }, tag = "+virtualization" })
hl.window_rule({ match = { class = "^(wireshark|burpsuite|owasp-zap|ghidra|ida.*|radare2|iaito|maltego|nmap|remmina|rustdesk|anydesk|cutter|gns3|packettracer|ettercap|aircrack-ng|hashcat|john|nikto|dirb|gobuster|wpscan|hydra|metasploit.*|sqlmap|armitage|cobaltstrike|ncat|zenmap|bloodhound)$" }, tag = "+hacking" })
hl.window_rule({ match = { class = "^(dbeaver|beekeeper-companion|pgadmin.*|mongodb-compass|mysql-workbench|redisinsight)$" }, tag = "+database" })
hl.window_rule({ match = { xdg_tag = ".+" }, tag = "+has-xdgtag" })

-- Workspace Routing
hl.window_rule({ match = { tag = "browser" }, workspace = "1"})
hl.window_rule({ match = { tag = "code" }, workspace = "2"})
hl.window_rule({ match = { tag = "terminal" }, workspace = "3"})
hl.window_rule({ match = { tag = "game" }, workspace = "7"})
hl.window_rule({ match = { tag = "game-emulator" }, workspace = "7"})
hl.window_rule({ match = { tag = "communication" }, workspace = "5"})
hl.window_rule({ match = { tag = "creative-media" }, workspace = "9"})
hl.window_rule({ match = { tag = "file-manager" }, workspace = "special"})

-- Special Workspace
hl.workspace_rule({ workspace = "special", on_created_empty = "thunar" })

-- Window Rules
hl.window_rule({ match = { tag = "file-manager"}, float = true, animation = "slide down", center = true, persistent_size = true})
hl.window_rule({ match = { tag = "terminal" }, no_blur = true, no_shadow = true, })
hl.window_rule({ match = { tag = "password-manager" }, focus_on_activate = false, no_screen_share = true})
hl.window_rule({ match = { tag = "utility" }, float = true, center = true, persistent_size = true })
hl.window_rule({ match = { tag = "game" }, focus_on_activate = true, })
hl.window_rule({ match = { tag = "creative-media" }, render_unfocused = true, })
hl.window_rule({ match = { class = "^(gamescope|steam_app_.*)$" }, sync_fullscreen = true, })
hl.window_rule({ match = { class = "^(steam|gamescope)$" }, no_shortcuts_inhibit = true, })
hl.window_rule({ match = { class = "^(steamwebhelper)$" }, group = "barred", }) -- Do not automatically group into the focused unlocked group.
hl.window_rule({ match = { tag = "game-emulator" }, nearest_neighbor = true, })
hl.window_rule({ match = { tag = "media" }, idle_inhibit = "focus", })
hl.window_rule({ match = { class = "^(Ibus-ui-gtk3)$" }, no_focus = true, no_follow_mouse = true})
hl.window_rule({ match = { class = ".*" }, suppress_event = "maximize", }) -- Suppress maximize events on all window
hl.window_rule({ match = { class = "^(cs2)$" }, immediate = true, }) -- forces allow tearing
hl.window_rule({ match = { class = "^(pinentry-.*)$" }, stay_focused = true, })
hl.window_rule({ match = { tag = "image-viewer" }, keep_aspect_ratio = true, float = true, center = true, persistent_size = true})

-- Picture-in-Picture and Sharing indicator rules
hl.window_rule({ match = { title = "^(Picture-in-Picture)$" }, float = true, pin = true})
hl.window_rule({ match = { title = "^(.*Sharing Indicator.*)$" }, no_initial_focus = true, float = true, move = "0 0", no_anim = true, suppress_event = "activa activatefocuste"})


hl.window_rule({ name = "fix-xwayland-drags", match = { class = "^$", title = "^$", xwayland = true, float = true, fullscreen = false, pin = false, }, no_focus = true, })

-- Layer rules
hl.layer_rule({ match = { namespace = "^(workspace-info-osd)$" }, animation = "slide up", })
hl.layer_rule({ match = { namespace = "^(wofi|vicinae)$" }, no_anim = true, order = 20, dim_around = true})
hl.layer_rule({ match = { namespace = "^(notifications|swaync-control-center)$" }, above_lock = 1, })
hl.layer_rule({ match = { namespace = "^(notifications)$" }, no_screen_share = true, })

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


-- Per-workspace layouts
hl.workspace_rule({ workspace = "1", layout = "scrolling" })