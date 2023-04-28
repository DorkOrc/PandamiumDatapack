tag @s remove source
tag @s remove target

execute unless score @s id matches 1.. run function pandamium:player/id/update
function pandamium:player/ranks/update_all
function pandamium:misc/leaderboards/update_self/every_votes

scoreboard players set @s idle.time -6000
scoreboard players operation @s last_joined.year = <year> global
scoreboard players operation @s last_joined.month = <month> global
scoreboard players operation @s last_joined.day = <day> global
scoreboard players operation @s last_joined.hour = <hour> global

execute if score @s on_join.take_items matches 1 run function pandamium:impl/auto_actions/actions/take_items/main
execute if score @s on_join.tp_to_spawn matches 1 run function pandamium:impl/auto_actions/actions/tp_to_spawn/main
execute if score @s on_join.reset_spawnpoint matches 1 run function pandamium:impl/auto_actions/actions/reset_spawnpoint/main

execute if score @s jailed matches 1.. run tellraw @a[scores={staff_perms=1..}] [{"text":"[Info] ","color":"dark_gray"},{"selector":"@s","color":"gray"},{"text":" is still jailed! ","color":"gray"},{"text":"[→]","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/trigger spawn set -101"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"blue"},{"text":"Jail Area","bold":true}," in spectator mode"]}}]
execute if score <unread_auto_actions> global matches 1.. if score @s staff_perms matches 1.. run tellraw @s [{"text":"[Info]","color":"dark_gray"},[{"text":" There are ","color":"gray"},{"score":{"name":"<unread_auto_actions>","objective":"global"},"bold":true}," unread auto-action",{"text":"(s)","color":"gray"},"! "],{"text":"[✉]","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/trigger auto_actions_log"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to see the ","color":"blue"},{"text":"Auto-Actions Log","bold":true}]}}]
execute if score <anti_bot_mode> global matches 1 if score @s staff_perms matches 1.. run tellraw @s [{"text":"[Info] ","color":"dark_gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to open the ","color":"yellow"},{"text":"Options Menu","bold":true}," to toggle ",{"text":"Anti-Bot Mode","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options"}},{"text":"Anti-Bot Mode","bold":true,"color":"gray"},{"text":" is enabled!","color":"gray"}]

execute if score @s active_particles matches 1.. unless score @s gameplay_perms matches 6.. run scoreboard players set @s active_particles 0
execute if score @s death_particles matches 1.. unless score @s gameplay_perms matches 6.. run scoreboard players set @s death_particles 0
execute if score @s jailed matches 3.. run scoreboard players set @s jailed 1

scoreboard players reset @s online_ticks
scoreboard players reset @s tpa_request.sender_id
scoreboard players reset @s tpa_request.time
scoreboard players reset @s selected_player
scoreboard players reset @s selected_block.x
scoreboard players reset @s selected_block.y
scoreboard players reset @s selected_block.z

# Triggers
function pandamium:misc/enable_triggers

# In case the player changed their name
function pandamium:impl/spawnpoint/check_existence
scoreboard players set @s detect.leave_game 0
