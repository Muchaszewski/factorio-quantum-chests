-- Singulairty
data:extend{
  {
    type = "item",
    name = "singularity",
    icon = "__quantum-chests__/graphics/singularity.png",
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "raw-material",
    order = "l[singularity]",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "singularity",
    enabled = false,
    category = "crafting",
    energy_required = 3.2,
    ingredients = {{"stone", 1000}},
    result = "singularity"
  },
}

data:extend{
  {
    -- Item Group
    type = "item-subgroup",
    name = "quantum-group",
    group = "logistics",
    order = "hb"
  },
}

-- Quantym chest
local quantumChestItem = table.deepcopy(data.raw["item"]["steel-chest"])

quantumChestItem.name = "quantum-chest"
quantumChestItem.icons = {
  {
    icon = "__quantum-chests__/graphics/hr-quantum-chest-icon.png",
    icon_size = 64, icon_mipmaps = 4,
  },
}
quantumChestItem.place_result = "quantum-chest"
quantumChestItem.order = "c[storage]-c[logistics-quantum-chest--]"
quantumChestItem.subgroup = "quantum-group"

local quantumChestEntity = table.deepcopy(data.raw["container"]["steel-chest"])

quantumChestEntity.name = quantumChestItem.name
quantumChestEntity.place_result = quantumChestItem.name
quantumChestEntity.minable = {mining_time = 0.2, result = quantumChestItem.name}
quantumChestEntity.inventory_size = 10
quantumChestEntity.picture =
{
  layers =
  {
    {
      filename = "__quantum-chests__/graphics/hr-quantum-chest-entity.png",
      priority = "extra-high",
      width = 130,
      height = 130,
      shift = util.by_pixel(0, 0),
      scale = 0.5,
    },
    {
      filename = "__quantum-chests__/graphics/hr-quantum-chest-mask.png",
      priority = "extra-high",
      width = 130,
      height = 130,
      shift = util.by_pixel(0, 0),
      scale = 0.5,
    },
  }
}
quantumChestEntity.map_color = {r=0.8,g=0,b=0.8,a=1}
quantumChestEntity.friendly_map_color = {r=0.8,g=0,b=0.8,a=1}

local boxSize = 0.65
local selectSize = boxSize * 1.4
quantumChestEntity.collision_box = {{-boxSize, -boxSize}, {boxSize, boxSize}}
quantumChestEntity.selection_box = {{-selectSize, -selectSize}, {selectSize, selectSize}}

local recipe = table.deepcopy(data.raw["recipe"]["steel-chest"])
recipe.enabled = false
recipe.name = quantumChestItem.name
recipe.ingredients = {
  {"singularity", 1},
  {"steel-plate", 10},
  {"processing-unit", 5},
  {"accumulator", 1}
}
recipe.result = quantumChestItem.name

data:extend{quantumChestItem, quantumChestEntity, recipe}

-- Logisitcs chests
function extendLogisticsChest(mode, color)

  local chestItem = table.deepcopy(quantumChestItem)
  chestItem.name = "quantum-logistics-chest-" .. mode
  chestItem.icons = {
    {
      icon = "__quantum-chests__/graphics/hr-quantum-chest-icon.png",
      tint = {color[1] / 255, color[2] / 255, color[3] /255, color[4] /255},
      icon_size = 64, icon_mipmaps = 4,
    },
  }
  chestItem.place_result = "quantum-logistics-chest-" .. mode
  chestItem.order = "c[storage]-c[logistics-quantum-chest-".. mode .. "]"

  local chestEntity = table.deepcopy(quantumChestEntity)
  chestEntity.type = "logistic-container"
  chestEntity.name = "quantum-logistics-chest-" .. mode
  chestEntity.logistic_mode = mode
  chestEntity.minable.result = "quantum-logistics-chest-" .. mode

  if mode == "storage" then
    chestEntity.max_logistic_slots = 1
  end

  chestEntity.picture.layers[2].tint = {color[1] / 255, color[2] / 255, color[3] /255, color[4] /255}
  
  local recipe = table.deepcopy(recipe)
  recipe.enabled = false
  recipe.name = "quantum-logistics-chest-" .. mode
  recipe.ingredients = {
    {"quantum-chest", 1},
    {"electronic-circuit", 3},
    {"advanced-circuit", 1}
  }
  recipe.result = "quantum-logistics-chest-" .. mode
  data:extend{chestItem, chestEntity, recipe}
end

extendLogisticsChest("passive-provider", {172,19,15,255})
extendLogisticsChest("active-provider", {176,116,204,255})
extendLogisticsChest("storage", {232,200,81,255})
extendLogisticsChest("requester", {131,200,223,255})
extendLogisticsChest("buffer", {24,221,136,255})

-- technology
data:extend{
  {
    type = "technology",
    name = "quantum-storage",
    icon_size = 64, icon_mipmaps = 4,
    icon = "__quantum-chests__/graphics/singularity.png",
    prerequisites = {"advanced-electronics-2", "logistic-robotics"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "singularity"
      },
      {
        type = "unlock-recipe",
        recipe = "quantum-chest"
      },
      {
        type = "unlock-recipe",
        recipe = "quantum-logistics-chest-passive-provider"
      },
      {
        type = "unlock-recipe",
        recipe = "quantum-logistics-chest-active-provider"
      },
      {
        type = "unlock-recipe",
        recipe = "quantum-logistics-chest-storage"
      },
      {
        type = "unlock-recipe",
        recipe = "quantum-logistics-chest-requester"
      },
      {
        type = "unlock-recipe",
        recipe = "quantum-logistics-chest-buffer"
      }
    },
    unit =
    {
      count = 300,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 30
    },
    order = "a-d-c"
  }
}