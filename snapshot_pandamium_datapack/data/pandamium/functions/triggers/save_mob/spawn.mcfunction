# run AT @s

scoreboard players set <returned> variable 0

data modify storage pandamium:temp NBT set from entity @s
execute store success score <returned> variable unless data storage pandamium:temp NBT.SelectedItem.tag.pandamium.stored_mob run tellraw @s [{"text":"[Save Mob]","color":"dark_red"},[{"text":" You must hold a ","color":"red"},{"text":"Stored Mob Item","color":"gold"}," to use this trigger!"]]

execute if score <returned> variable matches 0 run function pandamium:misc/save_mob/spawn_pet_from_item

scoreboard players reset @s save_mob.spawn
scoreboard players enable @s save_mob.spawn
