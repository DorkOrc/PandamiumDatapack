tag @s add doing_trigger

execute if score @p[tag=doing_trigger] tpa matches 1 run function pandamium:tpa/print_menu

execute if score @p[tag=doing_trigger] tpa matches 2.. if score @p[tag=doing_trigger] tpa = @p[tag=doing_trigger] id run tellraw @p[tag=doing_trigger] [{"text":"","color":"red"},{"text":"[TPA]","color":"dark_red"}," You cannot send a TPA request to yourself."]
execute if score @p[tag=doing_trigger] tpa matches 2.. unless score @p[tag=doing_trigger] tpa = @p[tag=doing_trigger] id run function pandamium:tpa/check_cooldown

tag @s remove doing_trigger
scoreboard players reset @s tpa
scoreboard players enable @s tpa
