# arguments: type, index, (username, id, value, source_objective, operation, max_entries)
$execute store result score <value_at_index> variable run data get storage pandamium.leader_boards:data leader_boards.$(type).entries[$(index)].value

execute store success score <insert> variable if score <value_at_index> variable > <value> variable
execute if score <index> variable matches ..-1 run scoreboard players set <insert> variable 1

execute if score <insert> variable matches 1 store result storage pandamium:temp arguments.index int 1 run scoreboard players add <index> variable 1
execute if score <insert> variable matches 1 run function pandamium:impl/leaderboards/update_user_place/do_insert with storage pandamium:temp arguments

execute if score <insert> variable matches 1 run return 0
execute store result storage pandamium:temp arguments.index int 1 run scoreboard players remove <index> variable 1
function pandamium:impl/leaderboards/update_user_place/long_insert_loop with storage pandamium:temp arguments
