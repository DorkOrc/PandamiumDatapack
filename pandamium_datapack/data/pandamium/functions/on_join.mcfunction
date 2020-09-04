execute unless score @s id matches 1.. run function pandamium:misc/assign_id
execute as @s run function pandamium:misc/update_teams

scoreboard players reset @s[scores={gameplay_perms=3..}] home_cooldown
scoreboard players reset @s[scores={gameplay_perms=3..}] tpa_cooldown

execute if score @s active_particles matches 1.. unless score @s gameplay_perms matches 3.. run scoreboard players set @s active_particles 0

execute if score @s particles matches 1.. run scoreboard players operation @s active_particles = @s particles
execute if score @s particles matches 1.. run scoreboard players reset @s particles

scoreboard players enable @s spawn
scoreboard players enable @s respawn
scoreboard players enable @s vote
scoreboard players enable @s vote_shop
scoreboard players enable @s discord
scoreboard players enable @s home
scoreboard players enable @s sethome
scoreboard players enable @s show_cooldown
scoreboard players enable @s show_playtime
scoreboard players enable @s tpa
scoreboard players enable @s tpa_accept

scoreboard players enable @s particles
scoreboard players enable @s pose
scoreboard players enable @s top_playtime
scoreboard players enable @s top_votes

execute if score @s staff_perms matches 1.. run scoreboard players enable @s staff_menu
execute if score @s staff_perms matches 1.. run scoreboard players enable @s jail
execute if score @s staff_perms matches 1.. run scoreboard players enable @s unjail
execute if score @s staff_perms matches 1.. run scoreboard players enable @s inventory
execute if score @s staff_perms matches 1.. run scoreboard players enable @s enderchest
execute if score @s staff_perms matches 1.. run scoreboard players enable @s get_guidebook
execute if score @s staff_perms matches 1.. run scoreboard players enable @s show_homes
execute if score @s staff_perms matches 1.. run scoreboard players enable @s warp_staff_room
execute if score @s staff_perms matches 1.. run scoreboard players enable @s show_spawnpoint
execute if score @s staff_perms matches 1.. run scoreboard players enable @s kick

execute if score @s staff_perms matches 2.. run scoreboard players enable @s ban
execute if score @s staff_perms matches 2.. run scoreboard players enable @s restart
execute if score @s staff_perms matches 2.. run scoreboard players enable @s survival_mode
execute if score @s staff_perms matches 2.. run scoreboard players enable @s spectator_mode
execute if score @s staff_perms matches 2.. run scoreboard players enable @s clear_items
execute if score @s staff_perms matches 2.. run scoreboard players enable @s tp

execute if score @s staff_perms matches 3.. run scoreboard players enable @s take_ec
execute if score @s staff_perms matches 3.. run scoreboard players enable @s take_inv
execute if score @s staff_perms matches 3.. run scoreboard players enable @s take_binding

scoreboard players set @s leave_count 0
