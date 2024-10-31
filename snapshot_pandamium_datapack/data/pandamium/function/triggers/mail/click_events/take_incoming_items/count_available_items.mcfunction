# arguments: id

execute store result score <attached_items> variable store result score <available_items> variable if data storage pandamium.db.mail:io selected.entry.data.items[]
execute store result score <private_items> variable if data storage pandamium.db.mail:io selected.entry.data.items[{private:{}}]
$execute store result score <available_private_items> variable if data storage pandamium.db.mail:io selected.entry.data.items[{private:{id:$(id)}}]

scoreboard players operation <available_items> variable -= <private_items> variable
scoreboard players operation <available_items> variable += <available_private_items> variable
