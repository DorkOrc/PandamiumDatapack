data modify storage pandamium:temp nbt set from entity @s
execute store result score <enderman_farm_x> global run data get storage pandamium:temp nbt.Pos[0]
execute store result score <enderman_farm_y> global run data get storage pandamium:temp nbt.Pos[1]
execute store result score <enderman_farm_z> global run data get storage pandamium:temp nbt.Pos[2]
scoreboard players set <do_enderman_farm_protection> global 0

execute at @s if block ~ ~-1 ~ air run setblock ~ ~-1 ~ obsidian

tellraw @s [{"text":"[Enderman Farm]","color":"dark_green"},[{"text":" ","color":"green"},{"text":"Set","color":"aqua"}," the ",{"text":"Enderman Farm","color":"aqua"}," warp at ",{"score":{"name":"<enderman_farm_x>","objective":"global"},"color":"aqua"}," ",{"score":{"name":"<enderman_farm_y>","objective":"global"},"color":"aqua"}," ",{"score":{"name":"<enderman_farm_z>","objective":"global"},"color":"aqua"}," in ",{"text":"The End","color":"aqua"},"!"]]
scoreboard players set <returned> variable 1
