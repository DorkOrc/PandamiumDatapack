execute at @s run function pandamium:utils/get/position

data remove storage pandamium:global enderman_farm_warp
execute store result storage pandamium:global enderman_farm_warp.x int 1 run scoreboard players operation <enderman_farm_x> global = <x> variable
execute store result storage pandamium:global enderman_farm_warp.y int 1 run scoreboard players operation <enderman_farm_y> global = <y> variable
execute store result storage pandamium:global enderman_farm_warp.z int 1 run scoreboard players operation <enderman_farm_z> global = <z> variable
scoreboard players set <do_enderman_farm_protection> global 0

execute at @s if block ~ ~-1 ~ air run setblock ~ ~-1 ~ obsidian

tellraw @s [{"text":"[Enderman Farm]","color":"dark_green"},[{"text":" ","color":"green"},{"text":"Set","color":"aqua"}," the ",{"text":"Enderman Farm","color":"aqua"}," warp at ",{"score":{"name":"<enderman_farm_x>","objective":"global"},"color":"aqua"}," ",{"score":{"name":"<enderman_farm_y>","objective":"global"},"color":"aqua"}," ",{"score":{"name":"<enderman_farm_z>","objective":"global"},"color":"aqua"}," in ",{"storage":"pandamium:dictionary","nbt":"dimension.the_end.name","color":"aqua"},"!"]]
scoreboard players set <returned> variable 1
