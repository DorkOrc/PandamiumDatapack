# arguments: name

function pandamium:utils/database/players/load/self

$execute if data storage pandamium.db.players:io selected.entry.data.custom_effects[{meta:{name:$(name)}}] run return fail
$execute unless data storage pandamium:dictionary custom_effects_data.$(name) run return fail

data modify storage pandamium.db.players:io selected.entry.data.custom_effects append value {meta:{update_triggers:[]},data:{duration:0}}
$data modify storage pandamium.db.players:io selected.entry.data.custom_effects[-1] merge from storage pandamium:dictionary custom_effects_data.$(name)
$data modify storage pandamium.db.players:io selected.entry.data.custom_effects[-1].meta.name set value $(name)
execute store result storage pandamium.db.players:io selected.entry.data.custom_effects[-1].meta.start_timestamp int 1 run time query gametime

data modify storage pandamium:temp custom_effect_entry set from storage pandamium.db.players:io selected.entry.data.custom_effects[-1]

# set attributes and other effects
$scoreboard players set @s custom_effects.has_effect.$(name) 1

execute if data storage pandamium:temp custom_effect_entry.data.attribute_modifiers[0] run data modify storage pandamium:temp custom_effect_entry.data.attribute_modifiers[].custom_effect_name set from storage pandamium.db.players:io selected.entry.data.custom_effects[-1].meta.name
execute if data storage pandamium:temp custom_effect_entry.data.attribute_modifiers[0] run function pandamium:impl/custom_effects/add/attribute_modifiers_loop
data remove storage pandamium.db.players:io selected.entry.data.custom_effects[-1].data.attribute_modifiers[].modifier

$schedule function pandamium:impl/custom_effects/particles/$(name) 1t

# set listeners
execute if data storage pandamium:temp custom_effect_entry.meta{update_triggers:["every_tick"]} run scoreboard players set @s custom_effects.listen_for.every_tick 1
execute if data storage pandamium:temp custom_effect_entry.meta{update_triggers:["every_second"]} run scoreboard players set @s custom_effects.listen_for.every_second 1
execute if data storage pandamium:temp custom_effect_entry.meta{update_triggers:["change_dimension"]} run scoreboard players set @s custom_effects.listen_for.change_dimension 1
execute if data storage pandamium:temp custom_effect_entry.meta{update_triggers:["time_change"]} run scoreboard players set @s custom_effects.listen_for.time_change 1

# save
function pandamium:utils/database/players/save

$tellraw @a[scores={send_extra_debug_info=2..}] [{"text":"[Pandamium: Added custom effect [$(name)] to ","color":"gray","italic":true},{"selector":"@s"},"]"]
return 1
