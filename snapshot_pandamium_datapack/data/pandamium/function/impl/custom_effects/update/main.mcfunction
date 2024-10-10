# arguments: name

execute unless entity @s[type=player] run return fail

function pandamium:utils/database/players/load/self

$execute unless data storage pandamium.db.players:io selected.entry.data.custom_effects[{meta:{name:"$(name)"}}] run return fail
$data modify storage pandamium:temp custom_effect_entry set from storage pandamium.db.players:io selected.entry.data.custom_effects[{meta:{name:"$(name)"}}]

# ensure particles loop is enabled
$schedule function pandamium:impl/custom_effects/particles/$(name) 1t

# check conditions
scoreboard players set <conditions_met> variable 0
function pandamium:impl/custom_effects/update/check_conditions with storage pandamium:temp custom_effect_entry.meta
execute if data storage pandamium:temp custom_effect_entry.meta.conditions if score <conditions_met> variable matches 0 run return run function pandamium:impl/custom_effects/remove/main with storage pandamium:temp custom_effect_entry.meta

# check if effect has worn off
execute if data storage pandamium:temp custom_effect_entry.data.duration[0] if function pandamium:impl/custom_effects/update/check_datetime run return run function pandamium:impl/custom_effects/remove/main with storage pandamium:temp custom_effect_entry.meta
execute if data storage pandamium:temp custom_effect_entry.data.duration[0] run return 0

execute store result score <duration> variable run data get storage pandamium:temp custom_effect_entry.data.duration
execute store result score <minimum_gametime> variable run data get storage pandamium:temp custom_effect_entry.meta.start_timestamp
scoreboard players operation <minimum_gametime> variable += <duration> variable

execute if score <current_gametime> global >= <minimum_gametime> variable run return run function pandamium:impl/custom_effects/remove/main with storage pandamium:temp custom_effect_entry.meta

return 0
