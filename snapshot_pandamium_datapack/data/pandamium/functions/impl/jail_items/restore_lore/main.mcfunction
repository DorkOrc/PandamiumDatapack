# run IN pandamium:staff_world

setblock 0 0 0 yellow_shulker_box

execute store result score <jail_items_in_inventory> variable if data entity @s Inventory[].tag.pandamium.jail_item

data modify block 0 0 0 Items set from entity @s Inventory
execute if data block 0 0 0 Items[{tag:{pandamium:{jail_item:1b}}}] run function pandamium:impl/jail_items/restore_lore/restore_lore_from_items
loot replace entity @s hotbar.0 mine 0 0 0 air{drop_contents:1b}

data remove block 0 0 0 Items[]

item replace block 0 0 0 container.0 from entity @s container.27
item replace block 0 0 0 container.1 from entity @s container.28
item replace block 0 0 0 container.2 from entity @s container.29
item replace block 0 0 0 container.3 from entity @s container.30
item replace block 0 0 0 container.4 from entity @s container.31
item replace block 0 0 0 container.5 from entity @s container.32
item replace block 0 0 0 container.6 from entity @s container.33
item replace block 0 0 0 container.7 from entity @s container.34
item replace block 0 0 0 container.8 from entity @s container.35
execute if data block 0 0 0 Items[{tag:{pandamium:{jail_item:1b}}}] run function pandamium:impl/jail_items/restore_lore/restore_lore_from_items
loot replace entity @s container.27 mine 0 0 0 air{drop_contents:1b}

execute if score <jail_items_in_inventory> variable matches 0 run tellraw @s [{"text":"[Remove Lore]","color":"dark_red"},{"text":" There are no jail items in your inventory!","color":"red"}]
execute if score <jail_items_in_inventory> variable matches 1 run tellraw @s [{"text":"[Remove Lore]","color":"gold"},[{"text":" Removed Lore from ","color":"yellow"},{"text":"1","color":"gold","bold":true}," jail item slot in your inventory!"]]
execute if score <jail_items_in_inventory> variable matches 2.. run tellraw @s [{"text":"[Remove Lore]","color":"gold"},[{"text":" Removed Lore from ","color":"yellow"},{"score":{"name":"<jail_items_in_inventory>","objective":"variable"},"color":"gold","bold":true}," jail item slots in your inventory!"]]
