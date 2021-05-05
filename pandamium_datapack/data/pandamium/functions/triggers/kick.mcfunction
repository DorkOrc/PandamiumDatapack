tag @s add running_trigger

execute if score @s kick matches 1 run function pandamium:misc/print_nearest_non_staff_player

execute if score @s kick matches 2.. as @a if score @s id = @p[tag=running_trigger] kick run tag @s add selected_player
execute store success score <player_exists> variable if entity @p[tag=selected_player]

execute if score @s kick matches 2.. if score <player_exists> variable matches 0 run tellraw @s [{"text":"[Kick]","color":"dark_red"},{"text":" Could not find that player!","color":"red"}]

execute if score @s kick matches 2.. if score <player_exists> variable matches 1 unless score @s hide_punishments matches 1 run tellraw @a [{"text":"[Info]","color":"dark_aqua"}," ",{"selector":"@p[tag=selected_player]","color":"aqua"}," was kicked by ",{"selector":"@s","color":"aqua"},"!"]
execute if score @s kick matches 2.. if score <player_exists> variable matches 1 if score @s hide_punishments matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Info]","color":"dark_gray"}," ",{"selector":"@p[tag=selected_player]"}," was kicked by ",{"selector":"@s"},"!"]
execute if score @s kick matches 2.. if score <player_exists> variable matches 1 as @p[tag=selected_player] run function pandamium:misc/get_kicked

tag @a remove selected_player
tag @s remove running_trigger
scoreboard players reset @s kick
scoreboard players enable @s kick
