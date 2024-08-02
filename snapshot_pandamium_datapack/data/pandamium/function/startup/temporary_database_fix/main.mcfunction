# check done
execute if score <completed_database_fix_version> global matches 1003.. run return 0
scoreboard players set <completed_database_fix_version> global 1003

# announce
tellraw @a[scores={send_extra_debug_info=2..}] {"color":"gray","italic":true,"text":"[Pandamium: Datafixer started]"}

# run
#function pandamium:impl/queue/append/datafixer

data modify storage pandamium.dynamic_triggers:data macros.main.entries set from storage pandamium.dynamic_triggers:data function_macros.entries
data modify storage pandamium.dynamic_triggers:data macros.main.lines set from storage pandamium.dynamic_triggers:data function_macros.lines
data modify storage pandamium.dynamic_triggers:data macros.main.upper_bound set from storage pandamium.dynamic_triggers:data function_macros.main_function_macro_group

data modify storage pandamium.dynamic_triggers:data macros.post.entries set from storage pandamium.dynamic_triggers:data function_macros.post_entries
data modify storage pandamium.dynamic_triggers:data macros.post.lines set from storage pandamium.dynamic_triggers:data function_macros.post_lines
data modify storage pandamium.dynamic_triggers:data macros.post.upper_bound set from storage pandamium.dynamic_triggers:data function_macros.post_function_macro_group

data remove storage pandamium.dynamic_triggers:data function_macros

tellraw @a[scores={send_extra_debug_info=2..}] {"color":"gray","italic":true,"text":"[Pandamium: Datafixer finished]"}

return 1
