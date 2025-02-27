# arguments: type, id, source_function, fallback_function, sorting_function, (display_function), (source_data), (fallback_data)

# value
data modify storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*".source_data.username set from storage pandamium.db.players:io selected.entry.username
$function pandamium:impl/leader_boards/update_place/source/$(source_function) with storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*".source_data
execute unless score <value> variable = <value> variable run data modify storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*".fallback_data.username set from storage pandamium.db.players:io selected.entry.username
$execute unless score <value> variable = <value> variable run function pandamium:impl/leader_boards/update_place/source/$(fallback_function) with storage pandamium:local functions."pandamium:impl/leader_boards/update_place/*".fallback_data

execute unless score <value> variable = <value> variable run return fail

# sorting value
scoreboard players operation <sorting_value> variable = <value> variable
$function pandamium:impl/leader_boards/update_place/sorting/$(sorting_function)
