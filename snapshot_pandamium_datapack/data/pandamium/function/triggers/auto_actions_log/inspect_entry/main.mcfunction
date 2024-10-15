scoreboard players operation <entry_id> variable = @s auto_actions_log
scoreboard players operation <entry_id> variable *= #-1 constant

data remove storage pandamium:auto_actions selected_entry
function pandamium:triggers/auto_actions_log/inspect_entry/get_entry/main

execute if data storage pandamium:auto_actions selected_entry{type:"auto_jail"} run return run function pandamium:triggers/auto_actions_log/inspect_entry/action/auto_jail
execute if data storage pandamium:auto_actions selected_entry{type:"take"} run return run trigger staff_world

tellraw @s [{"text":"[Auto-Actions Log]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
