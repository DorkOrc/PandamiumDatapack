data modify storage pandamium:temp NBT set from entity @s

data modify storage pandamium:temp HeadItem set value []
data modify storage pandamium:temp HeadItem set from storage pandamium:temp NBT.Inventory[{Slot:103b}]

execute if score @s parkour.checkpoint matches 1.. run advancement grant @s only pandamium:detect/parkour/cheat
execute unless score @s parkour.checkpoint matches 1.. if data storage pandamium:temp HeadItem{id:'minecraft:player_head',tag:{SkullOwner:{Name:"§lTurtle"}}} if data storage pandamium:temp NBT.SelectedItem{id:'minecraft:trident'}.tag.Enchantments[{id:'minecraft:riptide'}] run advancement grant @s only pandamium:pandamium/mob_heads/blue_shell

scoreboard players reset @s detect.used.trident
advancement revoke @s only pandamium:detect/used_trident
