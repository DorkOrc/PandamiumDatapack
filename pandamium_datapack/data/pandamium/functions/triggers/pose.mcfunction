execute unless score @s gameplay_perms matches 6.. run function pandamium:misc/print_donator_only_message

tag @s add running_trigger

# Menu
execute if score @s gameplay_perms matches 6.. if score @s pose matches 1.. run function pandamium:misc/pose/menu

# Check if can run
scoreboard players set <can_run> variable 1
execute unless score @s gameplay_perms matches 6.. run scoreboard players set <can_run> variable 0
execute if score @s pose matches 1.. run scoreboard players set <can_run> variable 0
execute if entity @s[gamemode=spectator] run scoreboard players set <can_run> variable 0
execute if score @s in_spawn matches 1 run scoreboard players set <can_run> variable 0
execute at @s store success score <armour_stand_exists> variable if entity @e[type=armor_stand,distance=..6,limit=1,tag=!pose.locked]
execute if score <armour_stand_exists> variable matches 0 run scoreboard players set <can_run> variable 0

# Target new
scoreboard players operation <pose> variable = @s pose
execute if score <can_run> variable matches 1 if score @s pose matches ..-1 as @e[type=armor_stand,sort=nearest,distance=..6,limit=1,tag=!pose.locked] at @s run function pandamium:misc/pose/target_new

# Display success
execute if score <can_run> variable matches 1 run function pandamium:misc/pose/display_success_message

# Display an error message
execute if score @s pose matches ..-1 run scoreboard players set <displayed_error> variable 0
execute if score @s pose matches ..-1 if score <can_run> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if entity @s[gamemode=spectator] run tellraw @s [{"text":"[Pose]","color":"dark_red"},{"text":" You cannot use that trigger in spectator mode!","color":"red"}]
execute if score @s pose matches ..-1 if score <can_run> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score @s in_spawn matches 1 run tellraw @s [{"text":"[Pose]","color":"dark_red"},{"text":" You cannot use that trigger at spawn!","color":"red"}]
execute if score @s pose matches ..-1 if score <can_run> variable matches 0 unless score <displayed_error> variable matches 1 store success score <displayed_error> variable if score <armour_stand_exists> variable matches 0 run tellraw @s [{"text":"[Pose]","color":"dark_red"},{"text":" Could not find an armour stand nearby to edit!","color":"red"}]

tag @s remove running_trigger
scoreboard players reset @s pose
scoreboard players enable @s pose
