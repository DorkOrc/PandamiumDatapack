execute store result score <r0> variable run data get storage pandamium:temp idle.marker_nbt.Rotation[0]
execute store result score <r1> variable run data get storage pandamium:temp idle.marker_nbt.Rotation[1]

scoreboard players set <moved> variable 1
execute if score @s idle.last_r0 = <r0> variable if score @s idle.last_r1 = <r1> variable run scoreboard players set <moved> variable 0
execute if score <moved> variable matches 1 unless score @s idle.time matches 1073741824..1073741864 unless predicate {condition:"entity_properties",entity:"this",predicate:{vehicle:{type:"minecart"}}} run function pandamium:impl/idle/moved
# due to the "Rotate With Minecarts" setting, ignore movements if the player is in a minecart

scoreboard players operation @s idle.last_r0 = <r0> variable
scoreboard players operation @s idle.last_r1 = <r1> variable

execute store result score @s last_position.x run data get storage pandamium:temp idle.marker_nbt.Pos[0]
execute store result score @s last_position.y run data get storage pandamium:temp idle.marker_nbt.Pos[1]
execute store result score @s last_position.z run data get storage pandamium:temp idle.marker_nbt.Pos[2]
execute store result score @s last_position.d run function pandamium:utils/get/dimension_id
