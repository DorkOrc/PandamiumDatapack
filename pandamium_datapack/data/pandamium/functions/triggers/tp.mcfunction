tag @s add doing_trigger

execute as @a if score @p[tag=doing_trigger] tp = @s id run tp @p[tag=doing_trigger] @s
execute as @a run tellraw @p[tag=doing_trigger] [{"text":"","color":"yellow"},{"text":"[TP]","color":"gold"}," You teleported to ",{"selector":"@s"},"!"]

tag @s remove doing_trigger
scoreboard players reset @s tp
scoreboard players enable @s tp
