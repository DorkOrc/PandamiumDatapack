scoreboard players reset @s detect.die
scoreboard players set @s detect.time_since_death 0
scoreboard players set @s alive 0

execute if entity @s[scores={death_particles=1..},gamemode=!spectator,predicate=!pandamium:player/is_hidden] run function pandamium:impl/particles/death_event

execute if entity @s[scores={disable_keep_inventory=1},gamemode=survival,predicate=!pandamium:in_spawn,predicate=!pandamium:in_dimension/staff_world] run function pandamium:impl/drop_inventory/main
execute unless score @s disable_keep_inventory matches 1 if items entity @s armor.* *[enchantments~[{enchantments:"minecraft:binding_curse"}]] if predicate pandamium:player/can_pick_up_any_item run function pandamium:utils/unequip/bound_items

function pandamium:impl/custom_effects/remove_all/main

data modify storage pandamium:templates teleport.source set value "die"
function pandamium:impl/teleport/store_teleport/main

function pandamium:utils/database/player_cache/load/self
function pandamium:utils/database/player_cache/modify/set_last_death_location
function pandamium:utils/database/player_cache/save
