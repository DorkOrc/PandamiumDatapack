
#move inventory

item block -1 52 -1 container.10 copy entity @s armor.feet
item block -1 52 -1 container.1 copy entity @s armor.legs
item block -1 52 -1 container.9 copy entity @s armor.chest
item block -1 52 -1 container.0 copy entity @s armor.head
item block -1 52 -1 container.11 copy entity @s weapon.offhand
item block -1 52 -1 container.18 copy entity @s container.9
item block -1 52 -1 container.19 copy entity @s container.10
item block -1 52 -1 container.20 copy entity @s container.11
item block -1 52 -1 container.21 copy entity @s container.12
item block -1 52 -1 container.22 copy entity @s container.13
item block -1 52 -1 container.23 copy entity @s container.14
item block -1 52 -1 container.24 copy entity @s container.15
item block -1 52 -1 container.25 copy entity @s container.16
item block -1 52 -1 container.26 copy entity @s container.17

item block 0 52 -1 container.0 copy entity @s container.18
item block 0 52 -1 container.1 copy entity @s container.19
item block 0 52 -1 container.2 copy entity @s container.20
item block 0 52 -1 container.3 copy entity @s container.21
item block 0 52 -1 container.4 copy entity @s container.22
item block 0 52 -1 container.5 copy entity @s container.23
item block 0 52 -1 container.6 copy entity @s container.24
item block 0 52 -1 container.7 copy entity @s container.25
item block 0 52 -1 container.8 copy entity @s container.26
item block 0 52 -1 container.9 copy entity @s container.27
item block 0 52 -1 container.10 copy entity @s container.28
item block 0 52 -1 container.11 copy entity @s container.29
item block 0 52 -1 container.12 copy entity @s container.30
item block 0 52 -1 container.13 copy entity @s container.31
item block 0 52 -1 container.14 copy entity @s container.32
item block 0 52 -1 container.15 copy entity @s container.33
item block 0 52 -1 container.16 copy entity @s container.34
item block 0 52 -1 container.17 copy entity @s container.35
item block 0 52 -1 container.18 copy entity @s container.0
item block 0 52 -1 container.19 copy entity @s container.1
item block 0 52 -1 container.20 copy entity @s container.2
item block 0 52 -1 container.21 copy entity @s container.3
item block 0 52 -1 container.22 copy entity @s container.4
item block 0 52 -1 container.23 copy entity @s container.5
item block 0 52 -1 container.24 copy entity @s container.6
item block 0 52 -1 container.25 copy entity @s container.7
item block 0 52 -1 container.26 copy entity @s container.8


#clear slots

item entity @s container.0 replace air
item entity @s container.1 replace air
item entity @s container.2 replace air
item entity @s container.3 replace air
item entity @s container.4 replace air
item entity @s container.5 replace air
item entity @s container.6 replace air
item entity @s container.7 replace air
item entity @s container.8 replace air
item entity @s container.9 replace air
item entity @s container.10 replace air
item entity @s container.11 replace air
item entity @s container.12 replace air
item entity @s container.13 replace air
item entity @s container.14 replace air
item entity @s container.15 replace air
item entity @s container.16 replace air
item entity @s container.17 replace air
item entity @s container.18 replace air
item entity @s container.19 replace air
item entity @s container.20 replace air
item entity @s container.21 replace air
item entity @s container.22 replace air
item entity @s container.23 replace air
item entity @s container.24 replace air
item entity @s container.25 replace air
item entity @s container.26 replace air
item entity @s container.27 replace air
item entity @s container.28 replace air
item entity @s container.29 replace air
item entity @s container.30 replace air
item entity @s container.31 replace air
item entity @s container.32 replace air
item entity @s container.33 replace air
item entity @s container.34 replace air
item entity @s container.35 replace air
item entity @s armor.feet replace air
item entity @s armor.legs replace air
item entity @s armor.chest replace air
item entity @s armor.head replace air
item entity @s weapon.offhand replace air

setblock -2 52 -1 air
setblock -2 52 -1 oak_sign[rotation=8]{Text1:'["",{"selector":"@s","color":"#3f3f3f"},"\'s Inventory"]'}
data modify block -1 52 -1 CustomName set from block -2 52 -1 Text1
