# run AT @s

tag @s add running_trigger
scoreboard players set <returned> variable 0
execute store success score <returned> variable if score @s kick matches ..-2 run tellraw @s [{"text":"[Kick]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

# Print Nearest Non-Staff Player
execute if score <returned> variable matches 0 store success score <returned> variable if score @s kick matches 1 run function pandamium:misc/print_nearest_non_staff_player

# Quick-kick
execute if score <returned> variable matches 0 if score @s kick matches -1 run scoreboard players operation @s kick = @p[scores={staff_perms=0},distance=..200] id
execute if score <returned> variable matches 0 store success score <returned> variable if score @s kick matches -1 run tellraw @s [{"text":"[Kick]","color":"dark_red"},{"text":" Could not find a non-staff player nearby!","color":"red"}]

# Restrictions
execute if score <returned> variable matches 0 store success score <returned> variable unless score @s staff_perms matches 1.. run tellraw @s [{"text":"[Kick]","color":"dark_red"},{"text":" You do not have permission to use this trigger!","color":"red"}]

execute if score <returned> variable matches 0 run scoreboard players set <player_exists> variable 0
execute if score <returned> variable matches 0 as @a if score @s id = @p[tag=running_trigger] kick store success score <player_exists> variable run tag @s add selected_player
execute if score <returned> variable matches 0 store success score <returned> variable if score <player_exists> variable matches 0 run tellraw @s [{"text":"[Kick]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"kick"}},"!"]]

# Do Kick
execute if score <returned> variable matches 0 unless score @s staff_alt matches 1 unless score @s silent_punishments matches 1 run tellraw @a [{"text":"[Info] ","color":"dark_aqua"},{"selector":"@p[tag=selected_player]","color":"aqua"}," was kicked by ",{"selector":"@s","color":"aqua"},"!"]
execute if score <returned> variable matches 0 unless score @s staff_alt matches 1 if score @s silent_punishments matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Info] ","color":"dark_gray"},{"selector":"@p[tag=selected_player]","color":"gray"}," was kicked by ",{"selector":"@s","color":"gray"},"!"]
execute if score <returned> variable matches 0 if score @s staff_alt matches 1 unless score @s silent_punishments matches 1 run tellraw @a [{"text":"[Info] ","color":"dark_aqua"},{"selector":"@p[tag=selected_player]","color":"aqua"}," was kicked by a staff member!"]
execute if score <returned> variable matches 0 if score @s staff_alt matches 1 if score @s silent_punishments matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Info] ","color":"dark_gray"},{"selector":"@p[tag=selected_player]","color":"gray"}," was kicked by a staff member!"]

execute if score <returned> variable matches 0 as @p[tag=selected_player] run function pandamium:misc/get_kicked

tag @a remove selected_player
tag @s remove running_trigger
scoreboard players reset @s kick
scoreboard players enable @s[scores={staff_perms=1..}] kick
