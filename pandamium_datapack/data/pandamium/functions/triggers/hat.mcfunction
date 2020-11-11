execute unless score @s gameplay_perms matches 5.. run function pandamium:misc/donator_only_message
execute unless score @s gameplay_perms matches 5.. run scoreboard players reset @s hat

execute if score @s gameplay_perms matches 5.. store success score <has_no_head_item> variable unless data entity @s Inventory[{Slot:103b}]
execute if score @s gameplay_perms matches 5.. store success score <has_selected_item> variable if data entity @s SelectedItem

execute if score @s gameplay_perms matches 5.. if score <has_no_head_item> variable matches 1 if score <has_selected_item> variable matches 1 run item entity @s armor.head copy entity @s weapon.mainhand
execute if score @s gameplay_perms matches 5.. if score <has_no_head_item> variable matches 1 if score <has_selected_item> variable matches 1 run item entity @s weapon.mainhand replace air

execute if score @s gameplay_perms matches 5.. if score <has_no_head_item> variable matches 0 run tellraw @s [{"text":"[Hat]","color":"dark_red"}," ",[{"text":"You already have an item on your head!","color":"red"}]]
execute if score @s gameplay_perms matches 5.. if score <has_no_head_item> variable matches 1 if score <has_selected_item> variable matches 0 run tellraw @s [{"text":"[Hat]","color":"dark_red"}," ",[{"text":"No item in your hand!","color":"red"}]]
execute if score @s gameplay_perms matches 5.. if score <has_no_head_item> variable matches 1 if score <has_selected_item> variable matches 1 run tellraw @s [{"text":"[Hat]","color":"dark_green"}," ",[{"text":"Put selected item onto your head!","color":"green"}]]

scoreboard players reset @s hat
scoreboard players enable @s hat
