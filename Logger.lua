---@type Core
local core = select(2, ...)

---@type Logger
core.logger = {
	canDebug = true,
	logLevel = 0,

	Say = function(self, msg)
		print("|cff7dff86  Puller:|r " .. tostring(msg))
	end,

	LogInfo = function(self, msg)
		if (not self.canDebug) or self.logLevel > 3 then
			return
		end
		print("|cff7dfff2 Puller INFO:|r " .. tostring(msg))
	end,

	LogDebug = function(self, msg)
		if (not self.canDebug) or self.logLevel > 2 then
			return
		end
		print("|cff7da0ff Puller Debug:|r " .. tostring(msg))
	end,

	LogWarning = function(self, msg)
		if (not self.canDebug) or self.logLevel > 1 then
			return
		end
		print("|cfff4ff7d Puller Warning:|r " .. tostring(msg))
	end,

	LogError = function(self, msg)
		if (not self.canDebug) or self.logLevel > 0 then
			return
		end
		print("|cffff3737 Puller Error:|r " .. tostring(msg))
	end,
	
	Dump = function(self, tbl)
		if tbl == nil then
			print("Table is nil")
			return
		end
		DevTools_Dump(tbl)
	end
}
