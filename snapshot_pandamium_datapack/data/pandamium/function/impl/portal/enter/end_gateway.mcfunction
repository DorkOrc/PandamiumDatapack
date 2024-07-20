execute unless data block ~ ~ ~ exit_portal run return run title @s actionbar {"text":"No Exit-Portal Generated!","color":"red"}

data modify storage pandamium:local functions."pandamium:impl/portal/enter/end_gateway".exit_portal set from block ~ ~ ~ exit_portal
execute store result score <tp_x> variable run data get storage pandamium:local functions."pandamium:impl/portal/enter/end_gateway".exit_portal[0]
execute store result score <tp_y> variable run data get storage pandamium:local functions."pandamium:impl/portal/enter/end_gateway".exit_portal[1]
execute store result score <tp_z> variable run data get storage pandamium:local functions."pandamium:impl/portal/enter/end_gateway".exit_portal[2]
scoreboard players set <tp_d> variable 1
function pandamium:utils/teleport/to_scores/from_source {source:"portal"}
