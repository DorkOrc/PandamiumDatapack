# arguments: username, id, source_objective, operation, (type, max_entries)

$execute store result score <value> variable run scoreboard players get $(username) $(source_objective)
$execute store result score <last_entry_value> variable run data get storage pandamium:leaderboards $(type).entries[-1].value
#execute if score <value> variable < <last_entry_value> variable run return 0

data modify storage pandamium:temp group_entry set value {value:-2147483648,display:{},players:[]}
$data modify storage pandamium:temp player_entry set value {id:$(id),display:{name:'"$(username)"'}}

$function pandamium:impl/leaderboards/update_user_place/operations/$(operation)
# -> (score <value> variable), -> (storage pandamium:temp group_entry.display)
execute store result storage pandamium:temp group_entry.value int 1 store result storage pandamium:temp arguments.value int 1 run scoreboard players get <value> variable

function pandamium:impl/leaderboards/update_user_place/try_update_place with storage pandamium:temp arguments

$function pandamium:impl/leaderboards/update_formatted/main {type:"$(type)"}
