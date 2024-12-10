execute if score <target_is_online> variable matches 0 run return run function pandamium:triggers/player_info_v2/tp_target_to_spawn/offline with storage pandamium:temp arguments

execute as @a[predicate=pandamium:matches_id,limit=1] run function pandamium:misc/warp/spawn
scoreboard players reset @a[predicate=pandamium:matches_id,limit=1] on_join.tp_to_spawn

tellraw @s [{"text":"[Player Info]","color":"dark_green"},{"text":" Teleported ","extra":[{"selector":"@a[predicate=pandamium:matches_id,limit=1]"}," to spawn!"],"color":"green"}]
