# context: in pandamium:staff_world

execute unless score @s gameplay_perms matches 6.. run return run tellraw @s [{"text":"[Hat]","color":"dark_red"},{"storage":"pandamium:dictionary","nbt":"triggers.supporter_only_trigger","interpret":true}]
execute if items entity @s armor.head *[enchantments~[{enchantments:"binding_curse"}]] run return run tellraw @s [{"text":"[Hat]","color":"dark_red"},{"text":" The item on your head has the Curse of Binding!","color":"red"}]
execute unless items entity @s weapon.mainhand * unless items entity @s armor.head * run return run tellraw @s [{"text":"[Hat]","color":"dark_red"},{"text":" Your hand and head slots are empty!","color":"red"}]

item replace block 5 0 0 contents from entity @s armor.head
item replace entity @s armor.head from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from block 5 0 0 contents
tellraw @s [{"text":"[Hat]","color":"dark_green"},{"text":" Swapped your hand and head slots!","color":"green"}]
