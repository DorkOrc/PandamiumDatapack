execute if score <entry_id> variable matches 6..7 run function pandamium:impl/triggers/auto_actions_log/inspect_entry/get_entry/tree/6..7
execute if score <entry_id> variable matches 8 run data modify storage pandamium:auto_actions selected_entry set from storage pandamium:auto_actions actions[{id:8b}]
