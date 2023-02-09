execute as @p[tag=player_info.target] run function pandamium:misc/teleport/warp/spawn
tellraw @s [{"text":"[Player Info]","color":"gold"},[{"text":" Teleported ","color":"yellow"},{"selector":"@p[tag=player_info.target]"}," to spawn!"]]
