#move inventory

item block 7 64 -5 container.10 copy entity @s armor.feet
item block 7 64 -5 container.1 copy entity @s armor.legs
item block 7 64 -5 container.9 copy entity @s armor.chest
item block 7 64 -5 container.0 copy entity @s armor.head
item block 7 64 -5 container.11 copy entity @s weapon.offhand
item block 7 64 -5 container.18 copy entity @s container.9
item block 7 64 -5 container.19 copy entity @s container.10
item block 7 64 -5 container.20 copy entity @s container.11
item block 7 64 -5 container.21 copy entity @s container.12
item block 7 64 -5 container.22 copy entity @s container.13
item block 7 64 -5 container.23 copy entity @s container.14
item block 7 64 -5 container.24 copy entity @s container.15
item block 7 64 -5 container.25 copy entity @s container.16
item block 7 64 -5 container.26 copy entity @s container.17

item block 7 64 -4 container.0 copy entity @s container.18
item block 7 64 -4 container.1 copy entity @s container.19
item block 7 64 -4 container.2 copy entity @s container.20
item block 7 64 -4 container.3 copy entity @s container.21
item block 7 64 -4 container.4 copy entity @s container.22
item block 7 64 -4 container.5 copy entity @s container.23
item block 7 64 -4 container.6 copy entity @s container.24
item block 7 64 -4 container.7 copy entity @s container.25
item block 7 64 -4 container.8 copy entity @s container.26
item block 7 64 -4 container.9 copy entity @s container.27
item block 7 64 -4 container.10 copy entity @s container.28
item block 7 64 -4 container.11 copy entity @s container.29
item block 7 64 -4 container.12 copy entity @s container.30
item block 7 64 -4 container.13 copy entity @s container.31
item block 7 64 -4 container.14 copy entity @s container.32
item block 7 64 -4 container.15 copy entity @s container.33
item block 7 64 -4 container.16 copy entity @s container.34
item block 7 64 -4 container.17 copy entity @s container.35
item block 7 64 -4 container.18 copy entity @s container.0
item block 7 64 -4 container.19 copy entity @s container.1
item block 7 64 -4 container.20 copy entity @s container.2
item block 7 64 -4 container.21 copy entity @s container.3
item block 7 64 -4 container.22 copy entity @s container.4
item block 7 64 -4 container.23 copy entity @s container.5
item block 7 64 -4 container.24 copy entity @s container.6
item block 7 64 -4 container.25 copy entity @s container.7
item block 7 64 -4 container.26 copy entity @s container.8


#clear slots

loot replace entity @s container.0 104 loot empty

setblock 7 64 -6 air
tag @s add selected_player
setblock 7 64 -6 oak_sign{Text1:'["",{"selector":"@p[tag=selected_player]","color":"#3f3f3f"},"\'s Inventory"]'}
tag @s remove selected_player
data modify block 7 64 -5 CustomName set from block 7 64 -6 Text1
