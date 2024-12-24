#{
#	action: "datafixer",
#	stored_item_ids: [...]
#}

execute if data storage pandamium:queue actions_ran."datafixer" run return 0

# get selected entry info
data modify storage pandamium:local functions."pandamium:impl/queue/actions/datafixer/*".stored_item_id set from storage pandamium:queue selected.entry.stored_item_ids[-1]
function pandamium:utils/database/stored_items/load/from_stored_item_id with storage pandamium:local functions."pandamium:impl/queue/actions/datafixer/*"
data modify storage pandamium:local functions."pandamium:impl/queue/actions/datafixer/*".selected_entry_index set from storage pandamium.db.stored_items:io selected.index

# get top entry info
data modify storage pandamium:local functions."pandamium:impl/queue/actions/datafixer/*".top_entry_id set from storage pandamium.db.stored_items:data entries[-1].stored_item_id
#execute store result score <top_index> variable if data storage pandamium.db.stored_items:data entries[]
#execute store result storage pandamium:local functions."pandamium:impl/queue/actions/datafixer/*".top_index int 1 run scoreboard players remove <top_index> variable 1

# process selected entry
execute if data storage pandamium.db.stored_items:io selected run function pandamium:impl/queue/actions/datafixer/process_selected_entry with storage pandamium:local functions."pandamium:impl/queue/actions/datafixer/*"

# continue
data remove storage pandamium:queue selected.entry.stored_item_ids[-1]
execute store result storage pandamium:queue selected.entry.meta.value int -1 if data storage pandamium:queue selected.entry.stored_item_ids[]
execute if data storage pandamium:queue selected.entry.stored_item_ids[0] run return run function pandamium:impl/queue/utils/continue

# end
scoreboard players set <datafixer_in_progress> global 0
tellraw @a[scores={send_extra_debug_info=2..}] {"color":"gray","italic":true,"text":"[Pandamium: Datafixer finished]"}
