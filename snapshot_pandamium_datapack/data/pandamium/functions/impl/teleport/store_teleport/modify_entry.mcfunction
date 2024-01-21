# arguments: index
# Inserted manually as to not implicitly force a save/replace to selected entries when a teleport happens.

data modify storage pandamium:temp tp_history set value []
$data modify storage pandamium:temp tp_history set from storage pandamium.db.players:data entries[$(index)].data.tp_history

data modify storage pandamium:temp tp_history append from storage pandamium:templates teleport
data modify storage pandamium:temp tp_history[-6].recent set value 0b
execute store result score <sixth_latest_hour_id> variable run data get storage pandamium:temp tp_history[-6].hour_id
execute if score <sixth_latest_hour_id> variable <= <expired_hour_id> global run data remove storage pandamium:temp tp_history[-6]

# save
$data modify storage pandamium.db.players:data entries[$(index)].data.tp_history set from storage pandamium:temp tp_history
$execute if data storage pandamium.db.players:io selected{index:$(index)} run data modify storage pandamium.db.players:io selected.entry.data.tp_history set from storage pandamium:temp tp_history
