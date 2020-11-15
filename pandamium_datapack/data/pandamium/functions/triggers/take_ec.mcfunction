tag @s add doing_trigger

execute as @a if score @p[tag=doing_trigger] take_ec = @s id run scoreboard players set <has_items> variable 0
execute as @a if score @p[tag=doing_trigger] take_ec = @s id run scoreboard players set <empty_chest> variable 0

execute as @a if score @p[tag=doing_trigger] take_ec = @s id if data entity @s EnderItems[0] run scoreboard players add <has_items> variable 1

execute as @a if score @p[tag=doing_trigger] take_ec = @s id if block 1 52 0 chest{Items:[]} run scoreboard players set <empty_chest> variable 1

execute as @a if score @p[tag=doing_trigger] take_ec = @s id if score <has_items> variable matches 1.. if score <empty_chest> variable matches 1 in minecraft:overworld run function pandamium:take/move_ec
execute as @a if score @p[tag=doing_trigger] take_ec = @s id if score <has_items> variable matches 1.. if score <empty_chest> variable matches 1 run tellraw @p[tag=doing_trigger] [{"text":"","color":"yellow"},{"text":"[Info]","color":"gold"}," Took ",[{"selector":"@s"},"'s"]," ",{"text":"enderchest","bold":true}," items!"]

execute as @a if score @p[tag=doing_trigger] take_ec = @s id if score <has_items> variable matches 0 if score <empty_chest> variable matches 1 run tellraw @p[tag=doing_trigger] [{"text": "[Info]", "color":"dark_red"}," ",{"selector":"@s","color":"red"},{"text":" has no items in their enderchest.","color":"red"}]
execute as @a if score @p[tag=doing_trigger] take_ec = @s id if score <empty_chest> variable matches 0 run tellraw @p[tag=doing_trigger] [{"text":"[Info]","color":"dark_red"},{"text":" The chest under spawn must be emptied.","color":"red"}]

tag @s remove doing_trigger
scoreboard players reset @s take_ec
scoreboard players enable @s take_ec
