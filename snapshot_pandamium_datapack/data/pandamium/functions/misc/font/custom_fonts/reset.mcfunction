# pre
data modify storage pandamium:json string set from storage pandamium:temp Text
function pandamium:misc/json/main
data modify storage pandamium:temp characters set from storage pandamium:json all_characters
data modify storage pandamium:temp coloured_characters set value []

execute store result score <max_character_index> variable run data get storage pandamium:temp characters
scoreboard players remove <max_character_index> variable 1

scoreboard players set <n> variable 0

data modify block 0 0 0 Text1 set value '{"nbt":"characters[]","storage":"pandamium:temp","separator":"","color":"reset"}'
data modify storage pandamium:temp coloured_characters append from block 0 0 0 Text1

execute in pandamium:staff_world run data modify block 0 0 0 Text1 set value '{"text":"","hoverEvent":{"action":"show_text","contents":[{"text":"","hoverEvent":{"action":"show_text","contents":[{"nbt":"all_characters","storage":"pandamium:json"},"§"]}}]},"extra":[{"nbt":"coloured_characters[]","storage":"pandamium:temp","interpret":true,"separator":""}]}'
