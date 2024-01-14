function pandamium:utils/database/entities/load/self

data modify entity @s CustomName set from storage pandamium.db:entities selected.entry.data.name
execute unless data storage pandamium.db:entities selected.entry.data.name if data entity @s CustomName run data modify entity @s CustomName set value '""'
# cannot just remove CustomName due to a bug that prevents you from being able to remove names from entities (since 1.20.3)
