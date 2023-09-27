# arguments: type, id, value, max_entries, (username, source_objective, operation)

# end early if already in place
$execute if data storage pandamium:leaderboards $(type).entries[{value:$(value)}].players[{id:$(id)}] run data modify storage pandamium:leaderboards $(type).entries[{value:$(value)}].players[{id:$(id)}] set from storage pandamium:temp player_entry
$execute if data storage pandamium:leaderboards $(type).entries[{value:$(value)}].players[{id:$(id)}] run return 0

# remove existing player entry
$data remove storage pandamium:leaderboards $(type).entries[].players[{id:$(id)}]

# update position (quick)
$execute store success score <skip> variable if data storage pandamium:leaderboards $(type).entries[{value:$(value)}]
$execute if score <skip> variable matches 1 run data modify storage pandamium:leaderboards $(type).entries[{value:$(value)}].players append from storage pandamium:temp player_entry
execute if score <skip> variable matches 1 run return 0

# update position (long)
scoreboard players operation <index> variable = <total_entries> variable
execute store result storage pandamium:temp arguments.index int 1 run scoreboard players remove <index> variable 1
function pandamium:impl/leaderboards/update_user_place/long_insert_loop with storage pandamium:temp arguments

# remove excess entry
$data remove storage pandamium:leaderboards $(type).entries[$(max_entries)]

# remove empty entries
$data modify storage pandamium:leaderboards $(type).entries[].not_empty set value 0b
$data modify storage pandamium:leaderboards $(type).entries[{players:[{}]}].not_empty set value 1b
$data remove storage pandamium:leaderboards $(type).entries[{not_empty:0b}]
$data remove storage pandamium:leaderboards $(type).entries[].not_empty
