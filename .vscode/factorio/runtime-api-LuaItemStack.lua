---@meta
---@diagnostic disable

--$Factorio 1.1.61
--$Overlay 5
--$Section LuaItemStack
-- This file is automatically generated. Edits will be overwritten.

---A reference to an item and count owned by some external entity.
---
---**Note:** In most instances this is a simple reference as in: it points at a specific slot in an inventory and not the item in the slot.
---
---**Note:** In the instance this references an item on a [LuaTransportLine](https://lua-api.factorio.com/latest/LuaTransportLine.html) the reference is only guaranteed to stay valid (and refer to the same item) as long as nothing changes the transport line.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html)
---@class LuaItemStack:LuaObject
---[RW]  
---The active blueprint index for this blueprint book. May be `nil`.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.active_index)
---
---_Can only be used if this is BlueprintBookItem_
---@field active_index uint 
---[RW]  
---If the label for this item can be manually changed. When false the label can only be changed through the API.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.allow_manual_label_change)
---
---_Can only be used if this is ItemWithLabel_
---@field allow_manual_label_change boolean 
---[RW]  
---Number of bullets left in the magazine.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.ammo)
---
---_Can only be used if this is AmmoItem_
---@field ammo uint 
---[RW]  
---If absolute snapping is enabled on this blueprint item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.blueprint_absolute_snapping)
---
---_Can only be used if this is BlueprintItem_
---@field blueprint_absolute_snapping boolean 
---[RW]  
---Icons of a blueprint item, blueprint book, deconstruction item or upgrade planner. An item that doesn't have icons returns nil on read and throws error on write.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.blueprint_icons)
---
---_Can only be used if this is BlueprintItem_
---@field blueprint_icons BlueprintSignalIcon[] 
---[RW]  
---The offset from the absolute grid or nil if absolute snapping is not enabled.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.blueprint_position_relative_to_grid)
---
---_Can only be used if this is BlueprintItem_
---@field blueprint_position_relative_to_grid TilePosition 
---[RW]  
---The snapping grid size in this blueprint item or nil if snapping is not enabled.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.blueprint_snap_to_grid)
---
---_Can only be used if this is BlueprintItem_
---@field blueprint_snap_to_grid TilePosition 
---[RW]  
---If this item is a spidertron remote that has a spidertron bound to it, it returns the connected spider-vehicle entity, `nil` otherwise.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.connected_entity)
---@field connected_entity LuaEntity 
---[R]  
---Raw materials required to build this blueprint. Result is a dictionary mapping each item prototype name to the required count.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.cost_to_build)
---
---_Can only be used if this is BlueprintItem_
---@field cost_to_build {[string]: uint} 
---[RW]  
---Number of items in this stack.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.count)
---@field count uint 
---[RW]  
---The custom description this item-with-tags. This is shown over the normal item description if this is set to a non-empty value.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.custom_description)
---@field custom_description LocalisedString 
---[R]  
---The default icons for a blueprint item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.default_icons)
---
---_Can only be used if this is BlueprintItem_
---@field default_icons BlueprintItemIcon[] 
---[RW]  
---Durability of the contained item. Automatically capped at the item's maximum durability.
---
---**Note:** When used on a non-tool item, the value of this attribute is `nil`.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.durability)
---@field durability double 
---[R]  
---The number of entity filters this deconstruction item supports.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.entity_filter_count)
---
---_Can only be used if this is DeconstructionItem_
---@field entity_filter_count uint 
---[RW]  
---The blacklist/whitelist entity filter mode for this deconstruction item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.entity_filter_mode)
---
---_Can only be used if this is DeconstructionItem_
---@field entity_filter_mode defines.deconstruction_item.entity_filter_mode 
---[RW]  
---The entity filters for this deconstruction item. The attribute is a sparse array with the keys representing the index of the filter. All strings in this array must be entity prototype names that don't have the `"not-deconstructable"` flag set and are either a `cliff` or marked as `minable`.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.entity_filters)
---@field entity_filters string[] 
---[RW]  
---If this item extends the inventory it resides in (provides its contents for counts, crafting, insertion). Only callable on items with inventories.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.extends_inventory)
---
---_Can only be used if this is ItemWithInventory_
---@field extends_inventory boolean 
---[R]  
---The equipment grid of this item or `nil` if this item doesn't have a grid.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.grid)
---@field grid LuaEquipmentGrid 
---[RW]  
---How much health the item has, as a number in range [0, 1].
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.health)
---@field health float 
---[R]  
---If this is an armor item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.is_armor)
---@field is_armor boolean 
---[R]  
---If this is a blueprint item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.is_blueprint)
---@field is_blueprint boolean 
---[R]  
---If this is a blueprint book item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.is_blueprint_book)
---@field is_blueprint_book boolean 
---[R]  
---If this is a deconstruction tool item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.is_deconstruction_item)
---@field is_deconstruction_item boolean 
---[R]  
---If this is an item with entity data item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.is_item_with_entity_data)
---@field is_item_with_entity_data boolean 
---[R]  
---If this is an item with inventory item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.is_item_with_inventory)
---@field is_item_with_inventory boolean 
---[R]  
---If this is an item with label item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.is_item_with_label)
---@field is_item_with_label boolean 
---[R]  
---If this is an item with tags item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.is_item_with_tags)
---@field is_item_with_tags boolean 
---[R]  
---If this is a mining tool item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.is_mining_tool)
---@field is_mining_tool boolean 
---[R]  
---If this is a module item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.is_module)
---@field is_module boolean 
---[R]  
---If this is a repair tool item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.is_repair_tool)
---@field is_repair_tool boolean 
---[R]  
---If this is a selection tool item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.is_selection_tool)
---@field is_selection_tool boolean 
---[R]  
---If this is a tool item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.is_tool)
---@field is_tool boolean 
---[R]  
---If this is a upgrade item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.is_upgrade_item)
---@field is_upgrade_item boolean 
---[R]  
---The unique identifier for this item if it has one, `nil` otherwise. Note that this ID stays the same no matter where the item is moved to.
---
---Only these types of items have unique IDs:  
---- `"armor"`  
---- `"spidertron-remote"`  
---- `"selection-tool"`  
---- `"copy-paste-tool"`  
---- `"upgrade-item"`  
---- `"deconstruction-item"`  
---- `"blueprint"`  
---- `"blueprint-book"`  
---- `"item-with-entity-data"`  
---- `"item-with-inventory"`  
---- `"item-with-tags"`
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.item_number)
---@field item_number uint 
---[RW]  
---The current label for this item. Nil when none.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.label)
---
---_Can only be used if this is ItemWithLabel_
---@field label string 
---[RW]  
---The current label color for this item. Nil when none.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.label_color)
---
---_Can only be used if this is ItemWithLabel_
---@field label_color Color 
---[R]  
---Prototype name of the item held in this stack.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.name)
---@field name string 
---[R]  
---The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.object_name)
---@field object_name string 
---[RW]  
---The insertion mode priority this ItemWithInventory uses when items are inserted into an inventory it resides in. Only callable on items with inventories.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.prioritize_insertion_mode)
---
---_Can only be used if this is ItemWithInventory_
---@field prioritize_insertion_mode string 
---[R]  
---Prototype of the item held in this stack.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.prototype)
---@field prototype LuaItemPrototype 
---[RW]
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.tags)
---
---_Can only be used if this is ItemWithTags_
---@field tags Tags 
---[R]  
---The number of tile filters this deconstruction item supports.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.tile_filter_count)
---
---_Can only be used if this is DeconstructionItem_
---@field tile_filter_count uint 
---[RW]  
---The blacklist/whitelist tile filter mode for this deconstruction item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.tile_filter_mode)
---
---_Can only be used if this is DeconstructionItem_
---@field tile_filter_mode defines.deconstruction_item.tile_filter_mode 
---[RW]  
---The tile filters for this deconstruction item. The attribute is a sparse array with the keys representing the index of the filter. All strings in this array must be tile prototype names.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.tile_filters)
---@field tile_filters string[] 
---[RW]  
---The tile selection mode for this deconstruction item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.tile_selection_mode)
---
---_Can only be used if this is DeconstructionItem_
---@field tile_selection_mode defines.deconstruction_item.tile_selection_mode 
---[RW]  
---If this deconstruction item is set to allow trees and rocks only.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.trees_and_rocks_only)
---
---_Can only be used if this is DeconstructionItem_
---@field trees_and_rocks_only boolean 
---[R]  
---Type of the item prototype.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.type)
---@field type string 
---[R]  
---Is this object valid? This Lua object holds a reference to an object within the game engine. It is possible that the game-engine object is removed whilst a mod still holds the corresponding Lua object. If that happens, the object becomes invalid, i.e. this attribute will be `false`. Mods are advised to check for object validity if any change to the game state might have occurred between the creation of the Lua object and its access.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.valid)
---@field valid boolean 
---[R]  
---Is this valid for reading? Differs from the usual `valid` in that `valid` will be `true` even if the item stack is blank but the entity that holds it is still valid.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.valid_for_read)
---@field valid_for_read boolean 
local LuaItemStack={
---Add ammo to this ammo item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.add_ammo)
---
---_Can only be used if this is AmmoItem_
---@param amount float@Amount of ammo to add.
add_ammo=function(amount)end,
---Add durability to this tool item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.add_durability)
---
---_Can only be used if this is ToolItem_
---@param amount double@Amount of durability to add.
add_durability=function(amount)end,
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.build_blueprint)
---@class LuaItemStack.build_blueprint_param
---Surface to build on
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.build_blueprint)
---@field surface SurfaceIdentification 
---Force to use for the building
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.build_blueprint)
---@field force ForceIdentification 
---The position to build at
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.build_blueprint)
---@field position MapPosition 
---When true, anything that can be built is else nothing is built if any one thing can't be built
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.build_blueprint)
---@field force_build? boolean 
---The direction to use when building
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.build_blueprint)
---@field direction? defines.direction 
---If chunks covered by fog-of-war are skipped.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.build_blueprint)
---@field skip_fog_of_war? boolean 
---The player to use if any. If provided [defines.events.on_built_entity](https://lua-api.factorio.com/latest/defines.html#defines.events.on_built_entity) will also be fired on successful entity creation.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.build_blueprint)
---@field by_player? PlayerIdentification 
---If true; [defines.events.script_raised_built](https://lua-api.factorio.com/latest/defines.html#defines.events.script_raised_built) will be fired on successful entity creation. Note: this is ignored if by_player is provided.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.build_blueprint)
---@field raise_built? boolean 


---**Note:** Built entities can be come invalid between the building of the blueprint and the function returning if by_player or raise_built is used and one of those events invalidates the entity.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.build_blueprint)
---@param param LuaItemStack.build_blueprint_param
---@return LuaEntity[]@Array of created ghosts
build_blueprint=function(param)end,
---Would a call to [LuaItemStack::set_stack](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.set_stack) succeed?
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.can_set_stack)
---@param stack ItemStackIdentification?@Stack that would be set, possibly `nil`.
---@return boolean
can_set_stack=function(stack)end,
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.cancel_deconstruct_area)
---@class LuaItemStack.cancel_deconstruct_area_param
---Surface to cancel deconstruct on
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.cancel_deconstruct_area)
---@field surface SurfaceIdentification 
---Force to use for canceling deconstruction
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.cancel_deconstruct_area)
---@field force ForceIdentification 
---The area to deconstruct
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.cancel_deconstruct_area)
---@field area BoundingBox 
---If chunks covered by fog-of-war are skipped.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.cancel_deconstruct_area)
---@field skip_fog_of_war? boolean 
---The player to use if any.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.cancel_deconstruct_area)
---@field by_player? PlayerIdentification 


---Cancel deconstruct the given area with this deconstruction item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.cancel_deconstruct_area)
---@param param LuaItemStack.cancel_deconstruct_area_param
cancel_deconstruct_area=function(param)end,
---Clear this item stack.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.clear)
clear=function()end,
---Clears this blueprint item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.clear_blueprint)
---
---_Can only be used if this is BlueprintItem_
clear_blueprint=function()end,
---Clears all settings/filters on this deconstruction item resetting it to default values.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.clear_deconstruction_item)
---
---_Can only be used if this is DeconstructionItem_
clear_deconstruction_item=function()end,
---Clears all settings/filters on this upgrade item resetting it to default values.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.clear_upgrade_item)
---
---_Can only be used if this is UpgradeItem_
clear_upgrade_item=function()end,
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.create_blueprint)
---@class LuaItemStack.create_blueprint_param
---Surface to create from
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.create_blueprint)
---@field surface SurfaceIdentification 
---Force to use for the creation
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.create_blueprint)
---@field force ForceIdentification 
---The bounding box
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.create_blueprint)
---@field area BoundingBox 
---When true, blueprintable tiles are always included in the blueprint. When false they're only included if no entities exist in the setup area.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.create_blueprint)
---@field always_include_tiles? boolean 
---When true, entities are included in the blueprint. Defaults to true.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.create_blueprint)
---@field include_entities? boolean 
---When true, modules are included in the blueprint. Defaults to true.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.create_blueprint)
---@field include_modules? boolean 
---When true, station names are included in the blueprint. Defaults to false.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.create_blueprint)
---@field include_station_names? boolean 
---When true, trains are included in the blueprint. Defaults to false.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.create_blueprint)
---@field include_trains? boolean 
---When true, train fuel is included in the blueprint, Defaults to true.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.create_blueprint)
---@field include_fuel? boolean 


---Sets up this blueprint using the found blueprintable entities/tiles on the surface.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.create_blueprint)
---@param param LuaItemStack.create_blueprint_param
---@return {[uint]: LuaEntity}@The blueprint entity index to source entity mapping.
create_blueprint=function(param)end,
---Creates the equipment grid for this item if it doesn't exist and this is an item-with-entity-data that supports equipment grids.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.create_grid)
---
---_Can only be used if this is ItemWithEntityData_
---@return LuaEquipmentGrid
create_grid=function()end,
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.deconstruct_area)
---@class LuaItemStack.deconstruct_area_param
---Surface to deconstruct on
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.deconstruct_area)
---@field surface SurfaceIdentification 
---Force to use for the deconstruction
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.deconstruct_area)
---@field force ForceIdentification 
---The area to deconstruct
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.deconstruct_area)
---@field area BoundingBox 
---If chunks covered by fog-of-war are skipped.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.deconstruct_area)
---@field skip_fog_of_war? boolean 
---The player to use if any.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.deconstruct_area)
---@field by_player? PlayerIdentification 


---Deconstruct the given area with this deconstruction item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.deconstruct_area)
---@param param LuaItemStack.deconstruct_area_param
deconstruct_area=function(param)end,
---Remove ammo from this ammo item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.drain_ammo)
---
---_Can only be used if this is AmmoItem_
---@param amount float@Amount of ammo to remove.
drain_ammo=function(amount)end,
---Remove durability from this tool item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.drain_durability)
---
---_Can only be used if this is ToolItem_
---@param amount double@Amount of durability to remove.
drain_durability=function(amount)end,
---Export a supported item (blueprint, blueprint-book, deconstruction-planner, upgrade-planner, item-with-tags) to a string.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.export_stack)
---@return string@The exported string
export_stack=function()end,
---The entities in this blueprint.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.get_blueprint_entities)
---
---_Can only be used if this is BlueprintItem_
---@return BlueprintEntity[]?
get_blueprint_entities=function()end,
---Gets the number of entities in this blueprint item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.get_blueprint_entity_count)
---
---_Can only be used if this is BlueprintItem_
---@return uint
get_blueprint_entity_count=function()end,
---Gets the given tag on the given blueprint entity index in this blueprint item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.get_blueprint_entity_tag)
---
---_Can only be used if this is BlueprintItem_
---@param index uint@The entity index.
---@param tag string@The tag to get.
---@return AnyBasic?
get_blueprint_entity_tag=function(index,tag)end,
---Gets the tags for the given blueprint entity index in this blueprint item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.get_blueprint_entity_tags)
---
---_Can only be used if this is BlueprintItem_
---@param index uint
---@return Tags
get_blueprint_entity_tags=function(index)end,
---A list of the tiles in this blueprint.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.get_blueprint_tiles)
---
---_Can only be used if this is BlueprintItem_
---@return Tile[]?
get_blueprint_tiles=function()end,
---Gets the entity filter at the given index for this deconstruction item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.get_entity_filter)
---
---_Can only be used if this is DeconstructionItem_
---@param index uint
---@return string?
get_entity_filter=function(index)end,
---Access the inner inventory of an item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.get_inventory)
---@param inventory defines.inventory@Index of the inventory to access, which can only be [defines.inventory.item_main](https://lua-api.factorio.com/latest/defines.html#defines.inventory.item_main).
---@return LuaInventory?@`nil` if there is no inventory with the given index.
get_inventory=function(inventory)end,
---Gets the filter at the given index for this upgrade item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.get_mapper)
---
---_Can only be used if this is UpgradeItem_
---@param index uint@The index of the mapper to read.
---@param type string@`"from"` or `"to"`.
---@return UpgradeFilter
get_mapper=function(index,type)end,
---Gets the tag with the given name or returns `nil` if it doesn't exist.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.get_tag)
---
---_Can only be used if this is ItemWithTags_
---@param tag_name string
---@return AnyBasic?
get_tag=function(tag_name)end,
---Gets the tile filter at the given index for this deconstruction item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.get_tile_filter)
---
---_Can only be used if this is DeconstructionItem_
---@param index uint
---@return string?
get_tile_filter=function(index)end,
---All methods and properties that this object supports.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.help)
---@return string
help=function()end,
---Import a supported item (blueprint, blueprint-book, deconstruction-planner, upgrade-planner, item-with-tags) from a string.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.import_stack)
---@param data string@The string to import
---@return int@0 if the import succeeded with no errors. -1 if the import succeeded with errors. 1 if the import failed.
import_stack=function(data)end,
---Is this blueprint item setup? I.e. is it a non-empty blueprint?
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.is_blueprint_setup)
---@return boolean
is_blueprint_setup=function()end,
---Removes a tag with the given name.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.remove_tag)
---
---_Can only be used if this is ItemWithTags_
---@param tag string
---@return boolean@If the tag existed and was removed.
remove_tag=function(tag)end,
---Set new entities to be a part of this blueprint.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.set_blueprint_entities)
---
---_Can only be used if this is BlueprintItem_
---@param entities BlueprintEntity[]@The new blueprint entities.
set_blueprint_entities=function(entities)end,
---Sets the given tag on the given blueprint entity index in this blueprint item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.set_blueprint_entity_tag)
---
---_Can only be used if this is BlueprintItem_
---@param index uint@The entity index.
---@param tag string@The tag to set.
---@param value AnyBasic@The tag value to set or `nil` to clear the tag.
set_blueprint_entity_tag=function(index,tag,value)end,
---Sets the tags on the given blueprint entity index in this blueprint item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.set_blueprint_entity_tags)
---
---_Can only be used if this is BlueprintItem_
---@param index uint@The entity index
---@param tags Tags
set_blueprint_entity_tags=function(index,tags)end,
---Set specific tiles in this blueprint.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.set_blueprint_tiles)
---
---_Can only be used if this is BlueprintItem_
---@param tiles Tile[]@Tiles to be a part of the blueprint.
set_blueprint_tiles=function(tiles)end,
---Sets the entity filter at the given index for this deconstruction item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.set_entity_filter)
---
---_Can only be used if this is DeconstructionItem_
---@param index uint
---@param filter string|LuaEntityPrototype|LuaEntity@Setting to nil erases the filter.
---@return boolean@Whether the new filter was successfully set (ie. was valid).
set_entity_filter=function(index,filter)end,
---Sets the module filter at the given index for this upgrade item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.set_mapper)
---
---_Can only be used if this is UpgradeItem_
---@param index uint@The index of the mapper to set.
---@param type string@`from` or `to`.
---@param filter UpgradeFilter@The filter to set or `nil`
set_mapper=function(index,type,filter)end,
---Set this item stack to another item stack.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.set_stack)
---@param stack ItemStackIdentification?@Item stack to set it to. Omitting this parameter or passing `nil` will clear this item stack, as if [LuaItemStack::clear](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.clear) was called.
---@return boolean@Whether the stack was set successfully. Returns `false` if this stack was not [valid for write](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.can_set_stack).
set_stack=function(stack)end,
---Sets the tag with the given name and value.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.set_tag)
---
---_Can only be used if this is ItemWithTags_
---@param tag_name string
---@param tag AnyBasic
set_tag=function(tag_name,tag)end,
---Sets the tile filter at the given index for this deconstruction item.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.set_tile_filter)
---
---_Can only be used if this is DeconstructionItem_
---@param index uint
---@param filter string|LuaTilePrototype|LuaTile@Setting to nil erases the filter.
---@return boolean@Whether the new filter was successfully set (ie. was valid).
set_tile_filter=function(index,filter)end,
---Swaps this item stack with the given item stack if allowed.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.swap_stack)
---@param stack LuaItemStack
---@return boolean@Whether the 2 stacks were swapped successfully.
swap_stack=function(stack)end,
---Transfers the given item stack into this item stack.
---
---[View documentation](https://lua-api.factorio.com/latest/LuaItemStack.html#LuaItemStack.transfer_stack)
---@param stack ItemStackIdentification
---@return boolean@`true` if the full stack was transferred.
transfer_stack=function(stack)end,
}


