local Module = {}

local MAX_ZOOM = 3
local MIN_ZOOM = 1
local ZOOM_TOGGLE_FACTOR = 1.5

---@param offset number
---@return nil
---Bind to use cursor zoom like a glass magnifier
function Module.zoom(offset)
    local current = hl.get_config("cursor.zoom_factor")
    if offset ~= nil then
        current = current + offset
    elseif current ~= MIN_ZOOM then
        current = MIN_ZOOM
    else
        current = ZOOM_TOGGLE_FACTOR
    end
    current = math.max(MIN_ZOOM, math.min(MAX_ZOOM, current))
    hl.config({ cursor = { zoom_factor = current } })
end

---@param bind_table table{srolling, dwindle, monocle, master}
---@return function
---Use this one to bind different actions to the same key binding based on current layout
function Module.layout_bind(bind_table)
    return function ()
        local workspace = hl.get_active_special_workspace() or hl.get_active_workspace()
        if not workspace then
            return
        end
        local layout = workspace.tiled_layout
        if bind_table[layout] then
            hl.dispatch(bind_table[layout])
        end
    end
end

return Module