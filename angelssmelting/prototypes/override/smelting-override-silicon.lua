local OV = angelsmods.functions.OV

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["silicon"].ingot = true
  angelsmods.trigger.smelting_products["silicon"].mono = true
  angelsmods.trigger.smelting_products["silicon"].wafer = true
  angelsmods.trigger.smelting_products["silicon"].powder = true
end

-------------------------------------------------------------------------------
-- ORE ------------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.ores["silicon"] then
else
  angelsmods.functions.hide("quartz")
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["silicon"].ingot then
  if angelsmods.trigger.smelting_products["silicon"].mono or angelsmods.trigger.smelting_products["silicon"].wafer then
  else
    -- no need for molten recipe
    angelsmods.functions.hide("liquid-molten-silicon")
    OV.disable_recipe({ "molten-silicon-smelting" })
    OV.disable_technology({
      "angels-silicon-casting-2",--[[, "angels-silicon-casting-3"]]
    })
    -- swap tech tier 1 to ingots
    for _, property in pairs({ "icon", "icon_size", "icons", "localised_name" }) do
      data.raw.technology["angels-silicon-smelting-1"][property] =
        util.table.deepcopy(data.raw.technology["angels-silicon-smelting-2"][property])
    end
  end
else
  angelsmods.functions.hide("processed-silica")
  angelsmods.functions.hide("pellet-silica")
  angelsmods.functions.hide("liquid-trichlorosilane")
  angelsmods.functions.hide("gas-silane")
  angelsmods.functions.hide("ingot-silicon")
  angelsmods.functions.hide("liquid-molten-silicon")
  OV.disable_recipe({ "silica-ore-processing", "silica-processed-processing" })
  OV.disable_recipe({ "processed-silicon-smelting", "pellet-silicon-smelting" })
  OV.disable_recipe({ "silicon-ore-smelting", "liquid-trichlorosilane-smelting", "gas-silane-smelting" })
  OV.disable_recipe({ "molten-silicon-smelting" })
  OV.disable_technology({ "angels-silicon-smelting-1", "angels-silicon-smelting-2", "angels-silicon-smelting-3" })
  OV.disable_technology({
    "angels-silicon-casting-2",--[[, "angels-silicon-casting-3"]]
  })
end

-------------------------------------------------------------------------------
-- MONO -----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["silicon"].mono then
  if mods["bobplates"] then
    OV.global_replace_item("silicon", "angels-mono-silicon")
    angelsmods.functions.hide("silicon")
    --angelsmods.functions.move_item("silicon", "angels-silicon-casting", "k")
    --data.raw["item"]["silicon"].icon = "__angelssmeltinggraphics__/graphics/icons/plate-silicon.png"
    --data.raw["item"]["silicon"].icon_size = 32
    OV.disable_recipe({ "bob-silicon-plate" })
  end
else
  angelsmods.functions.hide("angels-mono-silicon-seed")
  angelsmods.functions.hide("angels-quartz-crucible")
  angelsmods.functions.hide("angels-mono-silicon")
  OV.disable_recipe({
    "angels-mono-silicon-seed",
    "angels-mono-silicon-1",
    "angels-mono-silicon-2",
    "angels-quartz-crucible",
  })
end

-------------------------------------------------------------------------------
-- WAFER ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["silicon"].wafer then
  if mods["bobplates"] then
    OV.global_replace_item("angels-silicon-wafer", "bob-silicon-wafer")
    angelsmods.functions.hide("angels-silicon-wafer")
    OV.disable_recipe({ "angels-silicon-wafer" })

    angelsmods.functions.move_item("bob-silicon-wafer", "angels-silicon-casting", "l[angels-silicon-wafer]")
    OV.patch_recipes({
      {
        name = "bob-silicon-wafer",
        energy_required = 1,
        results = {
          { type = "item", name = "bob-silicon-wafer", amount = 6 },
        },
        subgroup = "angels-silicon-casting",
        order = "l[angels-silicon-wafer]",
      },
    })
    OV.add_prereq("silicon-processing", "angels-silicon-smelting-1")
  end
else
  angelsmods.functions.hide("angels-silicon-wafer")
  OV.disable_recipe({ "angels-silicon-wafer" })
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["silicon"].powder then
  if mods["bobplates"] then
    OV.global_replace_item("powder-silicon", "bob-silicon-powder")
    angelsmods.functions.override_item_conditions({
      value = 200,
      list = {
        "bob-silicon-powder",
      },
    })
    angelsmods.functions.hide("powder-silicon")
    OV.disable_recipe({ "powder-silicon" })

    angelsmods.functions.move_item("bob-silicon-powder", "angels-silicon", "g")
    data.raw.item["bob-silicon-powder"].icon = "__angelssmeltinggraphics__/graphics/icons/powder-silica.png"
    data.raw.item["bob-silicon-powder"].icon_size = 64
    data.raw.item["bob-silicon-powder"].localised_name = { "item-name.powder-silicon" }
    OV.patch_recipes({
      {
        name = "bob-silicon-powder",
        subgroup = "angels-silicon",
        energy_required = 0.5,
        ingredients = {
          { "!!" },
          { "ingot-silicon", 1 },
        },
        order = "g[bobs-silicon]",
      },
    })
    angelsmods.functions.remove_productivity("bob-silicon-powder")
    OV.add_prereq("silicon-processing", "angels-silicon-smelting-1")
  end

  if mods["bobplates"] then
    -- silicon powder derivatives
    angelsmods.functions.move_item("bob-silicon-nitride", "angels-silicon-casting", "m[bobs-silicon]-a")
    angelsmods.functions.move_item("bob-silicon-carbide", "angels-silicon-casting", "m[bobs-silicon]-b")
    OV.patch_recipes({
      { name = "bob-silicon-nitride", subgroup = "angels-silicon-casting", order = "m[bobs-silicon]-a" },
      { name = "bob-silicon-carbide", subgroup = "angels-silicon-casting", order = "m[bobs-silicon]-b" },
    })
  end
else
  angelsmods.functions.hide("bob-powder-silicon")
  OV.disable_recipe({ "bob-powder-silicon" })
end
