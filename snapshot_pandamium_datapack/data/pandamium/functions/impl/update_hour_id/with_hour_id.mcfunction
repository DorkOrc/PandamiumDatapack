# arguments: hour_id

# temporary
data modify storage pandamium:temp deleted_entries set value []
$data modify storage pandamium:temp deleted_entries append from storage pandamium.db.players:data entries[].data.tp_history[{hour_id: $(hour_id), recent: 0b}]
execute store result score <total> variable run data get storage pandamium:temp deleted_entries
tellraw @a[scores={send_extra_debug_info=2..}] [{"color":"gray","italic":true,"hoverEvent":{"action":"show_text","contents":["Deleted Entries: (raw data):\n",{"storage":"pandamium:temp","nbt":"deleted_entries","color":"gray"}]},"text":"[update_hour_id: Deleted "},{"score":{"name":"<total>","objective":"variable"}}," entries ℹ]"]

# delete expired entries
$data remove storage pandamium.db.players:data entries[].data.tp_history[{hour_id: $(hour_id), recent: 0b}]
