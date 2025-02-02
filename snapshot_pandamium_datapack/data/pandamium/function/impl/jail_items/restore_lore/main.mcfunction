# context: in pandamium:staff_world

execute unless dimension pandamium:staff_world run return fail
execute unless entity @s[type=player] run return fail

execute unless items entity @s container.* *[custom_data~{pandamium:{jail_item:1b}}|custom_data~{pandamium:{jail_item:{}}}] \
        unless items entity @s armor.* *[custom_data~{pandamium:{jail_item:1b}}|custom_data~{pandamium:{jail_item:{}}}] \
        unless items entity @s weapon.offhand *[custom_data~{pandamium:{jail_item:1b}}|custom_data~{pandamium:{jail_item:{}}}] \
        run return run tellraw @s [{text:"[Remove Lore]",color:"dark_red"},{text:" There are no jail items in your inventory!",color:"red"}]

data modify storage pandamium:temp items set from entity @s Inventory
execute store result score <jail_items_in_inventory> variable if data storage pandamium:temp items[].components."minecraft:custom_data".pandamium.jail_item

data modify block 2 0 0 Items set from storage pandamium:temp items
execute if items block 2 0 0 container.* *[custom_data~{pandamium:{jail_item:1b}}|custom_data~{pandamium:{jail_item:{}}}] run function pandamium:impl/jail_items/restore_lore/restore_lore_from_items
loot replace entity @s hotbar.0 27 mine 2 0 0 barrier[custom_data={drop_contents:true}]

item replace block 2 0 0 container.0 from entity @s inventory.18
item replace block 2 0 0 container.1 from entity @s inventory.19
item replace block 2 0 0 container.2 from entity @s inventory.20
item replace block 2 0 0 container.3 from entity @s inventory.21
item replace block 2 0 0 container.4 from entity @s inventory.22
item replace block 2 0 0 container.5 from entity @s inventory.23
item replace block 2 0 0 container.6 from entity @s inventory.24
item replace block 2 0 0 container.7 from entity @s inventory.25
item replace block 2 0 0 container.8 from entity @s inventory.26
item replace block 2 0 0 container.9 from entity @s armor.feet
item replace block 2 0 0 container.10 from entity @s armor.legs
item replace block 2 0 0 container.11 from entity @s armor.chest
item replace block 2 0 0 container.12 from entity @s armor.head
item replace block 2 0 0 container.13 from entity @s weapon.offhand
execute if items block 2 0 0 container.* *[custom_data~{pandamium:{jail_item:1b}}|custom_data~{pandamium:{jail_item:{}}}] run function pandamium:impl/jail_items/restore_lore/restore_lore_from_items
loot replace entity @s inventory.18 9 mine 2 0 0 barrier[custom_data={drop_contents:true}]
item replace entity @s armor.feet from block 2 0 0 container.9
item replace entity @s armor.legs from block 2 0 0 container.10
item replace entity @s armor.chest from block 2 0 0 container.11
item replace entity @s armor.head from block 2 0 0 container.12
item replace entity @s weapon.offhand from block 2 0 0 container.13

execute if score <jail_items_in_inventory> variable matches 1 run tellraw @s [{text:"[Remove Lore]",color:"gold"},{text:" Removed Lore from ",color:"yellow",extra:[{text:"1",color:"gold",bold:true},{text:" jail item slot in your inventory!"}]}]
execute if score <jail_items_in_inventory> variable matches 2.. run tellraw @s [{text:"[Remove Lore]",color:"gold"},{text:" Removed Lore from ",color:"yellow",extra:[{score:{name:"<jail_items_in_inventory>",objective:"variable"},color:"gold",bold:true},{text:" jail item slots in your inventory!"}]}]
