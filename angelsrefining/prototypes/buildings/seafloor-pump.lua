data:extend({
  {
    type = "item",
    name = "seafloor-pump",
    icon = "__angelsrefininggraphics__/graphics/icons/seafloor-pump-ico.png",
    icon_size = 32,
    subgroup = "washing-building",
    order = "a",
    place_result = "seafloor-pump",
    stack_size = 10,
  },
  {
    type = "offshore-pump",
    name = "seafloor-pump",
    icon = "__angelsrefininggraphics__/graphics/icons/seafloor-pump-ico.png",
    icon_size = 32,
    flags = { "placeable-neutral", "player-creation", "filter-directions" },
    collision_mask = {layers={object=true, train=true, is_object=true, is_lower_object=true}},
    center_collision_mask = { "water-tile", "object-layer", "player-layer" }, -- to test that tile directly under the pump is ground
    fluid_box_tile_collision_test = { "ground-tile" },
    adjacent_tile_collision_test = { "water-tile" },
    adjacent_tile_collision_mask = {layers={
      ground_tile=true}}, -- to prevent building on edge of map :(
    adjacent_tile_collision_box = { { -2, -3 }, { 2, -2 } },
    fluid_source_offset = {0, -1},
    minable = { mining_time = 1, result = "seafloor-pump" },
    max_health = 80,
    corpse = "small-remnants",
    fluid = "water-viscous-mud",
    energy_source =
    {
      type = "void"
    },
    energy_usage = "60kW",
    resistances = {
      {
        type = "fire",
        percent = 70,
      },
    },
    collision_box = { { -1.4, -2.45 }, { 1.4, 0.3 } },
    selection_box = { { -1.6, -2.49 }, { 1.6, 0.49 } },
    fluid_box = {
      volume = 100,
      pipe_covers = pipecoverspictures(),
      production_type = "output",
      filter = "water-viscous-mud",
      pipe_connections = {
        {
          flow_direction = "output",
          position = { 0, 0.25 },
          direction = defines.direction.north
        },
      },
    },
    pumping_speed = 5,
    tile_width = 3,
    tile_height = 3,
    impact_category = "metal",
    graphics_set = {
      base_pictures = {
        north = {
          filename = "__angelsrefininggraphics__/graphics/entity/seafloor-pump/seafloor-pump.png",
          priority = "high",
          shift = { 0, -1 },
          width = 160,
          height = 160,
        },
        east = {
          filename = "__angelsrefininggraphics__/graphics/entity/seafloor-pump/seafloor-pump.png",
          priority = "high",
          shift = { 1, 0 },
          x = 160,
          width = 160,
          height = 160,
        },
        south = {
          filename = "__angelsrefininggraphics__/graphics/entity/seafloor-pump/seafloor-pump.png",
          priority = "high",
          shift = { 0, 1 },
          x = 320,
          width = 160,
          height = 160,
        },
        west = {
          filename = "__angelsrefininggraphics__/graphics/entity/seafloor-pump/seafloor-pump.png",
          priority = "high",
          shift = { -1, 0 },
          x = 480,
          width = 160,
          height = 160,
        },
      },
    },
    placeable_position_visualization = {
      filename = "__core__/graphics/cursor-boxes-32x32.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5,
      x = 3 * 64,
    },
    circuit_wire_connection_points = circuit_connector_definitions["offshore-pump"].points,
    circuit_connector_sprites = circuit_connector_definitions["offshore-pump"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
  },
})
