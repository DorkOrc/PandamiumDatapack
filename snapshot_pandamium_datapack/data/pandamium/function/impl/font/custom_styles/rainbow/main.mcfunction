data modify block 3 0 0 front_text.messages[0] set value '{"text":""}'

execute store result score <max_index> variable if data storage pandamium:text characters[]
scoreboard players remove <max_index> variable 1

execute if score <max_index> variable matches 50.. run data modify block 3 0 0 front_text.messages[0] set from storage pandamium:temp text
execute if score <max_index> variable matches 50.. run tellraw @s [{"text":"[Font]","color":"dark_red"},{"text":" String is too long! As a lag prevention measure, the maximum string length for applying a gradient is 50 characters.","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Failed to apply gradient to ","color":"red"},{"storage":"pandamium:temp","nbt":"text","interpret":true}]}}]
execute if score <max_index> variable matches 50.. run return 0

scoreboard players set <index> variable 0
execute if score <max_index> variable matches 1.. in pandamium:staff_world run function pandamium:impl/font/custom_styles/rainbow/loop
execute if score <max_index> variable matches 0 in pandamium:staff_world run function pandamium:impl/font/custom_styles/rainbow/single_character_exception

data remove storage pandamium:text compound.color
function pandamium:impl/font/reapply_root_attributes/main
