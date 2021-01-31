setblock 7 64 -7 shulker_box

execute store result score <jail_items_in_inventory> variable if data entity @s Inventory[].tag.jail_item

data modify block 7 64 -7 Items set from entity @s Inventory
data remove block 7 64 -7 Items[{tag:{jail_item:1b}}].tag.display.Lore
data remove block 7 64 -7 Items[{tag:{jail_item:2b}}].tag.display
data remove block 7 64 -7 Items[].tag.jail_item
loot replace entity @s hotbar.0 mine 7 64 -7 air{drop_contents:1b}

data remove block 7 64 -7 Items[]

item block 7 64 -7 container.0 copy entity @s container.27
item block 7 64 -7 container.1 copy entity @s container.28
item block 7 64 -7 container.2 copy entity @s container.29
item block 7 64 -7 container.3 copy entity @s container.30
item block 7 64 -7 container.4 copy entity @s container.31
item block 7 64 -7 container.5 copy entity @s container.32
item block 7 64 -7 container.6 copy entity @s container.33
item block 7 64 -7 container.7 copy entity @s container.34
item block 7 64 -7 container.8 copy entity @s container.35
data remove block 7 64 -7 Items[{tag:{jail_item:1b}}].tag.display.Lore
data remove block 7 64 -7 Items[{tag:{jail_item:2b}}].tag.display
data remove block 7 64 -7 Items[].tag.jail_item
loot replace entity @s container.27 mine 7 64 -7 air{drop_contents:1b}

setblock 7 64 -7 chest

tellraw @s [{"text":"[Info]","color":"gold"},[{"text":" Removed Lore from ","color":"yellow"},{"score":{"name":"<jail_items_in_inventory>","objective":"variable"},"color":"gold","bold":true}," jail item",{"text":"(s)","color":"gray","italic":true}," in your inventory!"]]
