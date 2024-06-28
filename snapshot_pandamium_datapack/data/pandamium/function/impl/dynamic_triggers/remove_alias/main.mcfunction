# arguments: alias

# check if target exists
$execute unless data storage pandamium.dynamic_triggers:data aliases[{alias:"$(alias)"}] run return fail
$execute if data storage pandamium.dynamic_triggers:data aliases[{alias:"$(alias)",targets:[{}]}] run return fail

# remove from function macro
$function pandamium:impl/dynamic_triggers/remove_alias/copy_top_entry with storage pandamium.dynamic_triggers:data function_macros.post_entries[{alias:$(alias)}]

function pandamium:impl/dynamic_triggers/remove_alias/delete_top_entry with storage pandamium.dynamic_triggers:data function_macros.post_entries[-1]

data remove storage pandamium.dynamic_triggers:data function_macros.post_entries[-1]

# remove target
$data remove storage pandamium.dynamic_triggers:data aliases[{alias:"$(alias)"}]

# remove scoreboard objectives
$scoreboard objectives remove dynamic_trigger_enabled.$(alias)
$scoreboard objectives remove $(alias)
