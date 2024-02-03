# arguments: username, type, id, source_objective, operation, max_entries

# get data
$execute store result score <value> variable run scoreboard players get $(username) $(source_objective)
# temporary exception for parkour_3 (need to rework to use condition functions)
scoreboard players set <flag_as_unconfirmed> variable 0
$execute if score <value> variable matches 0 if data storage pandamium:leaderboards leader_boards."$(type)"{source_objective:"parkour_3.best_time_real"} if score $(username) parkour_3.best_time matches 1.. run scoreboard players set <flag_as_unconfirmed> variable 1
$execute if score <flag_as_unconfirmed> variable matches 1 store result score <value> variable run scoreboard players get $(username) parkour_3.best_time
execute if score <value> variable matches 0 run return 0

$execute store result score <last_entry_value> variable run data get storage pandamium:leaderboards leader_boards.$(type).entries[-1].value

data modify storage pandamium:temp group_entry set value {value:-2147483648,display:{},players:[]}
$data modify storage pandamium:temp player_entry set value {id:$(id),display:{name:'"$(username)"'}}
execute if score <flag_as_unconfirmed> variable matches 1 run data modify storage pandamium:temp player_entry.unconfirmed set value 1b

$function pandamium:impl/leaderboards/update_user_place/operations/$(operation) with storage pandamium:temp arguments
# -> (score <value> variable), -> (storage pandamium:temp group_entry.display)
execute store result storage pandamium:temp group_entry.value int 1 store result storage pandamium:temp arguments.value int 1 run scoreboard players get <value> variable

function pandamium:impl/leaderboards/update_user_place/try_update_place with storage pandamium:temp arguments

# remove excess entry
$data remove storage pandamium:leaderboards leader_boards.$(type).entries[$(max_entries)]

# remove empty entries
$data modify storage pandamium:leaderboards leader_boards.$(type).entries[].not_empty set value 0b
$data modify storage pandamium:leaderboards leader_boards.$(type).entries[{players:[{}]}].not_empty set value 1b
$data remove storage pandamium:leaderboards leader_boards.$(type).entries[{not_empty:0b}]
$data remove storage pandamium:leaderboards leader_boards.$(type).entries[].not_empty

# update formatted list
$function pandamium:impl/leaderboards/update_formatted/main {type:"$(type)"}
