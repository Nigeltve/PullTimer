---@class Utils: table
---@field IsNumber fun(self: Utils, val: any) : boolean, number
---@field InGroup fun(self: Utils) : boolean
---@field IsLeader fun(self: Utils) : boolean

---@class Logger: table
---@field canDebug boolean
---@field logLevel number
---@field Say fun(self: Logger, msg: string)
---@field LogInfo fun(self: Logger, msg: string)
---@field LogDebug fun(self: Logger, msg: string)
---@field LogWarning fun(self: Logger, msg: string)
---@field LogError fun(self: Logger, msg: string)
---@field Dump fun(self: Logger, tbl: table)

---@class Enums: table
---@field commands Commands

---@class Commands: table
---@field breakTimer string
---@field clear string

---@class Core: table
---@field logger Logger
---@field utils Utils
---@field enums Enums
