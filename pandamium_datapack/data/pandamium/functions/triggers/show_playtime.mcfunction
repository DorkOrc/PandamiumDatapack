tag @s add doing_trigger

execute if score @p[tag=doing_trigger] show_playtime matches 1 run function pandamium:misc/get_playtime
execute if score @p[tag=doing_trigger] show_playtime matches 2.. if score @p[tag=doing_trigger] staff_perms matches 1.. as @a if score @p[tag=doing_trigger] show_playtime = @s id run function pandamium:misc/get_playtime

tag @s remove doing_trigger
scoreboard players reset @s show_playtime
scoreboard players enable @s show_playtime
