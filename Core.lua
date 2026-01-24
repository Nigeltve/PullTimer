---@type Core
local core = select(2, ...)


SLASH_PULLER1 = '/pull'

function SlashCmdList.PULLER(msg, _)
    local args = {}

    for token in string.gmatch(msg or "", "%S+") do
        table.insert(args, strlower(token))
    end

    if not core.utils:InGroup() then
        core.logger:LogError("You are not in a group")
        return
    end

    if not core.utils:IsLeader() then
        core.logger:LogError("You must be group leader or assistant to start timers")
        return
    end

    if args[1] == core.enums.commands.breakTimer then
        core.logger:LogInfo("Setting Break Timer")
        local breakDuration = 300
        if args[2] then
            local isNumber, minutes = core.utils:IsNumber(args[2])
            if isNumber then
                breakDuration = minutes * 60
            end
        end
        C_PartyInfo.DoCountdown(breakDuration)
        return
    end

    if args[1] == core.enums.commands.clear then
        core.logger:LogInfo("Clearing Timer")
        C_PartyInfo.DoCountdown(0)
        return
    end

    local isNumber, len = core.utils:IsNumber(args[1])

    if not isNumber then
        core.logger:LogWarning("You did not provide a number")
        return
    end

    C_PartyInfo.DoCountdown(len)
end
