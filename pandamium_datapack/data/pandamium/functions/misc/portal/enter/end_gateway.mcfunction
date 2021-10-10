data modify storage pandamium:temp NBT set from block ~ ~ ~

execute store result score <tp_x> variable run data get storage pandamium:temp NBT.ExitPortal.X
execute store result score <tp_y> variable run data get storage pandamium:temp NBT.ExitPortal.Y
execute store result score <tp_z> variable run data get storage pandamium:temp NBT.ExitPortal.Z
scoreboard players operation <tp_d> variable = @s in_dimension

execute if data storage pandamium:temp NBT.ExitPortal run function pandamium:misc/teleport/to_scores/main
execute unless data storage pandamium:temp NBT.ExitPortal run title @s actionbar {"text":"No Exit-Portal Generated!","color":"red"}
