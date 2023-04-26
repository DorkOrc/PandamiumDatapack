function pandamium:utils/count_filled_inventory_slots
execute unless predicate pandamium:is_holding_anything_in_mainhand run scoreboard players add <filled_inventory_slots> variable 1

scoreboard players set <total_equipped_items> variable 0
execute if score <feet_slot_filled> variable matches 1 run scoreboard players add <total_equipped_items> variable 1
execute if score <legs_slot_filled> variable matches 1 run scoreboard players add <total_equipped_items> variable 1
execute if score <chest_slot_filled> variable matches 1 run scoreboard players add <total_equipped_items> variable 1
execute if score <head_slot_filled> variable matches 1 run scoreboard players add <total_equipped_items> variable 1
execute if score <offhand_slot_filled> variable matches 1 run scoreboard players add <total_equipped_items> variable 1
execute if score <mainhand_slot_filled> variable matches 1 run scoreboard players add <total_equipped_items> variable 1

scoreboard players set <max_filled_slots> variable 36
scoreboard players operation <max_filled_slots> variable -= <total_equipped_items> variable
execute if score <filled_inventory_slots> variable <= <max_filled_slots> variable run function pandamium:impl/triggers/hide/do_hide
execute if score <returned> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Hide]","color":"dark_red"},{"text":" Failed to make you invisible! There is not enough room in your inventory to unequip your armour, mainhand and/or offhand items.","color":"red"}]
