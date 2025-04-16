data modify storage pandamium:containers items set value []
data modify storage pandamium:containers items set from entity @s Inventory

data remove storage pandamium:temp item
execute in pandamium:staff_world run item replace block 5 0 0 contents from entity @s armor.feet
execute in pandamium:staff_world run data modify storage pandamium:temp item set from block 5 0 0 item
execute if data storage pandamium:temp item run data modify storage pandamium:temp item.Slot set value 100
execute if data storage pandamium:temp item run data modify storage pandamium:containers items append from storage pandamium:temp item

data remove storage pandamium:temp item
execute in pandamium:staff_world run item replace block 5 0 0 contents from entity @s armor.legs
execute in pandamium:staff_world run data modify storage pandamium:temp item set from block 5 0 0 item
execute if data storage pandamium:temp item run data modify storage pandamium:temp item.Slot set value 101
execute if data storage pandamium:temp item run data modify storage pandamium:containers items append from storage pandamium:temp item

data remove storage pandamium:temp item
execute in pandamium:staff_world run item replace block 5 0 0 contents from entity @s armor.chest
execute in pandamium:staff_world run data modify storage pandamium:temp item set from block 5 0 0 item
execute if data storage pandamium:temp item run data modify storage pandamium:temp item.Slot set value 102
execute if data storage pandamium:temp item run data modify storage pandamium:containers items append from storage pandamium:temp item

data remove storage pandamium:temp item
execute in pandamium:staff_world run item replace block 5 0 0 contents from entity @s armor.head
execute in pandamium:staff_world run data modify storage pandamium:temp item set from block 5 0 0 item
execute if data storage pandamium:temp item run data modify storage pandamium:temp item.Slot set value 103
execute if data storage pandamium:temp item run data modify storage pandamium:containers items append from storage pandamium:temp item

data remove storage pandamium:temp item
execute in pandamium:staff_world run item replace block 5 0 0 contents from entity @s weapon.offhand
execute in pandamium:staff_world run data modify storage pandamium:temp item set from block 5 0 0 item
execute if data storage pandamium:temp item run data modify storage pandamium:temp item.Slot set value 150
execute if data storage pandamium:temp item run data modify storage pandamium:containers items append from storage pandamium:temp item

data remove storage pandamium:temp item
execute in pandamium:staff_world run item replace block 5 0 0 contents from entity @s player.cursor
execute in pandamium:staff_world run data modify storage pandamium:temp item set from block 5 0 0 item
execute if data storage pandamium:temp item run data modify storage pandamium:temp item.Slot set value 204
execute if data storage pandamium:temp item run data modify storage pandamium:containers items append from storage pandamium:temp item

data remove storage pandamium:temp item
execute in pandamium:staff_world run item replace block 5 0 0 contents from entity @s player.crafting.0
execute in pandamium:staff_world run data modify storage pandamium:temp item set from block 5 0 0 item
execute if data storage pandamium:temp item run data modify storage pandamium:temp item.Slot set value 200
execute if data storage pandamium:temp item run data modify storage pandamium:containers items append from storage pandamium:temp item

data remove storage pandamium:temp item
execute in pandamium:staff_world run item replace block 5 0 0 contents from entity @s player.crafting.1
execute in pandamium:staff_world run data modify storage pandamium:temp item set from block 5 0 0 item
execute if data storage pandamium:temp item run data modify storage pandamium:temp item.Slot set value 201
execute if data storage pandamium:temp item run data modify storage pandamium:containers items append from storage pandamium:temp item

data remove storage pandamium:temp item
execute in pandamium:staff_world run item replace block 5 0 0 contents from entity @s player.crafting.2
execute in pandamium:staff_world run data modify storage pandamium:temp item set from block 5 0 0 item
execute if data storage pandamium:temp item run data modify storage pandamium:temp item.Slot set value 202
execute if data storage pandamium:temp item run data modify storage pandamium:containers items append from storage pandamium:temp item

data remove storage pandamium:temp item
execute in pandamium:staff_world run item replace block 5 0 0 contents from entity @s player.crafting.3
execute in pandamium:staff_world run data modify storage pandamium:temp item set from block 5 0 0 item
execute if data storage pandamium:temp item run data modify storage pandamium:temp item.Slot set value 203
execute if data storage pandamium:temp item run data modify storage pandamium:containers items append from storage pandamium:temp item
