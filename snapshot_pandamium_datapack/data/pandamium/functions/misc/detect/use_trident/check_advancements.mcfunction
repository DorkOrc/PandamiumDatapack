data modify storage pandamium:temp NBT set from entity @s
execute store success score <has_riptide> variable if data storage pandamium:temp NBT.SelectedItem{id:'minecraft:trident'}.tag.Enchantments[{id:'minecraft:riptide'}]

execute if score <has_riptide> variable matches 1 run advancement grant @s only pandamium:minecraft/adventure/do_a_barrel_roll

data modify storage pandamium:temp HeadItem set value {}
data modify storage pandamium:temp HeadItem set from storage pandamium:temp NBT.Inventory[{Slot:103b}]
execute if data storage pandamium:temp HeadItem{id:'minecraft:player_head',tag:{SkullOwner:{Name:"§lTurtle"}}} if score <has_riptide> variable matches 1 run advancement grant @s only pandamium:pandamium/mob_heads/blue_shell
