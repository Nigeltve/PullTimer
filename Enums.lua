---@type Core
local core = select(2, ...)

core.enums = core.enums or {}

---@type Commands
core.enums.commands = {
	breakTimer = "break",
	clear  = "clear"
}
