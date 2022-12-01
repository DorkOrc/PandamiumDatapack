scoreboard players set <returned> variable 0

execute store success score <returned> variable unless score @s gameplay_perms matches 6.. run function pandamium:misc/print_donator_only_message

execute if score <returned> variable matches 0 run data modify storage pandamium:temp nbt set from entity @s
execute if score <returned> variable matches 0 store success score <returned> variable if data storage pandamium:temp nbt.Inventory[{Slot:103b}].tag.Enchantments[{id:'minecraft:binding_curse'}] run tellraw @s [{"text":"[Hat]","color":"dark_red"},{"text":" The item on your head has the Curse of Binding!","color":"red"}]
execute if score <returned> variable matches 0 store success score <returned> variable unless data storage pandamium:temp nbt.SelectedItem unless data storage pandamium:temp nbt.Inventory[{Slot:103b}] run tellraw @s [{"text":"[Hat]","color":"dark_red"},{"text":" Your hand and head slots are empty!","color":"red"}]
data remove storage pandamium:temp nbt

# Swap
execute if score <returned> variable matches 0 in pandamium:staff_world run setblock 0 0 0 chest
execute if score <returned> variable matches 0 in pandamium:staff_world run item replace block 0 0 0 container.0 from entity @s armor.head
execute if score <returned> variable matches 0 run item replace entity @s armor.head from entity @s weapon.mainhand
execute if score <returned> variable matches 0 in pandamium:staff_world run item replace entity @s weapon.mainhand from block 0 0 0 container.0
execute if score <returned> variable matches 0 run tellraw @s [{"text":"[Hat]","color":"dark_green"},{"text":" Swapped your hand and head slots!","color":"green"}]

#

scoreboard players reset @s hat
scoreboard players enable @s hat
