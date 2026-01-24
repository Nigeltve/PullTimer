---@type Core
local core = select(2, ...)

local unitType = "player"

core.utils = {
    IsNumber = function(self, val)
        if val == nil then
            return true, 10
        end

        local num = tonumber(val)
        if not num then
            return false, -1
        else 
            return true, num
        end
    end,

    InGroup = function(self)
        return UnitInAnyGroup(unitType)
    end,

    IsLeader = function(self)
        return UnitIsGroupLeader(unitType) or UnitIsGroupAssistant(unitType)
    end
}
