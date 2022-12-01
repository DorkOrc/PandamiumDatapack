data modify storage pandamium:temp nbt set from entity @a[tag=player_info_selected_player,limit=1]

execute if data storage pandamium:temp nbt.LastDeathLocation{dimension:'minecraft:the_nether'} run scoreboard players set <tp_d> variable -1
execute if data storage pandamium:temp nbt.LastDeathLocation{dimension:'minecraft:overworld'} run scoreboard players set <tp_d> variable 0
execute if data storage pandamium:temp nbt.LastDeathLocation{dimension:'minecraft:the_end'} run scoreboard players set <tp_d> variable 1
execute if data storage pandamium:temp nbt.LastDeathLocation{dimension:'pandamium:staff_world'} run scoreboard players set <tp_d> variable 2

execute store result score <tp_x> variable run data get storage pandamium:temp nbt.LastDeathLocation.pos[0]
execute store result score <tp_y> variable run data get storage pandamium:temp nbt.LastDeathLocation.pos[1]
execute store result score <tp_z> variable run data get storage pandamium:temp nbt.LastDeathLocation.pos[2]

execute if data storage pandamium:temp nbt.LastDeathLocation run gamemode spectator
execute if data storage pandamium:temp nbt.LastDeathLocation run function pandamium:misc/teleport/to_scores/main

execute if data storage pandamium:temp nbt.LastDeathLocation run tellraw @s [{"text":"[Player Info]","color":"gold"},[{"text":" Teleported to ","color":"yellow"},[{"selector":"@p[tag=player_info_selected_player]"},"'s"]," ",{"text":"Last Death Location","bold":true,"color":"gold"}," in spectator mode!"]]
execute unless data storage pandamium:temp nbt.LastDeathLocation run tellraw @s [{"text":"[Player Info]","color":"dark_red"},[{"text":" ","color":"red"},{"selector":"@p[tag=player_info_selected_player]","color":"red"}," has no ",{"text":"Last Death Location","bold":true,"color":"gold"},"!"]]
