# only run IF score <enderman_farm_x> global = <enderman_farm_x> global

scoreboard players operation <tp_x> variable = <enderman_farm_x> global
scoreboard players operation <tp_y> variable = <enderman_farm_y> global
scoreboard players operation <tp_z> variable = <enderman_farm_z> global
scoreboard players set <tp_d> variable 1

function pandamium:misc/teleport/to_scores
