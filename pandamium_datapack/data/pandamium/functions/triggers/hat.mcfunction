execute unless score @s gameplay_perms matches 5.. run function pandamium:misc/donator_only_message

execute if score @s gameplay_perms matches 5.. in pandamium:staff_world run setblock 7 64 -7 chest{Items:[]}
execute if score @s gameplay_perms matches 5.. in pandamium:staff_world run item block 7 64 -7 container.0 copy entity @s armor.head
execute if score @s gameplay_perms matches 5.. run item entity @s armor.head copy entity @s weapon.mainhand
execute if score @s gameplay_perms matches 5.. in pandamium:staff_world run item entity @s weapon.mainhand copy block 7 64 -7 container.0

execute if score @s gameplay_perms matches 5.. run tellraw @s [{"text":"[Hat]","color":"dark_green"},{"text":" Swapped main hand and head slot!","color":"green"}]

scoreboard players reset @s hat
scoreboard players enable @s hat
