tag @s add running_trigger

execute store success score <do_spectate> variable if score @s tp matches ..-1
execute if score @s tp matches ..-1 run scoreboard players operation @s tp *= <-1> variable

execute if score @s tp matches 1 run function pandamium:tpa/print_staff_menu

execute if score @s tp matches 2.. as @a if score @s id = @p[tag=running_trigger] tp run tag @s add selected_player
execute store success score <player_exists> variable if entity @p[tag=selected_player]
execute if score @s tp matches 2.. if score <player_exists> variable matches 0 run tellraw @s [{"text":"[TP]","color":"dark_red"},{"text":" Could not find that player!","color":"red"}]

execute if score <player_exists> variable matches 1 run gamemode spectator
execute if score <player_exists> variable matches 1 at @p[tag=selected_player] run function pandamium:misc/teleport/main
execute if score <player_exists> variable matches 1 if score <do_spectate> variable matches 1 run spectate @p[tag=selected_player]

execute if score <player_exists> variable matches 1 run tellraw @s [{"text":"","color":"yellow"},{"text":"[TP]","color":"gold"}," Teleported to ",{"selector":"@p[tag=selected_player]"}," in ",{"text":"spectator mode","color":"gold","bold":true},"!"]

tag @a remove selected_player
tag @s remove running_trigger
scoreboard players reset @s tp
scoreboard players enable @s tp
