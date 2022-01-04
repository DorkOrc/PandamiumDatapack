# run IN pandamium:staff_world

execute unless score @s gameplay_perms matches 6.. run function pandamium:misc/donator_only_message

execute if score @s gameplay_perms matches 6.. run data modify storage pandamium:temp NBT set from entity @s
execute store success score <can_run> variable if score @s gameplay_perms matches 6..
execute if score @s gameplay_perms matches 6.. unless data storage pandamium:temp NBT.SelectedItem unless data storage pandamium:temp NBT.Inventory[{Slot:103b}] run scoreboard players set <can_run> variable 0

execute if score <can_run> variable matches 1 run setblock 0 0 0 chest
execute if score <can_run> variable matches 1 run item replace block 0 0 0 container.0 from entity @s armor.head
execute if score <can_run> variable matches 1 run item replace entity @s armor.head from entity @s weapon.mainhand
execute if score <can_run> variable matches 1 run item replace entity @s weapon.mainhand from block 0 0 0 container.0

execute if score <can_run> variable matches 0 if score @s gameplay_perms matches 6.. run tellraw @s [{"text":"[Hat]","color":"dark_red"},{"text":" Both, your main hand and head slot are empty!","color":"red"}]
execute if score <can_run> variable matches 1 run tellraw @s [{"text":"[Hat]","color":"dark_green"},{"text":" Swapped main hand and head slot!","color":"green"}]

scoreboard players reset @s hat
scoreboard players enable @s hat
