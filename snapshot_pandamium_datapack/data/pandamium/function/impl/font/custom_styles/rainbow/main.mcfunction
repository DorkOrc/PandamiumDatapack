data modify storage pandamium:text compound.text set value "ERR"
data remove storage pandamium:text compound.extra

execute store result score <max_index> variable if data storage pandamium:text characters[]
scoreboard players remove <max_index> variable 1

# fail for excessively large strings
execute if score <max_index> variable matches 50.. run return run tellraw @s [{"text":"[Font]","color":"dark_red"},{"text":" String is too long! As a lag prevention measure, the maximum string length for applying a gradient is 50 characters.","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Failed to apply gradient to ","color":"red"},{"storage":"pandamium:temp","nbt":"text","interpret":true}]}}]

# handle single characters
execute if score <max_index> variable matches 0 run return run function pandamium:impl/font/custom_styles/rainbow/single_character_exception

# else, iterate
scoreboard players set <index> variable 0
execute if score <max_index> variable matches 1.. run function pandamium:impl/font/custom_styles/rainbow/loop
data modify storage pandamium:text compound merge from storage pandamium:text compound.extra[0]
data remove storage pandamium:text compound.extra[0]
execute unless data storage pandamium:text compound.extra[0] run data remove storage pandamium:text compound.extra
