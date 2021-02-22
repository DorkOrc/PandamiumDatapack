execute if score @s homes matches 1 if score @s staff_perms matches 1.. run function pandamium:misc/print_nearest_non_staff_player

execute unless score @s staff_perms matches 1.. run scoreboard players set @s homes 1

tag @s add running_trigger

execute if score @s homes matches 1 run function pandamium:home/print_menu

execute if score @s staff_perms matches 1 unless score @s homes matches 1 as @a if score @p[tag=running_trigger] homes = @s id run function pandamium:home/print_helper_menu

execute if score @s staff_perms matches 2.. unless score @s homes matches 1 run scoreboard players reset @s selected_player
execute if score @s staff_perms matches 2.. unless score @s homes matches 1 as @a if score @p[tag=running_trigger] homes = @s id run scoreboard players operation @p[tag=running_trigger] selected_player = @s id
execute if score @s staff_perms matches 2.. unless score @s homes matches 1 as @a if score @p[tag=running_trigger] homes = @s id run function pandamium:home/print_moderator_menu

tag @s remove running_trigger
scoreboard players reset @s homes
scoreboard players enable @s homes
