function pandamium:utils/database/entities/load/self

# feeding animals
execute if data storage pandamium.db.entities:io selected.entry.data{is_baby:1b} run data modify entity @s Age set value -2147483648

execute if score <store_name> variable matches 0 run data modify entity @s CustomName set from storage pandamium.db.entities:io selected.entry.data.name
execute if score <store_name> variable matches 0 unless data storage pandamium.db.entities:io selected.entry.data.name if data entity @s CustomName run data remove entity @s CustomName
execute if score <store_name> variable matches 1 run data modify storage pandamium.db.entities:io selected.entry.data.name set from entity @s CustomName

execute if score <store_name> variable matches 1 run function pandamium:utils/database/entities/save
