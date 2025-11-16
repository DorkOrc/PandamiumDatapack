# context: in pandamium:staff_world

execute unless dimension pandamium:staff_world run return fail
execute unless entity @s[type=player] run return fail

execute store result score <jail_items_in_inventory> variable if items entity @s container.* *[custom_data~{pandamium:{jail_item:1b}}|custom_data~{pandamium:{jail_item:{}}}]
execute store result score <count> variable if items entity @s armor.* *[custom_data~{pandamium:{jail_item:1b}}|custom_data~{pandamium:{jail_item:{}}}]
scoreboard players operation <jail_items_in_inventory> variable += <count> variable
execute store result score <count> variable if items entity @s weapon.offhand *[custom_data~{pandamium:{jail_item:1b}}|custom_data~{pandamium:{jail_item:{}}}]
scoreboard players operation <jail_items_in_inventory> variable += <count> variable

execute if score <jail_items_in_inventory> variable matches 0 run return run tellraw @s [{color:"dark_red",text:"[Remove Lore]"},{color:"red",text:" There are no jail items in your inventory!"}]

data modify block 2 0 0 Items set from entity @s Inventory
execute if items block 2 0 0 container.* *[custom_data~{pandamium:{jail_item:1b}}|custom_data~{pandamium:{jail_item:{}}}] run function pandamium:impl/jail_items/restore_lore/restore_lore_from_items
item replace entity @s hotbar.0 from block 2 0 0 container.0
item replace entity @s hotbar.1 from block 2 0 0 container.1
item replace entity @s hotbar.2 from block 2 0 0 container.2
item replace entity @s hotbar.3 from block 2 0 0 container.3
item replace entity @s hotbar.4 from block 2 0 0 container.4
item replace entity @s hotbar.5 from block 2 0 0 container.5
item replace entity @s hotbar.6 from block 2 0 0 container.6
item replace entity @s hotbar.7 from block 2 0 0 container.7
item replace entity @s hotbar.8 from block 2 0 0 container.8
item replace entity @s inventory.0 from block 2 0 0 container.9
item replace entity @s inventory.1 from block 2 0 0 container.10
item replace entity @s inventory.2 from block 2 0 0 container.11
item replace entity @s inventory.3 from block 2 0 0 container.12
item replace entity @s inventory.4 from block 2 0 0 container.13
item replace entity @s inventory.5 from block 2 0 0 container.14
item replace entity @s inventory.6 from block 2 0 0 container.15
item replace entity @s inventory.7 from block 2 0 0 container.16
item replace entity @s inventory.8 from block 2 0 0 container.17
item replace entity @s inventory.9 from block 2 0 0 container.18
item replace entity @s inventory.10 from block 2 0 0 container.19
item replace entity @s inventory.11 from block 2 0 0 container.20
item replace entity @s inventory.12 from block 2 0 0 container.21
item replace entity @s inventory.13 from block 2 0 0 container.22
item replace entity @s inventory.14 from block 2 0 0 container.23
item replace entity @s inventory.15 from block 2 0 0 container.24
item replace entity @s inventory.16 from block 2 0 0 container.25
item replace entity @s inventory.17 from block 2 0 0 container.26

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
item replace entity @s inventory.18 from block 2 0 0 container.0
item replace entity @s inventory.19 from block 2 0 0 container.1
item replace entity @s inventory.20 from block 2 0 0 container.2
item replace entity @s inventory.21 from block 2 0 0 container.3
item replace entity @s inventory.22 from block 2 0 0 container.4
item replace entity @s inventory.23 from block 2 0 0 container.5
item replace entity @s inventory.24 from block 2 0 0 container.6
item replace entity @s inventory.25 from block 2 0 0 container.7
item replace entity @s inventory.26 from block 2 0 0 container.8
item replace entity @s armor.feet from block 2 0 0 container.9
item replace entity @s armor.legs from block 2 0 0 container.10
item replace entity @s armor.chest from block 2 0 0 container.11
item replace entity @s armor.head from block 2 0 0 container.12
item replace entity @s weapon.offhand from block 2 0 0 container.13

execute if score <jail_items_in_inventory> variable matches 1 run tellraw @s [{text:"[Remove Lore]",color:"gold"},{text:" Removed Lore from ",color:"yellow",extra:[{text:"1",color:"gold",bold:true}," jail item in your inventory!"]}]
execute if score <jail_items_in_inventory> variable matches 2.. run tellraw @s [{text:"[Remove Lore]",color:"gold"},{text:" Removed Lore from ",color:"yellow",extra:[{score:{name:"<jail_items_in_inventory>",objective:"variable"},color:"gold",bold:true}," jail items in your inventory!"]}]
