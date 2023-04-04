scoreboard players operation <entry_id> variable = @s auto_actions_log
scoreboard players operation <entry_id> variable *= #-1 constant

data remove storage pandamium:auto_actions selected_entry
function pandamium:misc/auto_actions/inspect_entry/tree/run

execute if data storage pandamium:auto_actions selected_entry{type:"auto_jail"} if score @s staff_perms matches 2.. run function pandamium:misc/auto_actions/inspect_entry/action/auto_jail
execute if data storage pandamium:auto_actions selected_entry{type:"take"} store success score <returned> variable run trigger staff_world
