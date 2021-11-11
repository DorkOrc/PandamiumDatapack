# Temporary
execute unless score @s new_world_tp matches 1.. run function pandamium:misc/teleport/spawn
scoreboard players set @s new_world_tp 1

# Migrate

execute if score @s parkour_best_time matches 1.. run scoreboard players set @s parkour_leaderboard 0
execute if score @s parkour_best_time matches 1.. run scoreboard players operation @s parkour_leaderboard -= @s parkour_best_time
execute if score @s parkour_best_time matches 1.. run scoreboard players operation @s parkour_leaderboard /= <ticks_per_second> variable

#

execute unless score @s id matches 1.. run function pandamium:misc/assign_id
function pandamium:misc/update_teams
execute if score @s jailed matches 1.. run tellraw @a[scores={staff_perms=1..}] [{"text":"[Info] ","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger spawn set -64"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"yellow"},{"text":"Jail Area","bold":true,"color":"gold"}]}},{"selector":"@s","color":"gray","clickEvent":{"action":"run_command","value":"/trigger spawn set -64"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to Teleport to ","color":"yellow"},{"text":"Jail Area","bold":true,"color":"gold"}]}},{"text":" is still jailed!","color":"gray"}]

execute if score @s staff_perms matches 1.. if score <unread_auto_jails> global matches 1 run tellraw @s [{"text":"[Info]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger auto_jails"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to See the ","color":"yellow"},{"text":"Auto-Jails Log","bold":true,"color":"gold"}]}},[{"text":" There is ","color":"gray"},{"text":"1","bold":true}," unseen auto-jail!"]]
execute if score @s staff_perms matches 1.. if score <unread_auto_jails> global matches 2.. run tellraw @s [{"text":"[Info]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger auto_jails"},"hoverEvent":{"action":"show_text","value":[{"text":"Click to See the ","color":"yellow"},{"text":"Auto-Jails Log","bold":true,"color":"gold"}]}},[{"text":" There are ","color":"gray"},{"score":{"name":"<unread_auto_jails>","objective":"global"},"bold":true}," unseen auto-jails!"]]

execute if score @s active_particles matches 1.. unless score @s gameplay_perms matches 6.. run scoreboard players set @s active_particles 0
execute if score @s death_particles matches 1.. unless score @s gameplay_perms matches 6.. run scoreboard players set @s death_particles 0
execute if score @s jailed matches 3.. run scoreboard players set @s jailed 1

tag @s remove selected_player

scoreboard players reset @s online_ticks
scoreboard players reset @s tpa_request
scoreboard players reset @s selected_player

# Temporary
scoreboard players enable @s save_mob.spawn

scoreboard players enable @s spawn
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

execute if score @s parkour_checkpoint matches 0.. run scoreboard players enable @s parkour_end

scoreboard players enable @s particles
scoreboard players enable @s pose
scoreboard players enable @s frame_visibility
scoreboard players enable @s hat
scoreboard players enable @s item_font
scoreboard players enable @s sign_font
scoreboard players enable @s leaderboards
scoreboard players enable @s donator_area

execute if score @s staff_perms matches 1.. run scoreboard players enable @s staff_menu
execute if score @s staff_perms matches 1.. run scoreboard players enable @s jail
execute if score @s staff_perms matches 1.. run scoreboard players enable @s unjail
execute if score @s staff_perms matches 1.. run scoreboard players enable @s inventory
execute if score @s staff_perms matches 1.. run scoreboard players enable @s enderchest
execute if score @s staff_perms matches 1.. run scoreboard players enable @s get_guidebook
execute if score @s staff_perms matches 1.. run scoreboard players enable @s spawnpoint
execute if score @s staff_perms matches 1.. run scoreboard players enable @s kick
execute if score @s staff_perms matches 1.. run scoreboard players enable @s toggle_spectator
execute if score @s staff_perms matches 1.. run scoreboard players enable @s staff_world
execute if score @s staff_perms matches 1.. run scoreboard players enable @s restart
execute if score @s staff_perms matches 1.. run scoreboard players enable @s item_clear
execute if score @s staff_perms matches 1.. run scoreboard players enable @s player_info
execute if score @s staff_perms matches 1.. run scoreboard players enable @s container
execute if score @s staff_perms matches 1.. run scoreboard players enable @s auto_jails

execute if score @s staff_perms matches 2.. run scoreboard players enable @s ban
execute if score @s staff_perms matches 2.. run scoreboard players enable @s tp
execute if score @s staff_perms matches 2.. run scoreboard players enable @s pre_jail_tp
execute if score @s staff_perms matches 2.. run scoreboard players enable @s switch_dimension

execute if score @s staff_perms matches 3.. run scoreboard players enable @s take_ec
execute if score @s staff_perms matches 3.. run scoreboard players enable @s take_inv
execute if score @s staff_perms matches 3.. run scoreboard players enable @s take_binding
execute if score @s staff_perms matches 3.. run scoreboard players enable @s hide

scoreboard players set @s leave_count 0

#in case the player changed their name
function pandamium:misc/spawnpoint/check_existence
