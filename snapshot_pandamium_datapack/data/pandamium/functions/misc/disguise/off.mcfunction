# arguments: entity_type, nbt

execute unless entity @s[name="DorkOrc"] run return run tellraw @s [{"text":"[Disguise]","color":"dark_red"},{"text":" You are not a DorkOrc!","color":"red"}]

execute unless entity @s[scores={hidden=1..}] run return run tellraw @s [{"text":"[Disguise]","color":"dark_red"},{"text":" You are not disguised/hidden!","color":"red"}]

function pandamium:utils/get/position
scoreboard players operation @s pre_hide_pos_x = <x> variable
scoreboard players operation @s pre_hide_pos_y = <y> variable
scoreboard players operation @s pre_hide_pos_z = <z> variable 
execute store result score @s pre_hide_pos_d run function pandamium:utils/get/dimension_id

trigger hide
