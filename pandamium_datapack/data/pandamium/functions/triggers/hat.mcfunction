execute unless score @s gameplay_perms matches 5.. run function pandamium:misc/donator_only_message

scoreboard players set <head_slot_empty> variable 1
execute if score @s gameplay_perms matches 5.. if data entity @s Inventory[{Slot:103b}] run scoreboard players set <head_slot_empty> variable 0

scoreboard players set <has_selected_item> variable 0
execute if score @s gameplay_perms matches 5.. if data entity @s SelectedItem run scoreboard players set <has_selected_item> variable 1

execute if score @s gameplay_perms matches 5.. if score <head_slot_empty> variable matches 1 if score <has_selected_item> variable matches 1 run item entity @s armor.head copy entity @s weapon.mainhand
execute if score @s gameplay_perms matches 5.. if score <head_slot_empty> variable matches 1 if score <has_selected_item> variable matches 1 run item entity @s weapon.mainhand replace air

execute if score @s gameplay_perms matches 5.. if score <head_slot_empty> variable matches 0 run tellraw @s [{"text":"[Hat]","color":"dark_red"}," ",[{"text":"You already have an item on your head!","color":"red"}]]
execute if score @s gameplay_perms matches 5.. if score <head_slot_empty> variable matches 1 if score <has_selected_item> variable matches 0 run tellraw @s [{"text":"[Hat]","color":"dark_red"}," ",[{"text":"No item in your main hand!","color":"red"}]]
execute if score @s gameplay_perms matches 5.. if score <head_slot_empty> variable matches 1 if score <has_selected_item> variable matches 1 run tellraw @s [{"text":"[Hat]","color":"dark_green"}," ",[{"text":"Put selected item onto your head!","color":"green"}]]

scoreboard players reset @s hat
scoreboard players enable @s hat
