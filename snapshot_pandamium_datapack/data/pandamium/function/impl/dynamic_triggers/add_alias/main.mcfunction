# arguments: alias, trigger_name, type

# check if it already exists
$execute if data storage pandamium.dynamic_triggers:data aliases[{alias:"$(alias)"}] run return fail

# init
$data modify storage pandamium:temp alias_entry set value {alias:"$(alias)",trigger_name:"$(trigger_name)",type:"$(type)",meta:{init:1b},targets:[],post_commands:[]}

$data modify storage pandamium:temp alias_entry.post_commands append value "scoreboard players reset @a[scores={$(alias)=-2147483648..}] $(alias)"
$execute store success score <valid_type> variable run function pandamium:impl/dynamic_triggers/add_alias/set_type/$(type) {alias:"$(alias)"}
execute if score <valid_type> variable matches 0 run return fail

# create scoreboard objectives
$scoreboard objectives add $(alias) trigger ["$(alias)",{"text":" -> $(trigger_name)","color":"gray"}]
$scoreboard objectives add dynamic_trigger_enabled.$(alias) dummy

# append
data modify storage pandamium.dynamic_triggers:data aliases append from storage pandamium:temp alias_entry
data remove storage pandamium.dynamic_triggers:data aliases[-1].post_commands

execute store result score <index> variable if data storage pandamium.dynamic_triggers:data function_macros.post_entries[]
data modify storage pandamium.dynamic_triggers:data function_macros.post_entries append value {}
execute store result storage pandamium.dynamic_triggers:data function_macros.post_entries[-1].index int 1 run scoreboard players get <index> variable
data modify storage pandamium.dynamic_triggers:data function_macros.post_entries[-1].alias set from storage pandamium:temp alias_entry.alias
data modify storage pandamium.dynamic_triggers:data function_macros.post_entries[-1].commands set from storage pandamium:temp alias_entry.post_commands
function pandamium:impl/dynamic_triggers/add_alias/set_post_lines with storage pandamium.dynamic_triggers:data function_macros.post_entries[-1]
