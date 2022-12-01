data modify storage pandamium:temp nbt set from entity @s
execute store success score <has_riptide> variable if data storage pandamium:temp nbt.SelectedItem{id:'minecraft:trident'}.tag.Enchantments[{id:'minecraft:riptide'}]

execute if score <has_riptide> variable matches 1 run advancement grant @s only pandamium:minecraft/adventure/do_a_barrel_roll
execute if score <has_riptide> variable matches 1 if data storage pandamium:temp nbt.Inventory[{Slot:103b,id:'minecraft:player_head',tag:{SkullOwner:{Name:"§lTurtle"}}}] run advancement grant @s only pandamium:pandamium/mob_heads/blue_shell
