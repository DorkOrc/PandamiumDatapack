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
scoreboard players enable @s namehome
scoreboard players enable @s playtime
scoreboard players enable @s tpa
scoreboard players enable @s homes
scoreboard players enable @s clear_inventory
scoreboard players enable @s world_info
scoreboard players enable @s gift
scoreboard players enable @s leaderboards
scoreboard players enable @s save_mob.spawn
scoreboard players enable @s rtp
scoreboard players enable @s sit
scoreboard players enable @s afk

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
execute if score @s staff_perms matches 1.. run scoreboard players enable @s restart_server
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