data modify storage pandamium:temp nbt set from block ~ ~ ~

execute store result score <tp_x> variable run data get storage pandamium:temp nbt.ExitPortal.X
execute store result score <tp_y> variable run data get storage pandamium:temp nbt.ExitPortal.Y
execute store result score <tp_z> variable run data get storage pandamium:temp nbt.ExitPortal.Z
scoreboard players set <tp_d> variable 1

execute if data storage pandamium:temp nbt.ExitPortal run function pandamium:misc/teleport/to_scores
execute unless data storage pandamium:temp nbt.ExitPortal run title @s actionbar {"text":"No Exit-Portal Generated!","color":"red"}
