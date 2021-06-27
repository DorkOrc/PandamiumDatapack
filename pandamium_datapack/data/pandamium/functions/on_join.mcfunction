execute unless score @s id matches 1.. run function pandamium:misc/assign_id
function pandamium:misc/update_teams

execute if score @s active_particles matches 1.. unless score @s gameplay_perms matches 6.. run scoreboard players set @s active_particles 0
execute if score @s jailed matches 3.. run scoreboard players set @s jailed 1

scoreboard players reset @s tpa_request
scoreboard players reset @s selected_player

scoreboard players enable @s spawn
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

scoreboard players enable @s particles
scoreboard players enable @s pose
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
execute if score @s staff_perms matches 1.. run scoreboard players enable @s auto_jails

execute if score @s staff_perms matches 2.. run scoreboard players enable @s ban
execute if score @s staff_perms matches 2.. run scoreboard players enable @s tp
execute if score @s staff_perms matches 2.. run scoreboard players enable @s tp_pre_jail

execute if score @s staff_perms matches 3.. run scoreboard players enable @s take_ec
execute if score @s staff_perms matches 3.. run scoreboard players enable @s take_inv
execute if score @s staff_perms matches 3.. run scoreboard players enable @s take_binding

execute if score @s staff_perms matches 1.. store result score <auto_jails> variable run data get storage pandamium:jail auto_jails
execute if score @s staff_perms matches 1.. if score <auto_jails> variable matches 1.. at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 2 1
execute if score @s staff_perms matches 1.. if score <auto_jails> variable matches 1 run tellraw @s [{"text":"[Info]","color":"dark_gray"},[{"text":" There is ","color":"gray","hoverEvent":{"action":"show_text","value":{"text":"Click to List and Clear the Auto-Jails Log","color":"gray"}},"clickEvent":{"action":"run_command","value":"/trigger auto_jails"}},{"text":"1","bold":true}," auto-jail logged!"]]
execute if score @s staff_perms matches 1.. if score <auto_jails> variable matches 2.. run tellraw @s [{"text":"[Info]","color":"dark_gray"},[{"text":" There are ","color":"gray","hoverEvent":{"action":"show_text","value":{"text":"Click to List and Clear the Auto-Jails Log","color":"gray"}},"clickEvent":{"action":"run_command","value":"/trigger auto_jails"}},{"score":{"name":"<auto_jails>","objective":"variable"},"bold":true}," auto-jails logged!"]]

scoreboard players set @s leave_count 0

#in case the player changed their name
function pandamium:misc/spawnpoint/check_existence
