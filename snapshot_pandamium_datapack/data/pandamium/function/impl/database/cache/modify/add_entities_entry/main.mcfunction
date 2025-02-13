# context: as projectile

# verify executing entity is a player
execute unless entity @s run return fail
execute if entity @s[type=player] run return fail

# verify that the origin player has access to particles
scoreboard players set <supporter_player_origin> variable 0
execute on origin if entity @s[type=player,scores={gameplay_perms=6..}] run scoreboard players set <supporter_player_origin> variable 1
execute if score <supporter_player_origin> variable matches 0 run return fail

# get origin player's particle trail ID
execute on origin store result score <projectile_trail_type> variable store result storage pandamium:local functions."pandamium:impl/database/cache/modify/add_entities_entry/*".type int 1 run scoreboard players get @s particles_data.trail.type
execute unless score <projectile_trail_type> variable matches 1.. run return fail
#data modify storage pandamium:local functions."pandamium:impl/database/cache/modify/add_entities_entry/*".type set value 1

# set expiration time
scoreboard players operation <unload_time> variable = <current_gametime> global
execute store result storage pandamium:local functions."pandamium:impl/database/cache/modify/add_entities_entry/*".unload_time int 1 run scoreboard players add <unload_time> variable 6000

# get string-form uuid
data modify storage pandamium:text input set value {selector:"@s"}
function pandamium:utils/text/input/resolve
data modify storage pandamium:local functions."pandamium:impl/database/cache/modify/add_entities_entry/*".uuid set from storage pandamium:text input.insertion

# continue
function pandamium:impl/database/cache/modify/add_entities_entry/set_entry with storage pandamium:local functions."pandamium:impl/database/cache/modify/add_entities_entry/*"

return 1
