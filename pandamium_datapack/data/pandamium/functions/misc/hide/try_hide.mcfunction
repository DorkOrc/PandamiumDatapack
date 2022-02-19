# `pandamium:misc/count_filled_inventory_slots` sets `pandamium:temp count.NBT` from entity @s
function pandamium:misc/count_filled_inventory_slots
data modify storage pandamium:temp NBT set from storage pandamium:temp count.NBT
execute unless data storage pandamium:temp NBT.SelectedItem run scoreboard players add <filled_inventory_slots> variable 1

scoreboard players set <total_equipped_items> variable 0
execute if data storage pandamium:temp NBT.Inventory[{Slot:100b}] run scoreboard players add <total_equipped_items> variable 1
execute if data storage pandamium:temp NBT.Inventory[{Slot:101b}] run scoreboard players add <total_equipped_items> variable 1
execute if data storage pandamium:temp NBT.Inventory[{Slot:102b}] run scoreboard players add <total_equipped_items> variable 1
execute if data storage pandamium:temp NBT.Inventory[{Slot:103b}] run scoreboard players add <total_equipped_items> variable 1
execute if data storage pandamium:temp NBT.Inventory[{Slot:-106b}] run scoreboard players add <total_equipped_items> variable 1
execute if data storage pandamium:temp NBT.SelectedItem run scoreboard players add <total_equipped_items> variable 1

scoreboard players set <max_filled_slots> variable 36
scoreboard players operation <max_filled_slots> variable -= <total_equipped_items> variable

execute if score <filled_inventory_slots> variable <= <max_filled_slots> variable if score <total_equipped_items> variable matches 1.. in pandamium:staff_world run function pandamium:misc/hide/unequip_all
execute if score <filled_inventory_slots> variable <= <max_filled_slots> variable run function pandamium:misc/hide/do_hide
execute unless score <filled_inventory_slots> variable <= <max_filled_slots> variable run scoreboard players set @s hidden 0

execute if score <filled_inventory_slots> variable <= <max_filled_slots> variable if score <total_equipped_items> variable matches 1.. run tellraw @s [{"text":"[Hide]","color":"gold"},[{"text":" You are now invisible! Unequipped ","color":"yellow"},{"score":{"name":"<total_equipped_items>","objective":"variable"},"bold":true,"color":"gold"}," item",{"text":"(s)","color":"gray","italic":true},"."]]
execute if score <filled_inventory_slots> variable <= <max_filled_slots> variable unless score <total_equipped_items> variable matches 1.. run tellraw @s [{"text":"[Hide]","color":"gold"},{"text":" You are now invisible!","color":"yellow"}]
execute unless score <filled_inventory_slots> variable <= <max_filled_slots> variable run tellraw @s [{"text":"[Hide]","color":"dark_red"},{"text":" Unable to unequip your armour, mainhand and/or offhand items! There was not enough room in your inventory.","color":"red"}]
