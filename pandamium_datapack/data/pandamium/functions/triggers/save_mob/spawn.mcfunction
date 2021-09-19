# run AT @s

tag @s add running_trigger

data modify storage pandamium:temp NBT set from entity @s

execute unless data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_mob run tellraw @s [{"text":"[Save Mob]","color":"dark_red"},[{"text":" You must be holding a ","color":"red"},{"text":"Stored Mob Item","color":"gold"}," to run this trigger!"]]
execute if data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_mob run function pandamium:misc/save_mob/spawn_pet_from_item
execute if data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_mob run item replace entity @s weapon.mainhand with air

tag @s remove running_trigger
scoreboard players reset @s save_mob.spawn
scoreboard players enable @s save_mob.spawn
