data modify storage pandamium:temp NBT set from entity @s

data modify storage pandamium:temp HeadItem set value []
data modify storage pandamium:temp HeadItem set from storage pandamium:temp NBT.Inventory[{Slot:103b}]

scoreboard players set <blue_shell> variable 0
execute if data storage pandamium:temp HeadItem{id:'minecraft:player_head',tag:{SkullOwner:{Name:"§lTurtle"}}} if data storage pandamium:temp NBT.SelectedItem{id:'minecraft:trident'}.tag.Enchantments[{id:'minecraft:riptide'}] run scoreboard players set <blue_shell> variable 1

execute if score <blue_shell> variable matches 1 run advancement grant @s only pandamium:pandamium/mob_heads/blue_shell
execute if score <blue_shell> variable matches 0 run advancement revoke @s only pandamium:detect/used_trident

scoreboard players reset @s detect.used.trident
