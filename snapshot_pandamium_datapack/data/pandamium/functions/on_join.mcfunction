execute unless score @s id matches 1.. run function pandamium:misc/assign_id
function pandamium:misc/update_teams
function #pandamium:leaderboards/update/all

execute if score @s on_join.take_items matches 1 run function pandamium:misc/auto_actions/take/take_items
execute if score @s on_join.tp_to_spawn matches 1 run function pandamium:misc/auto_actions/misc/tp_to_spawn

execute if score @s jailed matches 1.. run tellraw @a[scores={staff_perms=1..}] [{"text":"[Info] ","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger spawn set -101"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"Jail Area","bold":true}," in spectator mode"]}},{"selector":"@s","color":"gray","clickEvent":{"action":"run_command","value":"/trigger spawn set -101"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"yellow"},{"text":"Jail Area","bold":true}," in spectator mode"]}},{"text":" is still jailed!","color":"gray"}]
execute if score <unread_auto_actions> global matches 1.. if score @s staff_perms matches 1.. run tellraw @s [{"text":"[Info]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger auto_actions_log"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to see the ","color":"yellow"},{"text":"Auto-Actions Log","bold":true}]}},[{"text":" There are ","color":"gray"},{"score":{"name":"<unread_auto_actions>","objective":"global"},"bold":true}," unread auto-action",{"text":"(s)","color":"gray"},"!"]]
execute if score <anti_bot_mode> global matches 1 if score @s staff_perms matches 1.. run tellraw @s [{"text":"[Info] ","color":"dark_gray","hoverEvent":{"action":"show_text","value":[{"text":"Click to open the ","color":"yellow"},{"text":"Options Menu","bold":true}," to toggle ",{"text":"Anti-Bot Mode","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger options"}},{"text":"Anti-Bot Mode","bold":true,"color":"gray"},{"text":" is enabled!","color":"gray"}]

execute if score @s active_particles matches 1.. unless score @s gameplay_perms matches 6.. run scoreboard players set @s active_particles 0
execute if score @s death_particles matches 1.. unless score @s gameplay_perms matches 6.. run scoreboard players set @s death_particles 0
execute if score @s jailed matches 3.. run scoreboard players set @s jailed 1

tag @s remove selected_player

scoreboard players reset @s online_ticks
scoreboard players reset @s tpa_request
scoreboard players reset @s selected_player

# Triggers
scoreboard players enable @s spawn
scoreboard players enable @s enderman_farm
scoreboard players enable @s parkour
scoreboard players enable @s respawn
scoreboard players enable @s options
scoreboard players enable @s vote
scoreboard players enable @s vote_shop
scoreboard players enable @s discord
scoreboard players enable @s home
scoreboard players enable @s sethome
scoreboard players enable @s delhome
scoreboard players enable @s playtime
scoreboard players enable @s tpa
scoreboard players enable @s homes
scoreboard players enable @s clear
scoreboard players enable @s world_info
scoreboard players enable @s gift
scoreboard players enable @s leaderboards

execute if score @s parkour.checkpoint matches 0.. run scoreboard players enable @s parkour.quit
execute if score @s parkour.checkpoint matches 0.. run scoreboard players enable @s parkour.restart

scoreboard players enable @s particles
scoreboard players enable @s pose
scoreboard players enable @s frame_visibility
scoreboard players enable @s hat
scoreboard players enable @s item_font
scoreboard players enable @s sign_font
scoreboard players enable @s donator_area

execute if score @s staff_perms matches 1.. run scoreboard players enable @s staff_menu
execute if score @s staff_perms matches 1.. run scoreboard players enable @s jail
execute if score @s staff_perms matches 1.. run scoreboard players enable @s unjail
execute if score @s staff_perms matches 1.. run scoreboard players enable @s inventory
execute if score @s staff_perms matches 1.. run scoreboard players enable @s enderchest
execute if score @s staff_perms matches 1.. run scoreboard players enable @s guidebook
execute if score @s staff_perms matches 1.. run scoreboard players enable @s spawnpoint
execute if score @s staff_perms matches 1.. run scoreboard players enable @s kick
execute if score @s staff_perms matches 1.. run scoreboard players enable @s toggle_spectator
execute if score @s staff_perms matches 1.. run scoreboard players enable @s staff_world
execute if score @s staff_perms matches 1.. run scoreboard players enable @s restart
execute if score @s staff_perms matches 1.. run scoreboard players enable @s item_clear
execute if score @s staff_perms matches 1.. run scoreboard players enable @s player_info
execute if score @s staff_perms matches 1.. run scoreboard players enable @s container
execute if score @s staff_perms matches 1.. run scoreboard players enable @s auto_actions_log

execute if score @s staff_perms matches 2.. run scoreboard players enable @s ban
execute if score @s staff_perms matches 2.. run scoreboard players enable @s tp
execute if score @s staff_perms matches 2.. run scoreboard players enable @s pre_jail_tp
execute if score @s staff_perms matches 2.. run scoreboard players enable @s switch_dimension

execute if score @s staff_perms matches 3.. run scoreboard players enable @s take_enderchest
execute if score @s staff_perms matches 3.. run scoreboard players enable @s take_inventory
execute if score @s staff_perms matches 3.. run scoreboard players enable @s take_bound_items
execute if score @s staff_perms matches 3.. run scoreboard players enable @s hide

# temporary triggers
scoreboard players enable @s save_mob.spawn

#

scoreboard players set @s detect.leave_game 0

# In case the player changed their name
function pandamium:misc/spawnpoint/check_existence
