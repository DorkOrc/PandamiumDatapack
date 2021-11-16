execute store success score @s hidden unless score @s hidden matches 1

execute if score @s hidden matches 0 run function pandamium:misc/hide/do_unhide
execute if score @s hidden matches 1 run function pandamium:misc/hide/try_hide

scoreboard players reset @s hide
scoreboard players enable @s hide
