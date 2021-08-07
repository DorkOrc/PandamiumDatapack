tag @s add running_trigger

execute if score @s player_info matches 1 run function pandamium:misc/print_nearest_non_staff_player

execute if score @s player_info matches -1 at @s run scoreboard players operation @s player_info = @p[scores={staff_perms=0},distance=..200]
execute if score @s player_info matches -1 at @s unless entity @p[scores={staff_perms=0},distance=..200] run tellraw @s [{"text":"[Player Info]","color":"dark_red"},{"text":" Could not find a non-staff player nearby!","color":"red"}]

execute if score @s player_info matches 2.. as @a if score @s id = @p[tag=running_trigger] player_info run tag @s add selected_player
execute store success score <player_exists> variable if entity @p[tag=selected_player]
scoreboard players operation @s selected_player = @p[tag=selected_player] id
execute if score @s player_info matches 2.. if score <player_exists> variable matches 0 run tellraw @s [{"text":"[Player Info]","color":"dark_red"},{"text":" Could not find that player!","color":"red"}]

# Menu
execute if score <player_exists> variable matches 1 as @p[tag=selected_player] in pandamium:staff_world run function pandamium:misc/get_username
execute if score <player_exists> variable matches 1 run function pandamium:misc/player_info/menu

# Click Events
execute if score @s player_info matches ..-2 as @a if score @s id = @p[tag=running_trigger] selected_player run tag @s add selected_player
execute if score @s player_info matches ..-2 store success score <player_exists> variable if entity @p[tag=selected_player]
execute if score @s player_info matches ..-2 if score <player_exists> variable matches 1 run function pandamium:misc/player_info/click_events
execute if score @s player_info matches ..-2 if score <player_exists> variable matches 0 run tellraw @s [{"text":"[Spawnpoint]","color":"dark_red"},{"text":" You have not selected a player or the player you have selected is offline!","color":"red"}]

tag @s remove running_trigger
tag @a remove selected_player
scoreboard players reset @s player_info
scoreboard players enable @s player_info
