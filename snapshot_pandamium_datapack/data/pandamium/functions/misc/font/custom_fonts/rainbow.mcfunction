data modify storage pandamium:json string set from storage pandamium:temp Text
function pandamium:misc/json/main
data modify storage pandamium:temp characters set from storage pandamium:json all_characters
data modify storage pandamium:temp coloured_characters set value []

execute store result score <max_character_index> variable run data get storage pandamium:temp characters
scoreboard players remove <max_character_index> variable 1

scoreboard players set <n> variable 0

scoreboard players set <max_colour_index> variable 14
execute in pandamium:staff_world run setblock 0 0 0 oak_sign
execute if data storage pandamium:temp characters[0] in pandamium:staff_world run function pandamium:misc/font/custom_fonts/rainbow_iter

execute in pandamium:staff_world run data modify block 0 0 0 Text1 set value '{"nbt":"coloured_characters[]","storage":"pandamium:temp","interpret":true,"separator":""}'

