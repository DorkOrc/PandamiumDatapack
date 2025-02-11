# context: as projectile

execute unless entity @s run return fail

execute if entity @s[type=player] run return fail

scoreboard players set <supporter_player_origin> variable 0
execute on origin if entity @s[type=player,scores={gameplay_perms=6..}] run scoreboard players set <supporter_player_origin> variable 1
execute if score <supporter_player_origin> variable matches 0 run return fail

execute on origin store result score <projectile_trail_type> variable store result storage pandamium:local functions."pandamium:impl/database/cache/modify/add_entities_entry/*".type int 1 run scoreboard players get @s particles_data.trail.type
execute unless score <projectile_trail_type> variable matches 1.. run return fail
#data modify storage pandamium:local functions."pandamium:impl/database/cache/modify/add_entities_entry/*".type set value 1

scoreboard players operation <unload_time> variable = <current_gametime> global
execute store result storage pandamium:local functions."pandamium:impl/database/cache/modify/add_entities_entry/*".unload_time int 1 run scoreboard players add <unload_time> variable 6000

data modify storage pandamium:text input set value {selector:"@s"}
function pandamium:utils/text/input/resolve
data modify storage pandamium:local functions."pandamium:impl/database/cache/modify/add_entities_entry/*".uuid set from storage pandamium:text input.insertion

function pandamium:impl/database/cache/modify/add_entities_entry/set_entry with storage pandamium:local functions."pandamium:impl/database/cache/modify/add_entities_entry/*"

return 1
