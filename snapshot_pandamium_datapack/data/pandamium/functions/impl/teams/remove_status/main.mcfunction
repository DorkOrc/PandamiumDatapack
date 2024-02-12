function pandamium:impl/teams/init_arguments
execute store result storage pandamium:temp arguments.id int 1 run scoreboard players get @s id
execute store result storage pandamium:temp arguments.tablist_sort_index int 1 run scoreboard players get @s tablist_sort_index

function pandamium:utils/database/players/load/self
data modify storage pandamium:temp arguments.custom_suffix set from storage pandamium.db.players:io selected.entry.data.custom_suffix
execute unless data storage pandamium:temp arguments{custom_suffix:'""'} run data modify storage pandamium:temp arguments.separator set value '" "'

function pandamium:impl/teams/update_suffix with storage pandamium:temp arguments
