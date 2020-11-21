tag @s add running_trigger

execute as @a if score @p[tag=running_trigger] take_inv = @s id run scoreboard players set <has_items> variable 0
execute as @a if score @p[tag=running_trigger] take_inv = @s id run scoreboard players set <empty_chest> variable 0

execute as @a if score @p[tag=running_trigger] take_inv = @s id if data entity @s Inventory[0] run scoreboard players add <has_items> variable 1

execute as @a if score @p[tag=running_trigger] take_inv = @s id if block -1 52 -1 chest{Items:[]} run scoreboard players add <empty_chest> variable 1
execute as @a if score @p[tag=running_trigger] take_inv = @s id if block 0 52 -1 chest{Items:[]} run scoreboard players add <empty_chest> variable 1

execute as @a if score @p[tag=running_trigger] take_inv = @s id if score <has_items> variable matches 1.. if score <empty_chest> variable matches 2 in minecraft:overworld run function pandamium:take/move_inv
execute as @a if score @p[tag=running_trigger] take_inv = @s id if score <has_items> variable matches 1.. if score <empty_chest> variable matches 2 run tellraw @p[tag=running_trigger] [{"text":"","color":"yellow"},{"text":"[Info]","color":"gold"}," Took ",[{"selector":"@s"},"'s"]," ",{"text":"inventory","bold":true}," items!"]

execute as @a if score @p[tag=running_trigger] take_inv = @s id if score <empty_chest> variable matches ..1 run tellraw @p[tag=running_trigger] [{"text":"[Info]","color":"dark_red"},{"text":" The chest under spawn must be emptied.","color":"red"}]
execute as @a if score @p[tag=running_trigger] take_inv = @s id if score <empty_chest> variable matches 2.. if score <has_items> variable matches 0 run tellraw @p[tag=running_trigger] [{"text": "[Info]", "color":"dark_red"}," ",{"selector":"@s","color":"red"},{"text":" has no items in their inventory.","color":"red"}]

tag @s remove running_trigger
scoreboard players reset @s take_inv
scoreboard players enable @s take_inv
