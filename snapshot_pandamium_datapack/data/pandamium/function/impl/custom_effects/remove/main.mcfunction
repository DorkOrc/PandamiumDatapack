# arguments: name

execute unless entity @s[type=player] run return fail

function pandamium:utils/database/players/load/self

$execute unless data storage pandamium.db.players:io selected.entry.data.custom_effects[{meta:{name:"$(name)"}}] run return fail
$data modify storage pandamium:temp custom_effect_entry set from storage pandamium.db.players:io selected.entry.data.custom_effects[{meta:{name:"$(name)"}}]
$data remove storage pandamium.db.players:io selected.entry.data.custom_effects[{meta:{name:"$(name)"}}]

# reset attributes and other effects
$scoreboard players reset @s custom_effects.has_effect.$(name)

execute if data storage pandamium:temp custom_effect_entry.data.attribute_modifiers[-1] run function pandamium:impl/custom_effects/remove/attribute_modifiers_loop

# reset listeners
execute if data storage pandamium:temp custom_effect_entry.meta{update_triggers:["every_tick"]} unless data storage pandamium.db.players:io selected.entry.data.custom_effects[{meta:{update_triggers:["every_tick"]}}] run scoreboard players reset @s custom_effects.listen_for.every_tick
execute if data storage pandamium:temp custom_effect_entry.meta{update_triggers:["every_second"]} unless data storage pandamium.db.players:io selected.entry.data.custom_effects[{meta:{update_triggers:["every_second"]}}] run scoreboard players reset @s custom_effects.listen_for.every_second
execute if data storage pandamium:temp custom_effect_entry.meta{update_triggers:["change_dimension"]} unless data storage pandamium.db.players:io selected.entry.data.custom_effects[{meta:{update_triggers:["change_dimension"]}}] run scoreboard players reset @s custom_effects.listen_for.change_dimension
execute if data storage pandamium:temp custom_effect_entry.meta{update_triggers:["time_change"]} unless data storage pandamium.db.players:io selected.entry.data.custom_effects[{meta:{update_triggers:["time_change"]}}] run scoreboard players reset @s custom_effects.listen_for.time_change

# save
function pandamium:utils/database/players/save

$tellraw @a[scores={send_extra_debug_info=2..}] [{"text":"[Pandamium: Removed custom effect [$(name)] from ","color":"gray","italic":true},{"selector":"@s"},"]"]
return 1
