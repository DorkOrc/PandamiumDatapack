tag @s add running_trigger

execute if score @s jail matches 1 run function pandamium:misc/print_nearest_non_staff_player

execute if score @s jail matches 2.. as @a if score @s id = @p[tag=running_trigger] jail run tag @s add selected_player
execute store success score <player_exists> variable if entity @p[tag=selected_player]
execute if score @s jail matches 2.. if score <player_exists> variable matches 0 run tellraw @s [{"text":"[Info]","color":"dark_red"},{"text":" Could not find that player!","color":"red"}]

execute store success score <player_is_jailed> variable if score @p[tag=selected_player] jailed matches 1..
execute if score <player_exists> variable matches 1 if score <player_is_jailed> variable matches 1 run tellraw @s [{"text":"[Info]","color":"dark_red"},{"text":" This player is already jailed!","color":"red"}]

execute if score <player_exists> variable matches 1 if score <player_is_jailed> variable matches 0 as @p[tag=selected_player] run function pandamium:misc/get_jailed
execute if score <player_exists> variable matches 1 if score <player_is_jailed> variable matches 0 run scoreboard players operation @p[tag=selected_player] jailed = @s id
execute if score <player_exists> variable matches 1 if score <player_is_jailed> variable matches 0 unless score @s hide_punishments matches 1 run tellraw @a [{"text":"[Info] ","color":"dark_purple"},{"selector":"@p[tag=selected_player]","color":"light_purple"}," was jailed by ",{"selector":"@s","color":"light_purple"},"!"]
execute if score <player_exists> variable matches 1 if score <player_is_jailed> variable matches 0 if score @s hide_punishments matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Info]","color":"dark_gray"}," ",{"selector":"@p[tag=selected_player]"}," was jailed by ",{"selector":"@s"},"!"]
execute if score <player_exists> variable matches 1 if score <player_is_jailed> variable matches 0 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Info]","color":"dark_gray"}," ",[{"selector":"@p[tag=selected_player]"},"'s"]," id is ",{"score":{"objective":"id","name":"@p[tag=selected_player]"},"bold":true},"."]

tag @a remove selected_player
tag @s remove running_trigger
scoreboard players reset @s jail
scoreboard players enable @s jail
