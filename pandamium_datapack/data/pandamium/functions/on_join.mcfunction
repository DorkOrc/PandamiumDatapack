execute unless score @s id matches 1.. run function pandamium:misc/assign_id
execute as @s run function pandamium:misc/update_teams

execute if score @s active_particles matches 1.. unless score @s gameplay_perms matches 5 run scoreboard players set @s active_particles 0

scoreboard players reset @s tpa_request

scoreboard players enable @s spawn
scoreboard players enable @s respawn
scoreboard players enable @s vote
scoreboard players enable @s vote_shop
scoreboard players enable @s discord
scoreboard players enable @s home
scoreboard players enable @s set_home
scoreboard players enable @s del_home
scoreboard players enable @s show_playtime
scoreboard players enable @s tpa
scoreboard players enable @s homes
scoreboard players enable @s clear

scoreboard players enable @s particles
scoreboard players enable @s pose
scoreboard players enable @s hat
scoreboard players enable @s top_playtime
scoreboard players enable @s top_votes

execute if score @s staff_perms matches 1.. run scoreboard players enable @s staff_menu
execute if score @s staff_perms matches 1.. run scoreboard players enable @s jail
execute if score @s staff_perms matches 1.. run scoreboard players enable @s unjail
execute if score @s staff_perms matches 1.. run scoreboard players enable @s inventory
execute if score @s staff_perms matches 1.. run scoreboard players enable @s enderchest
execute if score @s staff_perms matches 1.. run scoreboard players enable @s get_guidebook
execute if score @s staff_perms matches 1.. run scoreboard players enable @s warp_staff_room
execute if score @s staff_perms matches 1.. run scoreboard players enable @s show_spawnpoint
execute if score @s staff_perms matches 1.. run scoreboard players enable @s kick
execute if score @s staff_perms matches 1.. run scoreboard players enable @s toggle_spectator

execute if score @s staff_perms matches 2.. run scoreboard players enable @s ban
execute if score @s staff_perms matches 2.. run scoreboard players enable @s restart
execute if score @s staff_perms matches 2.. run scoreboard players enable @s clear_items
execute if score @s staff_perms matches 2.. run scoreboard players enable @s tp

execute if score @s staff_perms matches 3.. run scoreboard players enable @s take_ec
execute if score @s staff_perms matches 3.. run scoreboard players enable @s take_inv
execute if score @s staff_perms matches 3.. run scoreboard players enable @s take_binding

scoreboard players set @s leave_count 0

#in case the player changed their name
function pandamium:misc/spawnpoint/check_existence
scoreboard players set @s time_since_death 0
