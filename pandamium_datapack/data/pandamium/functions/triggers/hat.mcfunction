execute unless score @s gameplay_perms matches 5.. run function pandamium:misc/donator_only_message

execute if score @s gameplay_perms matches 5.. run scoreboard players set <hand_item_exists> variable 0
execute if score @s gameplay_perms matches 5.. if data entity @s SelectedItem run scoreboard players set <hand_item_exists> variable 1

execute if score @s gameplay_perms matches 5.. if score <hand_item_exists> variable matches 1 in minecraft:overworld run setblock -3 52 -1 minecraft:chest[facing=south,type=single]{Items:[]}
execute if score @s gameplay_perms matches 5.. if score <hand_item_exists> variable matches 1 in minecraft:overworld run item block -3 52 -1 container.0 copy entity @s armor.head
execute if score @s gameplay_perms matches 5.. if score <hand_item_exists> variable matches 1 in minecraft:overworld run item entity @s armor.head copy entity @s weapon.mainhand
execute if score @s gameplay_perms matches 5.. if score <hand_item_exists> variable matches 1 in minecraft:overworld run item entity @s weapon.mainhand copy block -3 52 -1 container.0

execute if score @s gameplay_perms matches 5.. if score <hand_item_exists> variable matches 1 run tellraw @s [{"text":"[Hat]","color":"dark_green"}," ",[{"text":"Swapped main hand item and head item!","color":"green"}]]
execute if score @s gameplay_perms matches 5.. unless score <hand_item_exists> variable matches 1 run tellraw @s [{"text":"[Hat]","color":"dark_red"}," ",[{"text":"There is no item in your main hand!","color":"red"}]]

scoreboard players reset @s hat
scoreboard players enable @s hat
