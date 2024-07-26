function pandamium:utils/count_filled_inventory_slots
execute unless items entity @s weapon.mainhand * run scoreboard players add <filled_inventory_slots> variable 1

scoreboard players set <total_equipped_items> variable 0
execute if items entity @s armor.feet * run scoreboard players add <total_equipped_items> variable 1
execute if items entity @s armor.legs * run scoreboard players add <total_equipped_items> variable 1
execute if items entity @s armor.chest * run scoreboard players add <total_equipped_items> variable 1
execute if items entity @s armor.head * run scoreboard players add <total_equipped_items> variable 1
execute if items entity @s weapon.offhand * run scoreboard players add <total_equipped_items> variable 1
execute if items entity @s weapon.mainhand * run scoreboard players add <total_equipped_items> variable 1

scoreboard players set <max_filled_slots> variable 36
scoreboard players operation <max_filled_slots> variable -= <total_equipped_items> variable
execute if score <filled_inventory_slots> variable <= <max_filled_slots> variable run return run function pandamium:triggers/hide/do_hide
tellraw @s [{"text":"[Hide]","color":"dark_red"},{"text":" Failed to make you invisible! There is not enough room in your inventory to unequip your armour, mainhand and/or offhand items.","color":"red"}]
