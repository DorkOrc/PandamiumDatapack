execute if score <entry_id> variable matches 1..2 run function pandamium:triggers/auto_actions_log/inspect_entry/get_entry/tree/1..2
execute if score <entry_id> variable matches 3 run data modify storage pandamium:auto_actions selected_entry set from storage pandamium:auto_actions actions[{id:3b}]
