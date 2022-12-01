function pandamium:misc/count_filled_inventory_slots
# `pandamium:misc/count_filled_inventory_slots` sets `pandamium:temp count.nbt` from entity @s
data modify storage pandamium:temp pos set from storage pandamium:temp count.nbt.Pos
data remove storage pandamium:temp selected_item
data modify storage pandamium:temp selected_item set from storage pandamium:temp count.nbt.SelectedItem
execute unless data storage pandamium:temp selected_item run scoreboard players add <filled_inventory_slots> variable 1

scoreboard players set <total_equipped_items> variable 0
execute if score <feet_slot_filled> variable matches 1 run scoreboard players add <total_equipped_items> variable 1
execute if score <legs_slot_filled> variable matches 1 run scoreboard players add <total_equipped_items> variable 1
execute if score <chest_slot_filled> variable matches 1 run scoreboard players add <total_equipped_items> variable 1
execute if score <head_slot_filled> variable matches 1 run scoreboard players add <total_equipped_items> variable 1
execute if score <offhand_slot_filled> variable matches 1 run scoreboard players add <total_equipped_items> variable 1
execute if score <mainhand_slot_filled> variable matches 1 run scoreboard players add <total_equipped_items> variable 1

scoreboard players set <max_filled_slots> variable 36
scoreboard players operation <max_filled_slots> variable -= <total_equipped_items> variable
execute store success score <can_run> variable if score <filled_inventory_slots> variable <= <max_filled_slots> variable

execute if score <can_run> variable matches 1 run function pandamium:misc/hide/do_hide
execute if score <can_run> variable matches 1 if score <total_equipped_items> variable matches 1.. run tellraw @s [{"text":"[Hide]","color":"gold"},[{"text":" You are now invisible and in creative mode! Unequipped ","color":"yellow"},{"score":{"name":"<total_equipped_items>","objective":"variable"},"bold":true,"color":"gold"}," item",{"text":"(s)","color":"gray"},"."]]
execute if score <can_run> variable matches 1 unless score <total_equipped_items> variable matches 1.. run tellraw @s [{"text":"[Hide]","color":"gold"},{"text":" You are now invisible and in creative mode!","color":"yellow"}]

execute if score <can_run> variable matches 0 run tellraw @s [{"text":"[Hide]","color":"dark_red"},{"text":" Failed to make you invisible! There is not enough room in your inventory to unequip your armour, mainhand and/or offhand items.","color":"red"}]
