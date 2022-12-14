---@meta
---@diagnostic disable

--$Factorio 1.1.61
--$Overlay 5
--$Section LuaCircuitNetwork
-- This file is automatically generated. Edits will be overwritten.

---A circuit network associated with a given entity, connector, and wire type.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaCircuitNetwork.html)
---@class LuaCircuitNetwork:LuaObject
---[R]  
---The circuit connector ID on the associated entity this network was gotten from.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaCircuitNetwork.html#LuaCircuitNetwork.circuit_connector_id)
---@field circuit_connector_id defines.circuit_connector_id 
---[R]  
---The number of circuits connected to this network.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaCircuitNetwork.html#LuaCircuitNetwork.connected_circuit_count)
---@field connected_circuit_count uint 
---[R]  
---The entity this circuit network reference is associated with
---
---[View documentation](https://lua-api.factorio.com/latest/LuaCircuitNetwork.html#LuaCircuitNetwork.entity)
---@field entity LuaEntity 
---[R]  
---The circuit networks ID.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaCircuitNetwork.html#LuaCircuitNetwork.network_id)
---@field network_id uint 
---[R]  
---The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaCircuitNetwork.html#LuaCircuitNetwork.object_name)
---@field object_name string 
---[R]  
---The circuit network signals last tick. `nil` if there are no signals.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaCircuitNetwork.html#LuaCircuitNetwork.signals)
---@field signals Signal[] 
---[R]  
---Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaCircuitNetwork.html#LuaCircuitNetwork.valid)
---@field valid boolean 
---[R]  
---The wire type this network is associated with.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaCircuitNetwork.html#LuaCircuitNetwork.wire_type)
---@field wire_type defines.wire_type 
local LuaCircuitNetwork={
---[View documentation](https://lua-api.factorio.com/latest/LuaCircuitNetwork.html#LuaCircuitNetwork.get_signal)
---@param signal SignalID@The signal to read.
---@return int@The current value of the signal.
get_signal=function(signal)end,
---All methods and properties that this object supports.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaCircuitNetwork.html#LuaCircuitNetwork.help)
---@return string
help=function()end,
}


