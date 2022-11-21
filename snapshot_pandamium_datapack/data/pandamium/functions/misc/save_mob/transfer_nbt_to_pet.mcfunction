tag @s remove save_mob.spawned

execute if data storage pandamium:temp save_mob.pet{id:"minecraft:cat"} run function pandamium:misc/save_mob/fix_cat_type
data remove storage pandamium:temp save_mob.pet.Tags
data modify entity @s {} merge from storage pandamium:temp save_mob.pet

execute store success score <returned> variable run tellraw @a[tag=running_trigger,limit=1] [{"text":"[Save Mob]","color":"dark_green"},[{"text":" Released ","color":"green"},[{"text":"","color":"aqua"},{"selector":"@s"}]," at your location!"]]
