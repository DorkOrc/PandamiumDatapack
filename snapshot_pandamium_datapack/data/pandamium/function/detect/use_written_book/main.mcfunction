scoreboard players reset @s detect.use.written_book
advancement revoke @s only pandamium:detect/use_written_book

execute store result score <mainhand> variable if predicate pandamium:holding/written_book_in_mainhand
execute if score <mainhand> variable matches 1 unless predicate pandamium:holding/replaceable_guidebook_in_mainhand run return 0
execute if score <mainhand> variable matches 0 unless predicate pandamium:holding/replaceable_guidebook_in_offhand run return 0

execute if score <mainhand> variable matches 1 store result score <held_version> variable run data get entity @s SelectedItem.components."minecraft:custom_data".pandamium.guidebook.version
execute if score <mainhand> variable matches 0 store result score <held_version> variable run data get entity @s Inventory[{Slot:-106b}].components."minecraft:custom_data".pandamium.guidebook.version
execute if score <held_version> variable = <guidebook_version_index> global run return 0

execute if score <mainhand> variable matches 1 run item modify entity @s weapon.mainhand pandamium:set_guidebook
execute if score <mainhand> variable matches 0 run item modify entity @s weapon.offhand pandamium:set_guidebook

tellraw @s [{"text":"[Private Info]","color":"dark_gray"},[{"text":" Your guidebook was updated to version ","color":"gray"},{"storage":"pandamium:global","nbt":"guidebook.version_name","bold":true},"."]]

# close old book gui
execute in pandamium:staff_world run tp @s 0 0 0
tp @s ~ ~ ~
