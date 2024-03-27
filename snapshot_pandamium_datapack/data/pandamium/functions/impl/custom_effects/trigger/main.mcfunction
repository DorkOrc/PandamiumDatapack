# arguments: trigger

function pandamium:utils/database/players/load/self

$execute unless data storage pandamium.db.players:io selected.entry.data.custom_effects[{meta:{update_triggers:["$(trigger)"]}}] run scoreboard players reset @s custom_effects.listen_for.$(trigger)
$execute unless data storage pandamium.db.players:io selected.entry.data.custom_effects[{meta:{update_triggers:["$(trigger)"]}}] run return 0

data modify storage pandamium:temp triggered_custom_effects set value []
$data modify storage pandamium:temp triggered_custom_effects append from storage pandamium.db.players:io selected.entry.data.custom_effects[{meta:{update_triggers:["$(trigger)"]}}].meta
execute store result score <entries_updated> variable if data storage pandamium:temp triggered_custom_effects[]

function pandamium:impl/custom_effects/trigger/update_entry_loop

return run scoreboard players get <entries_updated> variable
