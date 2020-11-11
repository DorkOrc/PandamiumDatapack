execute at @a if score @s take_ec = @p id run scoreboard players set <has_items> variable 0
execute at @a if score @s take_ec = @p id run scoreboard players set <empty_chest> variable 0

execute at @a if score @s take_ec = @p id if data entity @p EnderItems[0] run scoreboard players add <has_items> variable 1

execute at @a if score @s take_ec = @p id if block 1 52 0 chest{Items:[]} run scoreboard players set <empty_chest> variable 1

execute at @a if score @s take_ec = @p id if score <has_items> variable matches 1.. if score <empty_chest> variable matches 1 as @p run function pandamium:take/move_ec
execute at @a if score @s take_ec = @p id if score <has_items> variable matches 1.. if score <empty_chest> variable matches 1 run tellraw @s [{"text":"","color":"yellow"},{"text":"[Info]","color":"gold"}," Took ",[{"selector":"@p"},"'s"]," ",{"text":"enderchest","color":"aqua"}," items!"]

execute at @a if score @s take_ec = @p id if score <has_items> variable matches 0 if score <empty_chest> variable matches 1 run tellraw @s [{"text": "[Info]", "color":"dark_red"}," ",{"selector":"@p","color":"red"},{"text":" has no items in their enderchest.","color":"red"}]
execute at @a if score @s take_ec = @p id if score <empty_chest> variable matches 0 run tellraw @s [{"text":"[Info]","color":"dark_red"},{"text":" The chest under spawn must be emptied.","color":"red"}]

scoreboard players reset @s take_ec
scoreboard players enable @s take_ec
