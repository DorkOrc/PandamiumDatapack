scoreboard players set @s temp_1 1

execute store result score <r0> variable run data get storage pandamium:temp idle.marker_nbt.Rotation[0]
scoreboard players operation <r0> variable %= #360 constant
execute store result score <r1> variable run data get storage pandamium:temp idle.marker_nbt.Rotation[1]
scoreboard players operation <r1> variable %= #360 constant

scoreboard players set <moved> variable 1
execute if score @s idle.last_r0 = <r0> variable if score @s idle.last_r1 = <r1> variable run scoreboard players set <moved> variable 0
execute if score <moved> variable matches 1 unless score @s idle.time matches 1073741824..1073741864 unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{vehicle:{type:"#pandamium:rotation_dictating_vehicles"}}} run function pandamium:impl/idle/moved
# due to the "Rotate With Minecarts" setting, and boats controlled by other players, ignore movements if the player is in a minecart/boat

scoreboard players operation @s idle.last_r0 = <r0> variable
scoreboard players operation @s idle.last_r1 = <r1> variable

execute store result score @s last_position.x run data get storage pandamium:temp idle.marker_nbt.Pos[0]
execute store result score @s last_position.y run data get storage pandamium:temp idle.marker_nbt.Pos[1]
execute store result score @s last_position.z run data get storage pandamium:temp idle.marker_nbt.Pos[2]
execute store result score @s last_position.d run function pandamium:utils/get/dimension_id

execute unless score @s parkour.checkpoint matches 300..399 run return 0
execute if score @s parkour.timer_ticks matches 12000.. run return 0
execute at @s unless predicate {condition:"minecraft:location_check",predicate:{position:{x:{min:-512,max:511.999},y:{min:-64,max:319.999},z:{min:-512,max:511.999}},dimension:"minecraft:overworld"}} run return 0

# load
function pandamium:utils/database/players/load/self

# append new entry
data modify storage pandamium.db.players:io selected.entry.data.parkour.course_4.current_run.record append value [I;0,0,0]

execute store result storage pandamium.db.players:io selected.entry.data.parkour.course_4.current_run.record[-1][0] int 1 run scoreboard players get @s parkour.timer_ticks

# v1
execute store result score <v1> variable run data get storage pandamium:temp idle.marker_nbt.Pos[0] 32
scoreboard players add <v1> variable 16384
scoreboard players operation <v1> variable *= #32768 constant
execute store result score <z> variable run data get storage pandamium:temp idle.marker_nbt.Pos[2] 32
scoreboard players operation <v1> variable += <z> variable
execute store result storage pandamium.db.players:io selected.entry.data.parkour.course_4.current_run.record[-1][1] int 1 run scoreboard players add <v1> variable 16384

# v2
scoreboard players operation <v2> variable = <r1> variable
scoreboard players add <v2> variable 90
scoreboard players operation <v2> variable *= #360 constant
scoreboard players operation <v2> variable += <r0> variable
scoreboard players add <v2> variable 180
scoreboard players operation <v2> variable *= #12288 constant
execute store result score <y> variable run data get storage pandamium:temp idle.marker_nbt.Pos[1] 32
scoreboard players operation <v2> variable += <y> variable
execute store result storage pandamium.db.players:io selected.entry.data.parkour.course_4.current_run.record[-1][2] int 1 run scoreboard players add <v2> variable 2048

# save
function pandamium:utils/database/players/save
