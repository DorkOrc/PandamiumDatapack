tag @s add running_trigger

execute if score @p[tag=running_trigger] playtime matches 1 run function pandamium:misc/get_playtime
execute if score @p[tag=running_trigger] playtime matches 1 if score @s staff_perms matches 1.. run function pandamium:misc/print_nearest_non_staff_player

execute if score @p[tag=running_trigger] playtime matches 2.. if score @p[tag=running_trigger] staff_perms matches 1.. as @a if score @p[tag=running_trigger] playtime = @s id run function pandamium:misc/get_playtime

tag @s remove running_trigger
scoreboard players reset @s playtime
scoreboard players enable @s playtime
