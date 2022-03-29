execute store success score <has_advancement> variable if entity @s[advancements={pandamium:pandamium/mob_heads/blue_shell=true}]
execute if score <has_advancement> variable matches 0 run data modify storage pandamium:temp NBT set from entity @s
execute if score <has_advancement> variable matches 0 run data modify storage pandamium:temp HeadItem set value []
execute if score <has_advancement> variable matches 0 run data modify storage pandamium:temp HeadItem set from storage pandamium:temp NBT.Inventory[{Slot:103b}]
execute if score <has_advancement> variable matches 0 if data storage pandamium:temp HeadItem{id:'minecraft:player_head',tag:{SkullOwner:{Name:"§lTurtle"}}} if data storage pandamium:temp NBT.SelectedItem{id:'minecraft:trident'}.tag.Enchantments[{id:'minecraft:riptide'}] run advancement grant @s only pandamium:pandamium/mob_heads/blue_shell

execute if score @s parkour.checkpoint matches 1.. run advancement grant @s only pandamium:detect/parkour/cheat

scoreboard players reset @s detect.use.trident
advancement revoke @s only pandamium:detect/use_trident
