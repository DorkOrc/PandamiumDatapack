# arguments: alias, trigger_name, target_selector, trigger_value

# check if alias exists
$execute unless data storage pandamium.dynamic_triggers:data aliases[{alias:"$(alias)",trigger_name:"$(trigger_name)"}] run return fail

# init
$data modify storage pandamium:temp alias_target_entry set value {target_selector:"$(target_selector)",trigger_value:$(trigger_value)}

# generate uuid
execute in pandamium:staff_world positioned 0 0 0 summon marker if function pandamium:utils/discard_marker run data modify storage pandamium:temp alias_target_entry.uuid set from entity @s UUID
function pandamium:impl/dynamic_triggers/add_alias_target/reroll_uuid with storage pandamium:temp alias_target_entry
data modify storage pandamium.dynamic_triggers:io newest_alias_target_uuid set from storage pandamium:temp alias_target_entry.uuid

# append
$data modify storage pandamium.dynamic_triggers:data aliases[{alias:"$(alias)"}].targets append from storage pandamium:temp alias_target_entry

execute store result score <index> variable if data storage pandamium.dynamic_triggers:data macros.main.entries[]
$execute if data storage pandamium:temp alias_target_entry{target_selector:"@a"} run data modify storage pandamium.dynamic_triggers:data macros.main.entries append value {command:"execute as @a[scores={$(alias)=-2147483648..}] unless score @s $(alias) matches 0 run trigger $(trigger_name) set $(trigger_value)"}
$execute unless data storage pandamium:temp alias_target_entry{target_selector:"@a"} run data modify storage pandamium.dynamic_triggers:data macros.main.entries append value {command:"execute as $(target_selector) if score @s $(alias) matches -2147483648.. unless score @s $(alias) matches 0 run trigger $(trigger_name) set $(trigger_value)"}
execute store result storage pandamium.dynamic_triggers:data macros.main.entries[-1].index int 1 run scoreboard players get <index> variable
data modify storage pandamium.dynamic_triggers:data macros.main.entries[-1].uuid set from storage pandamium:temp alias_target_entry.uuid
function pandamium:impl/dynamic_triggers/add_alias_target/set_lines with storage pandamium.dynamic_triggers:data macros.main.entries[-1]

# update macros.main.upper_bound
execute store result score <total_main> variable store result score <offset> variable if data storage pandamium.dynamic_triggers:data macros.main.entries[]
scoreboard players operation <offset> variable %= #-10 constant
execute store result storage pandamium.dynamic_triggers:data macros.main.upper_bound int 1 run scoreboard players operation <total_main> variable -= <offset> variable

# debug info
#execute unless entity @a[scores={send_extra_debug_info=2..},limit=1] run return 0
#$data modify storage pandamium:temp alias_target_entry merge from storage pandamium.dynamic_triggers:data aliases[{alias:"$(alias)"}]
#function pandamium:impl/dynamic_triggers/add_alias_target/debug_output with storage pandamium:temp alias_target_entry
