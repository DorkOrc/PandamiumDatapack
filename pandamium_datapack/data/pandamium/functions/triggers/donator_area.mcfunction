execute unless score @s gameplay_perms matches 5.. run function pandamium:misc/donator_only_message

#execute if score @s gameplay_perms matches 5.. run tp @s -105 20 0
execute if score @s gameplay_perms matches 5.. run tellraw @s [{"text":"[Info]","color":"dark_red"},{"text":" There is currently no donator area! It will be available soon.","color":"red"}]
execute if score @s gameplay_perms matches 5.. run spectate
execute if score @s gameplay_perms matches 5.. run xp add @s 0

scoreboard players reset @s donator_area
scoreboard players enable @s donator_area
