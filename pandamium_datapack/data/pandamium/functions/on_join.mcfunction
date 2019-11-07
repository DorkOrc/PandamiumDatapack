execute unless score @s id matches 1.. run function pandamium:assign_id
execute as @s run function pandamium:update_teams

scoreboard players reset @s[scores={gameplay_perms=3}] home_cooldown

scoreboard players enable @s spawn
scoreboard players enable @s respawn
scoreboard players enable @s vote
scoreboard players enable @s vote_shop
scoreboard players enable @s discord
scoreboard players enable @s home
scoreboard players enable @s sethome
scoreboard players enable @s check_cooldown
scoreboard players enable @s show_playtime
execute if score @s staff_perms matches 1.. run scoreboard players enable @s staff_menu
execute if score @s staff_perms matches 1.. run scoreboard players enable @s jail
execute if score @s staff_perms matches 1.. run scoreboard players enable @s unjail
execute if score @s staff_perms matches 2.. run scoreboard players enable @s kick
execute if score @s staff_perms matches 2.. run scoreboard players enable @s ban
execute if score @s staff_perms matches 2.. run scoreboard players enable @s survival_mode
execute if score @s staff_perms matches 2.. run scoreboard players enable @s spectator_mode

scoreboard players set @s leave_count 0