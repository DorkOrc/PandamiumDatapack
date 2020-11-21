execute unless score @s staff_perms matches 1.. run scoreboard players set @s homes 1
execute if score @s homes matches 1 run scoreboard players operation @s homes = @s id

tag @s add running_trigger
execute as @a if score @p[tag=running_trigger] homes = @s id run function pandamium:home/print_menu
tag @s remove running_trigger

scoreboard players reset @s homes
scoreboard players enable @s homes
