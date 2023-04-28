execute if score <entry_id> variable matches 11..12 run function pandamium:impl/triggers/auto_actions_log/inspect_entry/get_entry/tree/11..12
execute if score <entry_id> variable matches 13 run data modify storage pandamium:auto_actions selected_entry set from storage pandamium:auto_actions actions[{id:13b}]
