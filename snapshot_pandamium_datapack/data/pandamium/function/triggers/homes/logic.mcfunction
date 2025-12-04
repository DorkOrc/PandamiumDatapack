execute if score @s homes matches ..-1 run return run tellraw @s [{text:"[Homes]",color:"dark_red"},{text:" That is not a valid option!",color:"red"}]

# print own homes
execute unless predicate pandamium:player/min_staff_perms/moderator run scoreboard players set @s homes 1
execute if score @s homes matches 1 run return run function pandamium:triggers/homes/print_menu/normal/main

# restrictions
execute if score @s homes matches 2.. unless predicate pandamium:player/min_staff_perms/moderator run return run tellraw @s [{text:"[Homes]",color:"dark_red"},{text:" That is not a valid option!",color:"red"}]
execute if score @s homes matches 1000000.. unless predicate pandamium:player/min_staff_perms/moderator run return run tellraw @s [{text:"[Homes]",color:"dark_red"},{text:" That is not a valid option!",color:"red"}]
execute if score @s homes matches 26000000.. run return run tellraw @s [{text:"[Homes]",color:"dark_red"},{text:" That is not a valid option!",color:"red"}]

# get info
scoreboard players operation <home> variable = @s homes
execute store result storage pandamium:temp arguments.home int 1 run scoreboard players operation <home> variable /= #1000000 constant
scoreboard players operation <user_id> variable = @s homes
execute store result storage pandamium:temp arguments.id int 1 run scoreboard players operation <user_id> variable %= #1000000 constant

# select target's db entry
function pandamium:utils/database/players/load/from_id with storage pandamium:temp arguments
execute unless data storage pandamium.db.players:io selected run return run tellraw @s [{text:"[Homes]",color:"dark_red"},{text:" Could not find a player with ID ",color:"red",extra:[{score:{name:"<user_id>",objective:"variable"}},{text:"!"}]}]

data modify storage pandamium:temp arguments.username set from storage pandamium.db.players:io selected.entry.username
function pandamium:triggers/homes/get_target_display_name with storage pandamium.db.players:io selected.entry

# print target's homes
execute if score @s homes matches 2..999999 run function pandamium:triggers/homes/print_menu/staff/main

# teleport to target's home
execute if score @s homes matches 1000000..25999999 run function pandamium:triggers/homes/teleport_to_target_home/main with storage pandamium:temp arguments
