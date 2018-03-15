--INITIALIZE
if not angelsmods then angelsmods = {} end
if not angelsmods.industries then angelsmods.industries = {} end

--TRIGGER CHECKS
angelsmods.industries.tech = false
angelsmods.industries.components = false

--LOAD FUNCTIONS
if not angelsmods.industries.tech_exceptions then angelsmods.industries.tech_exceptions = {} end

--LOAD PROTOTYPES
--CATEGORIES
require("prototypes.angels-industries-category")

--TECH
if angelsmods.industries.tech then
	--ITEMS
	require("prototypes.items.tech-science-packs")

	--ENTITIES
	require("prototypes.buildings.angels-labs")
	require("prototypes.buildings.angels-labs-enhance")
	require("prototypes.buildings.angels-labs-exploration")
	require("prototypes.buildings.angels-labs-energy")
	require("prototypes.buildings.angels-labs-logistic")
	require("prototypes.buildings.angels-labs-processing")
	require("prototypes.buildings.angels-labs-war")

	--RECIPES
	require("prototypes.recipes.tech-science-packs-recipes")
	require("prototypes.recipes.tech-entity")
	
	--TECHS
	require("prototypes.technology.angels-tech-technology")
end

--COMPONENTS
if angelsmods.industries.components then
	--ITEMS
	--require("prototypes.items.components-basic")
	require("prototypes.items.components-electronics")
	require("prototypes.items.components-mechanical")
	require("prototypes.items.components-blocks")

	--ENTITIES	
	require("prototypes.buildings.angels-assemblers")	
	
	--RECIPES
	require("prototypes.recipes.components-blocks-recipes")
	require("prototypes.recipes.components-electronics-recipes")
	require("prototypes.recipes.components-mechanical-recipes")
end


--ENTITIES
require("prototypes.buildings.cargo-roboport")
require("prototypes.buildings.cargo-robot")
require("prototypes.buildings.zone-expander")
require("prototypes.buildings.construction-robot")
--require("prototypes.buildings.loader")
require("prototypes.buildings.chests")	

require("prototypes.entities.crawler")
require("prototypes.entities.crawler-train")
require("prototypes.entities.equipment")

--RECIPES
require("prototypes.recipes.equipment-recipes")
require("prototypes.recipes.logistics-entity")
require("prototypes.recipes.vehicles-recipe")

require("prototypes.technology.angels-vequip-technology")
require("prototypes.technology.logistics-technology")