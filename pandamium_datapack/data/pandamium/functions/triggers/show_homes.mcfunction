execute if score @s homes matches 1 if score @s staff_perms matches 1.. run function pandamium:misc/print_nearest_non_staff_player

execute unless score @s staff_perms matches 1.. run scoreboard players set @s homes 1

tag @s add running_trigger

execute if score @s homes matches 1 run function pandamium:home/print_menu
execute if score @s staff_perms matches 1.. unless score @s homes matches 1 as @a if score @p[tag=running_trigger] homes = @s id run function pandamium:home/print_staff_menu

tag @s remove running_trigger
scoreboard players reset @s homes
scoreboard players enable @s homes
