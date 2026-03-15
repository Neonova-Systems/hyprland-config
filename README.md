# Hyprland Config

Personal Hyprland configuration split into small source files.

## Layout

- `hyprland.conf`: main entry point
- `env.conf`: environment variables
- `monitors.conf`: monitor definitions
- `workspaces.conf`: workspace rules and assignments
- `windowrule.conf`: window and layer rules
- `variables/`: Hyprland variable groups
- `keybinds.conf`: keybind manifest
- `keybinds/`: keybind section files and submaps
- `scripts/`: helper scripts used by binds and config
- `shader/`: shader files

## Generated Files

These files may be generated or managed by another program and are ignored in git:

- `reserved-space.conf`
- `workspaces.conf`
- `monitors.conf`

See `.gitignore` for the current list.

## Keybind Structure

`keybinds.conf` only sources bind files.

Top-level sections:

- `keybinds/core.conf`
- `keybinds/navigation.conf`
- `keybinds/workspaces.conf`
- `keybinds/monitors.conf`
- `keybinds/utilities.conf`

Submaps:

- `keybinds/submap/mouse-mode.conf`
- `keybinds/submap/context-menu-spawn-widget.conf`
- `keybinds/submap/manage-window.conf`
- `keybinds/submap/resize.conf`
- `keybinds/submap/power.conf`

## Helper Scripts

- `scripts/focus-or-launch`: focus an app if already open, otherwise launch it
- `scripts/handle-mousecursor`: keyboard-driven cursor movement helper

## Notes

- Paths in sourced files assume the live config is available at `~/.config/hypr`.
- Reload after changes with `hyprctl reload` or the configured reload bind.