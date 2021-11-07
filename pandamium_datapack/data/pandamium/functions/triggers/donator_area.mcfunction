execute unless score @s gameplay_perms matches 6.. run function pandamium:misc/donator_only_message

#execute if score @s gameplay_perms matches 6.. run function pandamium:misc/teleport/spawn
#execute if score @s gameplay_perms matches 6.. run function pandamium:misc/map_specific/parkour/end_parkour
#execute if score @s gameplay_perms matches 6.. run tp -148 -32 0
execute if score @s gameplay_perms matches 6.. run tellraw @s [{"text":"[Donator Area]","color":"dark_red"},{"text":" The donator area has not been built yet!","color":"red"}]

scoreboard players reset @s donator_area
scoreboard players enable @s donator_area
