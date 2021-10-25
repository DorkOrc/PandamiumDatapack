# run IN pandamium:staff_world

# Move Inventory
item replace block 7 64 -5 container.10 from entity @s armor.feet
item replace block 7 64 -5 container.1 from entity @s armor.legs
item replace block 7 64 -5 container.9 from entity @s armor.chest
item replace block 7 64 -5 container.0 from entity @s armor.head
item replace block 7 64 -5 container.11 from entity @s weapon.offhand
item replace block 7 64 -5 container.18 from entity @s container.9
item replace block 7 64 -5 container.19 from entity @s container.10
item replace block 7 64 -5 container.20 from entity @s container.11
item replace block 7 64 -5 container.21 from entity @s container.12
item replace block 7 64 -5 container.22 from entity @s container.13
item replace block 7 64 -5 container.23 from entity @s container.14
item replace block 7 64 -5 container.24 from entity @s container.15
item replace block 7 64 -5 container.25 from entity @s container.16
item replace block 7 64 -5 container.26 from entity @s container.17

item replace block 7 64 -4 container.0 from entity @s container.18
item replace block 7 64 -4 container.1 from entity @s container.19
item replace block 7 64 -4 container.2 from entity @s container.20
item replace block 7 64 -4 container.3 from entity @s container.21
item replace block 7 64 -4 container.4 from entity @s container.22
item replace block 7 64 -4 container.5 from entity @s container.23
item replace block 7 64 -4 container.6 from entity @s container.24
item replace block 7 64 -4 container.7 from entity @s container.25
item replace block 7 64 -4 container.8 from entity @s container.26
item replace block 7 64 -4 container.9 from entity @s container.27
item replace block 7 64 -4 container.10 from entity @s container.28
item replace block 7 64 -4 container.11 from entity @s container.29
item replace block 7 64 -4 container.12 from entity @s container.30
item replace block 7 64 -4 container.13 from entity @s container.31
item replace block 7 64 -4 container.14 from entity @s container.32
item replace block 7 64 -4 container.15 from entity @s container.33
item replace block 7 64 -4 container.16 from entity @s container.34
item replace block 7 64 -4 container.17 from entity @s container.35
item replace block 7 64 -4 container.18 from entity @s container.0
item replace block 7 64 -4 container.19 from entity @s container.1
item replace block 7 64 -4 container.20 from entity @s container.2
item replace block 7 64 -4 container.21 from entity @s container.3
item replace block 7 64 -4 container.22 from entity @s container.4
item replace block 7 64 -4 container.23 from entity @s container.5
item replace block 7 64 -4 container.24 from entity @s container.6
item replace block 7 64 -4 container.25 from entity @s container.7
item replace block 7 64 -4 container.26 from entity @s container.8

# Clear Slots
loot replace entity @s container.0 104 loot empty

setblock 0 0 0 air
function pandamium:misc/get_username
setblock 0 0 0 oak_sign{Text1:'[{"nbt":"username","storage":"pandamium:temp"},"\'s Inventory"]'}
data modify block 7 64 -5 CustomName set from block 0 0 0 Text1
