tag @s remove save_mob.spawned

execute if entity @s[type=cat] if data storage pandamium:temp save_mob.pet.CatType run function pandamium:misc/save_mob/fix_cat_type
data remove storage pandamium:temp save_mob.pet.Tags
data modify entity @s {} merge from storage pandamium:temp save_mob.pet

execute store success score <returned> variable run tellraw @a[tag=source,limit=1] [{"text":"[save_mob.spawn]","color":"dark_green"},[{"text":" Released ","color":"green"},[{"text":"","color":"aqua"},{"selector":"@s"}]," at your location!"]]
scoreboard players set <valid_entity> variable 1
