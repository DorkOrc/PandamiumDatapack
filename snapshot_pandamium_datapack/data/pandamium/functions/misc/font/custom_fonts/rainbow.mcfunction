# pre
data modify storage pandamium:json string set from storage pandamium:temp Text
function pandamium:misc/json/main
data modify storage pandamium:temp characters set from storage pandamium:json all_characters
data modify storage pandamium:temp coloured_characters set value []

execute store result score <max_character_index> variable run data get storage pandamium:temp characters
scoreboard players remove <max_character_index> variable 1

scoreboard players set <n> variable 0

scoreboard players set <max_colour_index> variable 14
execute if data storage pandamium:temp characters[0] in pandamium:staff_world run function pandamium:misc/font/custom_fonts/loop/rainbow

execute in pandamium:staff_world run data modify block 0 0 0 Text1 set value '{"text":"","hoverEvent":{"action":"show_text","contents":[{"text":"","hoverEvent":{"action":"show_text","contents":[{"nbt":"all_characters","storage":"pandamium:json"},"§"]}}]},"extra":[{"nbt":"coloured_characters[]","storage":"pandamium:temp","interpret":true,"separator":""}]}'

execute store result score <root_attributes> variable run data get storage pandamium:json root_attributes
execute if score <root_attributes> variable matches 1.. run function pandamium:misc/font/custom_fonts/reapply_root_attributes
