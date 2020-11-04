execute unless score @s staff_perms matches 1.. run scoreboard players set @s homes 1
execute if score @s homes matches 1 run scoreboard players operation @s homes = @s id

tag @s add doing_trigger
execute as @a if score @a[tag=doing_trigger,limit=1] homes = @s id run function pandamium:home/print_menu
tag @s remove doing_trigger

scoreboard players reset @s homes
scoreboard players enable @s homes
