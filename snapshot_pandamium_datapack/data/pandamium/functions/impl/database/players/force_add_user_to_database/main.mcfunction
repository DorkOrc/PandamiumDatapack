# arguments: username, suuid

#> Pre
$execute if data storage pandamium.db.players:data username_indexes."$(username)" run tellraw @s [{"text":"[admin/add_to_database]","color":"dark_red"},{"text":" $(username) is already in [pandamium.db.players]!","color":"red"}]
$execute if data storage pandamium.db.players:data username_indexes."$(username)" run return 0

$execute unless score $(username) id matches 1.. run tellraw @s [{"text":"[admin/add_to_database]","color":"dark_red"},{"text":" Unable to add $(username) to [pandamium.db.players]!","color":"red"}]
$execute unless score $(username) id matches 1.. run return 0

$execute unless score $(username) playtime_ticks matches 1.. run tellraw @s [{"text":"[admin/add_to_database]","color":"dark_red"},{"text":" Unable to add $(username) to [pandamium.db.players]!","color":"red"}]
$execute unless score $(username) playtime_ticks matches 1.. run return 0

#> Main
$data modify storage pandamium:temp arguments set value {username: "$(username)", suuid: "$(suuid)", uuid0: 0, uuid1: 0, uuid2: 0, uuid3: 0, id: 0}
$execute store result storage pandamium:temp arguments.id int 1 run scoreboard players get $(username) id

scoreboard players set <valid_suuid> variable 1
function pandamium:impl/database/players/force_add_user_to_database/get_integer_uuid/main
execute if score <valid_suuid> variable matches 0 run tellraw @s [{"text":"[admin/force_add_user_to_database]","color":"dark_red"},{"text":" Invalid UUID! The hexadecimal uuid form is required to add a player to [pandamium.db.players].","color":"red"}]
execute if score <valid_suuid> variable matches 0 run return 0

function pandamium:impl/database/players/force_add_user_to_database/create_new_database_entry with storage pandamium:temp arguments
