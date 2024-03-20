# context: in pandamium:staff_world

data modify storage pandamium:temp items set from entity @s Inventory
execute store result score <jail_items_in_inventory> variable if data storage pandamium:temp items[].components."minecraft:custom_data".pandamium.jail_item

execute if score <jail_items_in_inventory> variable matches 0 run return run tellraw @s [{"text":"[Remove Lore]","color":"dark_red"},{"text":" There are no jail items in your inventory!","color":"red"}]

data modify block 2 0 0 Items set from storage pandamium:temp items
execute if data block 2 0 0 Items[{components:{"minecraft:custom_data":{pandamium:{jail_item:1b}}}}] run function pandamium:impl/jail_items/restore_lore/restore_lore_from_items
loot replace entity @s hotbar.0 27 mine 2 0 0 barrier[custom_data={drop_contents:true}]

loot replace block 2 0 0 container.0 27 loot minecraft:empty
item replace block 2 0 0 container.0 from entity @s inventory.18
item replace block 2 0 0 container.1 from entity @s inventory.19
item replace block 2 0 0 container.2 from entity @s inventory.20
item replace block 2 0 0 container.3 from entity @s inventory.21
item replace block 2 0 0 container.4 from entity @s inventory.22
item replace block 2 0 0 container.5 from entity @s inventory.23
item replace block 2 0 0 container.6 from entity @s inventory.24
item replace block 2 0 0 container.7 from entity @s inventory.25
item replace block 2 0 0 container.8 from entity @s inventory.26
execute if data block 2 0 0 Items[{components:{"minecraft:custom_data":{pandamium:{jail_item:1b}}}}] run function pandamium:impl/jail_items/restore_lore/restore_lore_from_items
loot replace entity @s inventory.18 18 mine 2 0 0 barrier[custom_data={drop_contents:true}]

execute if score <jail_items_in_inventory> variable matches 1 run tellraw @s [{"text":"[Remove Lore]","color":"gold"},[{"text":" Removed Lore from ","color":"yellow"},{"text":"1","color":"gold","bold":true}," jail item slot in your inventory!"]]
execute if score <jail_items_in_inventory> variable matches 2.. run tellraw @s [{"text":"[Remove Lore]","color":"gold"},[{"text":" Removed Lore from ","color":"yellow"},{"score":{"name":"<jail_items_in_inventory>","objective":"variable"},"color":"gold","bold":true}," jail item slots in your inventory!"]]
