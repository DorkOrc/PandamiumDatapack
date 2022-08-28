tag @s add running_trigger
scoreboard players set <returned> variable 0

# Print Nearest Non-Staff Player
execute if score @s ban matches 1 store success score <returned> variable run function pandamium:misc/print_nearest_non_staff_player
execute if score @s ban matches ..-2 store success score <returned> variable run tellraw @s [{"text":"[Ban]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

# Restrictions
execute if score <returned> variable matches 0 store success score <returned> variable unless score @s staff_perms matches 2.. run tellraw @s [{"text":"[Ban]","color":"dark_red"},{"text":" You do not have permission to use this trigger!","color":"red"}]

execute if score <returned> variable matches 0 run scoreboard players set <player_exists> variable 0
execute if score <returned> variable matches 0 if score @s ban matches 2.. as @a if score @s id = @p[tag=running_trigger] ban store success score <player_exists> variable run tag @s add selected_player
execute if score <returned> variable matches 0 store success score <returned> variable if score <player_exists> variable matches 0 run tellraw @s [{"text":"[Ban]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"ban"}},"!"]]

execute if score <returned> variable matches 0 store success score <returned> variable if score @p[tag=running_trigger] staff_perms <= @p[tag=selected_player] staff_perms run tellraw @s [{"text":"[Ban]","color":"dark_red"},[{"text":" You cannot ban ","color":"red"},{"selector":"@p[tag=selected_player]","color":"red"},"!"]]

# Do Ban
execute if score <returned> variable matches 0 run scoreboard players add @s silent_punishments 0
execute if score <returned> variable matches 0 unless score @s staff_alt matches 1.. if score @s silent_punishments matches 0 run tellraw @a [{"text":"[Ban] ","color":"red"},{"selector":"@p[tag=selected_player]","color":"dark_red"}," was banned by ",{"selector":"@s","color":"dark_red"},"!"]
execute if score <returned> variable matches 0 unless score @s staff_alt matches 1.. if score @s silent_punishments matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Ban] ","color":"dark_gray"},{"selector":"@p[tag=selected_player]","color":"gray"}," was banned by ",{"selector":"@s","color":"gray"},"!"]
execute if score <returned> variable matches 0 if score @s staff_alt matches 1.. if score @s silent_punishments matches 0 run tellraw @a [{"text":"[Ban] ","color":"red"},{"selector":"@p[tag=selected_player]","color":"dark_red"}," was banned by a staff member!"]
execute if score <returned> variable matches 0 if score @s staff_alt matches 1.. if score @s silent_punishments matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Ban] ","color":"dark_gray"},{"selector":"@p[tag=selected_player]","color":"gray"}," was banned by a staff member!"]

execute if score <returned> variable matches 0 as @p[tag=selected_player] run function pandamium:misc/punishment/ban

tag @a remove selected_player
tag @s remove running_trigger
scoreboard players reset @s ban
scoreboard players enable @s[scores={staff_perms=2..}] ban
