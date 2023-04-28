item replace block 1 0 0 container.0 from entity @s armor.head
item replace entity @s armor.head from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from block 1 0 0 container.0
execute store success score <returned> variable run tellraw @s [{"text":"[Hat]","color":"dark_green"},{"text":" Swapped your hand and head slots!","color":"green"}]
