data modify storage pandamium:take inventory set from entity @s Inventory

data modify storage pandamium:take inventory[{tag:{Enchantments:[{id:'binding_curse'}]}}].tag.Enchantments[{id:'binding_curse'}].id set value 'minecraft:binding_curse'
execute store success score <feet_slot_bound> variable if data storage pandamium:take inventory[{Slot:100b}].tag.Enchantments[{id:'minecraft:binding_curse'}]
execute store success score <legs_slot_bound> variable if data storage pandamium:take inventory[{Slot:101b}].tag.Enchantments[{id:'minecraft:binding_curse'}]
execute store success score <chest_slot_bound> variable if data storage pandamium:take inventory[{Slot:102b}].tag.Enchantments[{id:'minecraft:binding_curse'}]
execute store success score <head_slot_bound> variable if data storage pandamium:take inventory[{Slot:103b}].tag.Enchantments[{id:'minecraft:binding_curse'}]

scoreboard players set <item_count> variable 0
execute if score <feet_slot_bound> variable matches 1 run scoreboard players add <item_count> variable 1
execute if score <legs_slot_bound> variable matches 1 run scoreboard players add <item_count> variable 1
execute if score <chest_slot_bound> variable matches 1 run scoreboard players add <item_count> variable 1
execute if score <head_slot_bound> variable matches 1 run scoreboard players add <item_count> variable 1

execute unless score <item_count> variable matches 1.. store success score <returned> variable run tellraw @p[tag=source] [{"text":"[Take] ","color":"dark_red"},{"selector":"@s","color":"red"},{"text":" is not wearing any items cursed with binding!","color":"red"}]

tag @s add take.target
execute if score <item_count> variable matches 1.. in pandamium:staff_world positioned 7 64 0 summon marker run function pandamium:misc/take/bound_items/as_marker
tag @s remove take.target
