data:extend(
{
--MECHANICAL PARTS
	{
    type = "recipe",
    name = "mechanical-parts-1",
    energy_required = 3,
	category = "crafting",
	enabled = "true",
    ingredients ={
		{type = "item", name = "angels-gear", amount = 1},
	},
    result = "mechanical-parts-1",
	icon_size = 32,
    },
	{
    type = "recipe",
    name = "mechanical-parts-2",
    energy_required = 3,
	category = "advanced-crafting",
	enabled = "true",
    ingredients ={
		{type = "item", name = "angels-gear", amount = 1},
		{type = "item", name = "angels-axle", amount = 1},
	},
    result = "mechanical-parts-2",
	icon_size = 32,
    },
	{
    type = "recipe",
    name = "mechanical-parts-3",
    energy_required = 3,
	category = "advanced-crafting",
	enabled = "true",
    ingredients ={
		{type = "item", name = "angels-gear", amount = 1},
		{type = "item", name = "angels-axle", amount = 1},
		{type = "item", name = "angels-roller-chain", amount = 1},
	},
    result = "mechanical-parts-3",
	icon_size = 32,
    },
	{
    type = "recipe",
    name = "mechanical-parts-4",
    energy_required = 3,
	category = "advanced-crafting",
	enabled = "true",
    ingredients ={
		{type = "item", name = "angels-gear", amount = 1},
		{type = "item", name = "angels-axle", amount = 1},
		{type = "item", name = "angels-roller-chain", amount = 1},
		{type = "item", name = "angels-spring", amount = 1},
	},
    result = "mechanical-parts-4",
	icon_size = 32,
    },
	{
    type = "recipe",
    name = "mechanical-parts-5",
    energy_required = 3,
	category = "advanced-crafting",
	enabled = "true",
    ingredients ={
		{type = "item", name = "angels-gear", amount = 1},
		{type = "item", name = "angels-axle", amount = 1},
		{type = "item", name = "angels-roller-chain", amount = 1},
		{type = "item", name = "angels-spring", amount = 1},
		{type = "item", name = "angels-bearing", amount = 1},
	},
    result = "mechanical-parts-5",
	icon_size = 32,
    },
--MECHANICAL SUBCOMPONENTS
	{
    type = "recipe",
    name = "angels-gear",
    energy_required = 3,
	category = "crafting",
	enabled = "true",
    ingredients ={
		{type = "item", name = "iron-plate", amount = 1},
	},
    result = "angels-gear",
	icon_size = 32,
    },
	{
    type = "recipe",
    name = "angels-axle",
    energy_required = 3,
	category = "advanced-crafting",
	enabled = "true",
    ingredients ={
		{type = "item", name = "steel-plate", amount = 1},
	},
    result = "angels-axle",
	icon_size = 32,
    },
	{
    type = "recipe",
    name = "angels-roller-chain",
    energy_required = 3,
	category = "advanced-crafting",
	enabled = "true",
    ingredients ={
		{type = "item", name = "angels-plate-aluminium", amount = 1},
	},
    result = "angels-roller-chain",
	icon_size = 32,
    },
	{
    type = "recipe",
    name = "angels-spring",
    energy_required = 3,
	category = "advanced-crafting",
	enabled = "true",
    ingredients ={
		{type = "item", name = "angels-plate-titanium", amount = 1},
	},
    result = "angels-spring",
	icon_size = 32,
    },
	{
    type = "recipe",
    name = "angels-bearing",
    energy_required = 3,
	category = "advanced-crafting",
	enabled = "true",
    ingredients ={
		{type = "item", name = "angels-plate-tungsten", amount = 1},
		{type = "item", name = "steel-plate", amount = 1},
		{type = "fluid", name = "lubricant", amount = 1},
	},
    result = "angels-bearing",
	icon_size = 32,
    },
--ELECTRIC MOTOR
	{
    type = "recipe",
    name = "electric-motor-1",
    energy_required = 3,
	category = "crafting",
	enabled = "true",
    ingredients ={
		{type = "item", name = "copper-cable", amount = 1},
	},
    result = "electric-motor-1",
	icon_size = 32,
    },
	{
    type = "recipe",
    name = "electric-motor-2",
    energy_required = 3,
	category = "advanced-crafting",
	enabled = "true",
    ingredients ={
		{type = "item", name = "angels-wire-tin", amount = 1},
	},
    result = "electric-motor-2",
	icon_size = 32,
    },
	{
    type = "recipe",
    name = "electric-motor-3",
    energy_required = 3,
	category = "advanced-crafting",
	enabled = "true",
    ingredients ={
		{type = "item", name = "angels-wire-silver", amount = 1},
	},
    result = "electric-motor-3",
	icon_size = 32,
    },
	{
    type = "recipe",
    name = "electric-motor-4",
    energy_required = 3,
	category = "advanced-crafting",
	enabled = "true",
    ingredients ={
		{type = "item", name = "angels-wire-gold", amount = 1},
	},
    result = "electric-motor-4",
	icon_size = 32,
    },
	{
    type = "recipe",
    name = "electric-motor-5",
    energy_required = 3,
	category = "advanced-crafting",
	enabled = "true",
    ingredients ={
		{type = "item", name = "angels-wire-platinum", amount = 1},
	},
    result = "electric-motor-5",
	icon_size = 32,
    },
	--PARTS
	-- {
    -- type = "recipe",
    -- name = "magnetic-coil-copper",
    -- energy_required = 3,
	-- category = "crafting",
	-- enabled = "true",
    -- ingredients ={
		-- {type = "item", name = "copper-cable", amount = 1},
	-- },
    -- result = "magnetic-coil-copper",
    -- },
}
)