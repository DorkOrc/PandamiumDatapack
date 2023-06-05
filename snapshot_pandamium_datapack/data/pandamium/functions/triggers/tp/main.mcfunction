tag @s add source

execute store success score <do_spectate> variable if score @s tp matches -1073741823..-1
execute if score @s tp matches -1073741823..-1 run scoreboard players operation @s tp *= #-1 constant

scoreboard players set <returned> variable 0
execute if score @s tp matches 1 store success score <returned> variable run function pandamium:triggers/tp/print_menu/main

# select player from session id
execute if score <returned> variable matches 0 if score @s tp matches -1073741884..-1073741825 run function pandamium:triggers/tp/select_player_from_session_id

# Run
execute if score <returned> variable matches 0 run scoreboard players set <target_exists> variable 0
execute if score <returned> variable matches 0 run scoreboard players operation <target_id> variable = @s tp
execute if score <returned> variable matches 0 as @a if score @s id = <target_id> variable store success score <target_exists> variable run tag @s add target
execute if score <returned> variable matches 0 if score <target_exists> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[TP]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"tp"}},"!"]]

execute if score <returned> variable matches 0 run gamemode spectator
execute if score <returned> variable matches 0 at @a[tag=target,limit=1] run function pandamium:utils/teleport/here
execute if score <returned> variable matches 0 if score <do_spectate> variable matches 1 run spectate @a[tag=target,limit=1]
execute if score <returned> variable matches 0 run tellraw @s [{"text":"","color":"yellow"},{"text":"[TP]","color":"gold"}," Teleported to ",{"selector":"@a[tag=target,limit=1]"}," in spectator mode!"]

tag @a remove target
tag @s remove source
scoreboard players reset @s tp
scoreboard players enable @s tp
