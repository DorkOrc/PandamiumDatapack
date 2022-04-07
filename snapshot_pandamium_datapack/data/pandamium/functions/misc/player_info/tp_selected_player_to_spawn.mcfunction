execute as @p[tag=player_info_selected_player] run function pandamium:misc/teleport/warp/spawn
tellraw @s [{"text":"[Player Info]","color":"gold"},[{"text":" Teleported ","color":"yellow"},{"selector":"@p[tag=player_info_selected_player]"}," to spawn!"]]
