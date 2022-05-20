function pandamium:misc/teleport/warp/spawn

tellraw @a[scores={staff_perms=1..}] [{"text":"[Info] ","color":"dark_gray","clickEvent":{"action":"run_command","value":"trigger spawn set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"Spawn","bold":true}," in spectator mode"]}},{"selector":"@s","color":"gray","clickEvent":{"action":"run_command","value":"trigger spawn set -1"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"Spawn","bold":true}," in spectator mode"]}},{"text":" was teleported to spawn!","color":"gray"}]
scoreboard players reset @s on_join.tp_to_spawn
