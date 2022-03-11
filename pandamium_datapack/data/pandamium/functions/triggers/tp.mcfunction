tag @s add running_trigger

execute store success score <do_spectate> variable if score @s tp matches ..-1
execute if score @s tp matches ..-1 run scoreboard players operation @s tp *= <-1> variable

scoreboard players set <returned> variable 0
execute store success score <returned> variable if score @s tp matches 1 run function pandamium:tpa/print_staff_menu

# Run
execute if score <returned> variable matches 0 run scoreboard players set <player_exists> variable 0
execute if score <returned> variable matches 0 as @a if score @s id = @p[tag=running_trigger] tp store success score <player_exists> variable run tag @s add selected_player
execute if score <returned> variable matches 0 store success score <returned> variable if score <player_exists> variable matches 0 run tellraw @s [{"text":"[TP]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"tp"}},"!"]]

execute if score <returned> variable matches 0 run gamemode spectator
execute if score <returned> variable matches 0 at @p[tag=selected_player] run function pandamium:misc/teleport/main
execute if score <returned> variable matches 0 if score <do_spectate> variable matches 1 run spectate @p[tag=selected_player]
execute if score <returned> variable matches 0 run tellraw @s [{"text":"","color":"yellow"},{"text":"[TP]","color":"gold"}," Teleported to ",{"selector":"@p[tag=selected_player]"}," in spectator mode!"]

tag @a remove selected_player
tag @s remove running_trigger
scoreboard players reset @s tp
scoreboard players enable @s tp
