execute store result score <this_marker_version> variable run data get entity @s data.enderman_farm_protection_version
execute unless score <this_marker_version> variable = <enderman_farm_protection_version> global run kill

execute if score <this_marker_version> variable = <enderman_farm_protection_version> global positioned ~-30 0 ~-30 run scoreboard players set @a[dx=59,dy=255,dz=59] temp_1 1
execute if score <this_marker_version> variable = <enderman_farm_protection_version> global positioned ~-30 0 ~-30 run kill @e[type=#pandamium:remove_at_enderman_farm,dx=59,dy=255,dz=59]
