# run IN pandamium:staff_world

# Move Items
scoreboard players set <transient_equippable.modifying> global 1
execute if items entity @s armor.feet *[custom_data~{pandamium:{transient_equippable:{}}}] run function pandamium:detect/obtain_transient_equippable_item/fix_item {slot:"armor.feet"}
execute if items entity @s armor.legs *[custom_data~{pandamium:{transient_equippable:{}}}] run function pandamium:detect/obtain_transient_equippable_item/fix_item {slot:"armor.legs"}
execute if items entity @s armor.chest *[custom_data~{pandamium:{transient_equippable:{}}}] run function pandamium:detect/obtain_transient_equippable_item/fix_item {slot:"armor.chest"}
execute if items entity @s armor.head *[custom_data~{pandamium:{transient_equippable:{}}}] run function pandamium:detect/obtain_transient_equippable_item/fix_item {slot:"armor.head"}
scoreboard players set <transient_equippable.modifying> global 0

item replace block ~ ~ ~ container.10 from entity @s armor.feet
item replace block ~ ~ ~ container.1 from entity @s armor.legs
item replace block ~ ~ ~ container.9 from entity @s armor.chest
item replace block ~ ~ ~ container.0 from entity @s armor.head

item replace block ~ ~ ~ container.6 from entity @s player.crafting.0
item replace block ~ ~ ~ container.7 from entity @s player.crafting.1
item replace block ~ ~ ~ container.15 from entity @s player.crafting.2
item replace block ~ ~ ~ container.16 from entity @s player.crafting.3
item replace block ~ ~ ~ container.11 from entity @s weapon.offhand
item replace block ~ ~ ~ container.13 from entity @s player.cursor
item replace block ~ ~ ~ container.18 from entity @s inventory.0
item replace block ~ ~ ~ container.19 from entity @s inventory.1
item replace block ~ ~ ~ container.20 from entity @s inventory.2
item replace block ~ ~ ~ container.21 from entity @s inventory.3
item replace block ~ ~ ~ container.22 from entity @s inventory.4
item replace block ~ ~ ~ container.23 from entity @s inventory.5
item replace block ~ ~ ~ container.24 from entity @s inventory.6
item replace block ~ ~ ~ container.25 from entity @s inventory.7
item replace block ~ ~ ~ container.26 from entity @s inventory.8

item replace block ~ ~ ~1 container.0 from entity @s inventory.9
item replace block ~ ~ ~1 container.1 from entity @s inventory.10
item replace block ~ ~ ~1 container.2 from entity @s inventory.11
item replace block ~ ~ ~1 container.3 from entity @s inventory.12
item replace block ~ ~ ~1 container.4 from entity @s inventory.13
item replace block ~ ~ ~1 container.5 from entity @s inventory.14
item replace block ~ ~ ~1 container.6 from entity @s inventory.15
item replace block ~ ~ ~1 container.7 from entity @s inventory.16
item replace block ~ ~ ~1 container.8 from entity @s inventory.17
item replace block ~ ~ ~1 container.9 from entity @s inventory.18
item replace block ~ ~ ~1 container.10 from entity @s inventory.19
item replace block ~ ~ ~1 container.11 from entity @s inventory.20
item replace block ~ ~ ~1 container.12 from entity @s inventory.21
item replace block ~ ~ ~1 container.13 from entity @s inventory.22
item replace block ~ ~ ~1 container.14 from entity @s inventory.23
item replace block ~ ~ ~1 container.15 from entity @s inventory.24
item replace block ~ ~ ~1 container.16 from entity @s inventory.25
item replace block ~ ~ ~1 container.17 from entity @s inventory.26
item replace block ~ ~ ~1 container.18 from entity @s hotbar.0
item replace block ~ ~ ~1 container.19 from entity @s hotbar.1
item replace block ~ ~ ~1 container.20 from entity @s hotbar.2
item replace block ~ ~ ~1 container.21 from entity @s hotbar.3
item replace block ~ ~ ~1 container.22 from entity @s hotbar.4
item replace block ~ ~ ~1 container.23 from entity @s hotbar.5
item replace block ~ ~ ~1 container.24 from entity @s hotbar.6
item replace block ~ ~ ~1 container.25 from entity @s hotbar.7
item replace block ~ ~ ~1 container.26 from entity @s hotbar.8

# Clear Items
clear @s

# Name Chest
function pandamium:utils/get/username
data modify block 3 0 0 front_text.messages[0] set value '[{"nbt":"username","storage":"pandamium:temp"},"\'s Inventory"]'
data modify block ~ ~ ~ CustomName set from block 3 0 0 front_text.messages[0]
