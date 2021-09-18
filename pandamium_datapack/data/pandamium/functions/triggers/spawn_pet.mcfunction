# run AT @s

tag @s add running_trigger

data modify storage pandamium:temp NBT set from entity @s

execute unless data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_pet run tellraw @s [{"text":"[Pet]","color":"dark_red"},[{"text":" You must be holding a ","color":"red"},{"text":"Stored Pet Item","color":"gold"}," to run this trigger!"]]
execute if data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_pet run function pandamium:misc/store_pet/spawn_pet_from_item
execute if data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_pet run item replace entity @s weapon.mainhand with air

tag @s remove running_trigger
scoreboard players reset @s pet.spawn
scoreboard players enable @s pet.spawn
