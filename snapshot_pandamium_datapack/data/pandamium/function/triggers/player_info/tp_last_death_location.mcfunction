data modify storage pandamium:temp nbt set from entity @a[tag=player_info.target,limit=1]

execute if data storage pandamium:temp nbt.LastDeathLocation{dimension:'minecraft:the_nether'} run scoreboard players set <tp_d> variable -1
execute if data storage pandamium:temp nbt.LastDeathLocation{dimension:'minecraft:overworld'} run scoreboard players set <tp_d> variable 0
execute if data storage pandamium:temp nbt.LastDeathLocation{dimension:'minecraft:the_end'} run scoreboard players set <tp_d> variable 1
execute if data storage pandamium:temp nbt.LastDeathLocation{dimension:'pandamium:staff_world'} run scoreboard players set <tp_d> variable 2

execute store result score <tp_x> variable run data get storage pandamium:temp nbt.LastDeathLocation.pos[0]
execute store result score <tp_y> variable run data get storage pandamium:temp nbt.LastDeathLocation.pos[1]
execute store result score <tp_z> variable run data get storage pandamium:temp nbt.LastDeathLocation.pos[2]

execute if data storage pandamium:temp nbt.LastDeathLocation run gamemode spectator
execute if data storage pandamium:temp nbt.LastDeathLocation run function pandamium:utils/teleport/to_scores/from_source {source:"player_info teleport_to_target_last_death_location"}

execute if data storage pandamium:temp nbt.LastDeathLocation run tellraw @s [{text:"[Player Info]",color:"gold"},{text:" Teleported to ",color:"yellow",extra:[{selector:"@a[tag=player_info.target,limit=1]",extra:[{text:"'s"}]},{text:" "},{text:"Last Death Location",bold:true,color:"gold"},{text:" in spectator mode!"}]}]
execute unless data storage pandamium:temp nbt.LastDeathLocation run tellraw @s [{text:"[Player Info]",color:"dark_red"},{text:" ",color:"red",extra:[{selector:"@a[tag=player_info.target,limit=1]",color:"red"},{text:" has no "},{text:"Last Death Location",bold:true,color:"gold"},{text:"!"}]}]
