scoreboard players reset @s detect.die
scoreboard players set @s detect.time_since_death 0

execute if score @s death_particles matches 1.. if entity @s[gamemode=!spectator] unless score @s hidden matches 1.. at @s run function pandamium:impl/particles/death_event
execute if score @s disable_keep_inventory matches 1 if entity @s[predicate=!pandamium:in_dimension/staff_world,predicate=!pandamium:in_spawn,gamemode=survival] run function pandamium:impl/drop_inventory/main

function pandamium:impl/custom_effects/remove_all/main

data modify storage pandamium:templates teleport.source set value "die"
execute at @s run function pandamium:impl/teleport/main

tag @s add die.this
execute store success score <respawned> variable if entity @e[type=player,tag=die.this,limit=1]
tag @s remove die.this

execute if score <respawned> variable matches 1 run return 0
function pandamium:utils/database/player_cache/load/self
function pandamium:utils/database/player_cache/modify/set_last_death_location
function pandamium:utils/database/player_cache/save
