# Since these players insist on exhausting the afk rules to farm playtime, they now get their own
# specific playtime behaviour that will only count if they have moved within the last 15 seconds :D

data modify storage pandamium:temp NBT set from entity @s
execute store result score <enderman_farm_x> global run data get storage pandamium:temp NBT.Pos[0]
execute store result score <enderman_farm_y> global run data get storage pandamium:temp NBT.Pos[1]
execute store result score <enderman_farm_z> global run data get storage pandamium:temp NBT.Pos[2]

execute at @s if block ~ ~-1 ~ air run setblock ~ ~-1 ~ obsidian

tellraw @s [{"text":"[Warp]","color":"dark_green"},[{"text":" The ","color":"green"},{"text":"enderman farm","italic":true}," warp has been set at your location!"]]
