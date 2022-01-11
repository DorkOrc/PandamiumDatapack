# run IN pandamium:staff_world
execute unless score @s gameplay_perms matches 6.. run function pandamium:misc/print_donator_only_message

data modify storage pandamium:temp NBT set from entity @s

execute unless score @s gameplay_perms matches 6..
execute store success score <curse_of_binding> variable if data storage pandamium:temp NBT.Inventory[{Slot:103b}].tag.Enchantments[{id:'minecraft:binding_curse'}]
scoreboard players set <empty_slots> variable 0
execute unless data storage pandamium:temp NBT.SelectedItem unless data storage pandamium:temp NBT.Inventory[{Slot:103b}] run scoreboard players set <empty_slots> variable 1

scoreboard players set <can_run> variable 0
execute if score @s gameplay_perms matches 6.. if score <curse_of_binding> variable matches 0 if score <empty_slots> variable matches 0 run scoreboard players set <can_run> variable 1

# Swap
execute if score <can_run> variable matches 1 run setblock 0 0 0 chest
execute if score <can_run> variable matches 1 run item replace block 0 0 0 container.0 from entity @s armor.head
execute if score <can_run> variable matches 1 run item replace entity @s armor.head from entity @s weapon.mainhand
execute if score <can_run> variable matches 1 run item replace entity @s weapon.mainhand from block 0 0 0 container.0

# Output Messages
execute if score <can_run> variable matches 1 run tellraw @s [{"text":"[Hat]","color":"dark_green"},{"text":" Swapped main hand and head slot!","color":"green"}]

scoreboard players operation <displayed_error> variable = <can_run> variable
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable unless score @s gameplay_perms matches 6..
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score <empty_slots> variable matches 1 run tellraw @s [{"text":"[Hat]","color":"dark_red"},{"text":" Both, your main hand and head slot, are empty!","color":"red"}]
execute unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score <curse_of_binding> variable matches 1 run tellraw @s [{"text":"[Vote Shop]","color":"dark_red"},{"text":" Your head item has the Curse of Binding!","color":"red"}]


scoreboard players reset @s hat
scoreboard players enable @s hat
