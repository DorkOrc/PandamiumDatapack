scoreboard players operation <entry_id> variable = @s auto_actions_log
scoreboard players operation <entry_id> variable *= #-1 constant

data remove storage pandamium:auto_actions selected_entry
function pandamium:impl/triggers/auto_actions_log/inspect_entry/get_entry/main

execute if data storage pandamium:auto_actions selected_entry{type:"auto_jail"} run function pandamium:impl/triggers/auto_actions_log/inspect_entry/action/auto_jail
execute if data storage pandamium:auto_actions selected_entry{type:"take"} store success score <returned> variable run trigger staff_world
