execute as @a[tag=player_info.target,limit=1] run function pandamium:impl/teleport/warp/spawn
tellraw @s [{"text":"[Player Info]","color":"gold"},[{"text":" Teleported ","color":"yellow"},{"selector":"@a[tag=player_info.target,limit=1]"}," to spawn!"]]
