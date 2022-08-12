require("list")

chests_types = {
    "quantum-chest",
    "quantum-logistics-chest-passive-provider",
    "quantum-logistics-chest-active-provider",
    "quantum-logistics-chest-storage",
    "quantum-logistics-chest-requester",
    "quantum-logistics-chest-buffer"
}

-- When user is about to build something, fetch one itme from the quantum chest if possible
script.on_event(defines.events.on_pre_build,
  function(event)
    local player = game.players[event.player_index]
    local playerInventory = player.get_main_inventory()
    local cursor_stack = player.cursor_stack
    if not cursor_stack.valid_for_read then return end -- Don't know why sometimes the stack becomes invalid and causes error.

    local cursor_stack_name = cursor_stack.name

    if not (cursor_stack.count <= 1) then return end
    if not (playerInventory.get_item_count(cursor_stack_name) <= 1) then return end

    local cursor_stack_prototype = cursor_stack.prototype
    InsertFromQuantumChest(cursor_stack_name, playerInventory)
  end
)

-- Insert item from quantum chest into player's inventory
function InsertFromQuantumChest(cursor_stack_name, playerInventory)
    local chestInventoryWithItem = nil
    for k, chest in pairs(getChests().array) do
        if  chest.valid == true then
            local chestInventory = chest.get_inventory(defines.inventory.chest)
            if chestInventory.get_item_count(cursor_stack_name) > 0 then
                chestInventoryWithItem = chestInventory
                break
            end
        end
    end
    if chestInventoryWithItem == nil then 
        game.print({"message.item-missing-in-chest"}, game.item_prototypes[cursor_stack_name].localised_name)
        return 
    end
    if playerInventory.insert {
        name = cursor_stack_name,
        count = 1
    } > 0 then
        chestInventoryWithItem.remove {
            name = cursor_stack_name, 
            count = 1
        }
    end
end

-- Function on quantum chest removed/mined/destroyed
function OnChestsRemoved(event)
    local entity = event.created_entity or event.entity
    for k, v in pairs(chests_types) do
        if entity and entity.valid and entity.name == v then
            List.removeItem(getChests(), entity)
        end
    end
  end

-- Function called on quantum chest built
function OnChestCreated(event)
    local entity = event.created_entity or event.entity
    for k, v in pairs(chests_types) do
        if entity and entity.valid and entity.name == v then
            List.insert(getChests(), entity)
        end
    end
  end

-- Get quantum chests metatable
function getChests()
    if global.QuantumChests == nil then
        init_chests()
    end
    return global.QuantumChests
end

-- Init chests form the world if required
function init_chests()
    -- gather all quantum chests on every surface in case another mod added some
    global.QuantumChests = getmetatable(List:new())
    for _, surface in pairs(game.surfaces) do
        for k, v in pairs(chests_types) do
            local chests = surface.find_entities_filtered{ name = v }
            for _, chest in pairs(chests) do
                List.insert(global.QuantumChests, chest)
            end
        end

    end
end

do -- Init --
    local function init_events()
        local function init_events_names(filters) 
            script.on_event(defines.events.on_built_entity, OnChestCreated, filters)
            script.on_event(defines.events.on_robot_built_entity, OnChestCreated, filters)
            script.on_event(defines.events.on_entity_died, OnChestsRemoved, filters)
            script.on_event(defines.events.on_player_mined_entity, OnChestsRemoved, filters)
            script.on_event(defines.events.on_robot_mined_entity, OnChestsRemoved, filters)
    
            script.on_event({defines.events.script_raised_built, defines.events.script_raised_revive}, OnChestCreated)
        end
        local genFilter = {}
        for k, v in pairs(chests_types) do
            table.insert(genFilter, { filter="name", name=v })
        end
        init_events_names(genFilter)
    end

    -- Callback of the on_load event, which is invoked when an existing game is loaded.
    -- The global table should not be touched here.
    script.on_load(function()
        init_events()
      end)

    -- Callback of the on_init event, which is invoked when a new game is started.
    script.on_init(function()
        getChests()
        init_events()
    end)

    -- Callback of the on_configuration_changed event, which is invoked when the game version or any active mods changed.
    script.on_configuration_changed(function(data)
        getChests()
        init_events()
      end)
end