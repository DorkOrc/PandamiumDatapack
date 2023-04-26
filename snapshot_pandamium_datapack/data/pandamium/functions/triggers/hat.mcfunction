scoreboard players set <returned> variable 0

execute unless score @s gameplay_perms matches 6.. store success score <returned> variable run function pandamium:misc/print_donator_only_message

execute if score <returned> variable matches 0 if predicate pandamium:is_wearing_binding_curse_on_head store success score <returned> variable run tellraw @s [{"text":"[Hat]","color":"dark_red"},{"text":" The item on your head has the Curse of Binding!","color":"red"}]
execute if score <returned> variable matches 0 unless predicate pandamium:is_holding_anything_in_mainhand unless predicate pandamium:is_wearing_anything_on_head store success score <returned> variable run tellraw @s [{"text":"[Hat]","color":"dark_red"},{"text":" Your hand and head slots are empty!","color":"red"}]
execute if score <returned> variable matches 0 in pandamium:staff_world run function pandamium:impl/triggers/hat/swap_hand_and_head

scoreboard players reset @s hat
scoreboard players enable @s hat
