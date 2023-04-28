execute store result score <this_marker_version> variable run data get entity @s data.enderman_farm_protection_version
execute unless score <this_marker_version> variable = <enderman_farm_protection_version> global run kill
execute if score <this_marker_version> variable = <enderman_farm_protection_version> global positioned ~-30 0 ~-30 run scoreboard players set @a[dx=60,dy=255,dz=50] temp_1 1
