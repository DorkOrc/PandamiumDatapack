execute unless entity @s[type=player] run return fail

function pandamium:utils/database/players/load/self

execute unless data storage pandamium.db.players:io selected.entry.data.custom_effects[0] run return 0

data modify storage pandamium:temp remaining_custom_effects set value []
data modify storage pandamium:temp remaining_custom_effects append from storage pandamium.db.players:io selected.entry.data.custom_effects[].meta
execute store result score <entries_removed> variable if data storage pandamium:temp remaining_custom_effects[]

function pandamium:impl/custom_effects/remove_all/remove_entry_loop

return run scoreboard players get <entries_removed> variable
