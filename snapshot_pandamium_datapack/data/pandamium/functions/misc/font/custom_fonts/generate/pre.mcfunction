data modify storage pandamium:json string set from storage pandamium:temp Text
function pandamium:misc/json/main
data modify storage pandamium:temp characters set from storage pandamium:json all_characters
data modify storage pandamium:temp coloured_characters set value []

execute in pandamium:staff_world run data modify block 3 0 0 front_text.messages[0] set value '{"text":"","hoverEvent":{"action":"show_text","contents":[{"text":"","hoverEvent":{"action":"show_text","contents":[{"nbt":"all_characters","storage":"pandamium:json"},"§"]}}]}}'

execute store result score <max_character_index> variable run data get storage pandamium:temp characters
scoreboard players remove <max_character_index> variable 1

scoreboard players set <n> variable 0
