StellarisCore Linux Hyprland configuration split into small source files.

### Layout
- `scripts/`: helper scripts used by binds and config
- `shader/`: shader files

### Generated Files
These files generated/managed by another program and ignored in git:
- `reserved-space.conf`
- `workspaces.conf`
- `monitors.conf`

See `.gitignore` for the current list.

#### Notes
Paths in sourced files assume the live config is available at `~/.config/hypr`; Reload after changes with `hyprctl reload` or the configured reload bind.