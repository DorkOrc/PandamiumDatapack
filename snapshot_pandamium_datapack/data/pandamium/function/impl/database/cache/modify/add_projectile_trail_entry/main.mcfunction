# context: as projectile

# verify executing entity is a player
execute unless entity @s run return fail
execute if entity @s[type=player] run return fail

# verify that the origin player has access to particles and has optn.do_projectile_trails set to 1
scoreboard players set <supporter_player_origin> variable 0
execute on origin if entity @s[type=player,scores={optn.do_projectile_trails=1},predicate=pandamium:player/min_gameplay_perms/supporter] run scoreboard players set <supporter_player_origin> variable 1
execute if score <supporter_player_origin> variable matches 0 run return fail

# get origin player's particle trail ID
execute on origin store result score <projectile_trail_type> variable store result storage pandamium:local functions."pandamium:impl/database/cache/modify/add_projectile_trail_entry/*".type int 1 run scoreboard players get @s particles_data.trail.type
execute unless score <projectile_trail_type> variable matches 1.. run return fail
#data modify storage pandamium:local functions."pandamium:impl/database/cache/modify/add_projectile_trail_entry/*".type set value 1

# set expiration time
scoreboard players operation <unload_time> variable = <current_gametime> global
execute store result storage pandamium:local functions."pandamium:impl/database/cache/modify/add_projectile_trail_entry/*".unload_time int 1 run scoreboard players add <unload_time> variable 6000

# get string-form uuid
function do:entity/get_uuid_repr
data modify storage pandamium:local functions."pandamium:impl/database/cache/modify/add_projectile_trail_entry/*".uuid set from storage do:io output

# continue
function pandamium:impl/database/cache/modify/add_projectile_trail_entry/set_entry with storage pandamium:local functions."pandamium:impl/database/cache/modify/add_projectile_trail_entry/*"

return 1
