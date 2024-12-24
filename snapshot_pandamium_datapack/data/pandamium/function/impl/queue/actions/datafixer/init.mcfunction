data modify storage pandamium:queue selected.entry.meta.name set value '{"text":"Data Fixer","color":"yellow"}'
data remove storage pandamium:local functions."pandamium:impl/queue/actions/datafixer/*"

data modify storage pandamium.db.stored_items:data reuse_slots append from storage pandamium.db.stored_items:data entries[{recyclable:1b}]
data remove storage pandamium.db.stored_items:data reuse_slots[].recyclable
data remove storage pandamium.db.stored_items:data reuse_slots[].stored_item_id

data remove storage pandamium.db.mail:data entries[].data.items[{taken:1b}].stored_item_id

data modify storage pandamium:queue selected.entry.stored_item_ids set value []
data modify storage pandamium:queue selected.entry.stored_item_ids append from storage pandamium.db.stored_items:data entries[{recyclable:1b}].stored_item_id
execute store result storage pandamium:queue selected.entry.meta.max int 1 if data storage pandamium:queue selected.entry.stored_item_ids[]

scoreboard players set <datafixer_in_progress> global 1
