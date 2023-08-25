execute unless score @s gameplay_perms matches 6.. run function pandamium:utils/print_donator_only_message

#execute if score @s gameplay_perms matches 6.. run function pandamium:misc/warp/spawn
#execute if score @s gameplay_perms matches 6.. in overworld positioned -101 -50 -40 rotated 0 0 run function pandamium:utils/teleport/here

execute if score @s gameplay_perms matches 6.. run tellraw @s [{"text":"[Donator Area]","color":"dark_red"},[{"text":" The ","color":"red"},{"text":"Donator Area","bold":true}," warp does not exist!"]]

scoreboard players reset @s donator_area
scoreboard players enable @s donator_area
