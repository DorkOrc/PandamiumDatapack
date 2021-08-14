tag @s add running_trigger

execute if score @s ban matches 1 run function pandamium:misc/print_nearest_non_staff_player

execute if score @s ban matches 2.. as @a if score @s id = @p[tag=running_trigger] ban run tag @s add selected_player
execute store success score <player_exists> variable if entity @p[tag=selected_player]

execute store success score <can_ban> variable unless score @p[tag=running_trigger] staff_perms <= @p[tag=selected_player] staff_perms
execute if score <player_exists> variable matches 0 run scoreboard players set <can_ban> variable 0

execute if score @s ban matches 2.. if score <player_exists> variable matches 0 run tellraw @s [{"text":"[Ban]","color":"dark_red"},{"text":" Could not find that player!","color":"red"}]
execute if score @s ban matches 2.. if score <player_exists> variable matches 1 if score <can_ban> variable matches 0 run tellraw @s [{"text":"[Ban]","color":"dark_red"},{"text":" You cannot ban that player!","color":"red"}]

# Do Ban
execute if score @s ban matches 2.. if score <can_ban> variable matches 1 unless score @s staff_alt matches 1 unless score @s hide_punishments matches 1 run tellraw @a [{"text":"[Info] ","color":"red"},{"selector":"@p[tag=selected_player]","color":"dark_red"}," was banned by ",{"selector":"@s","color":"dark_red"},"!"]
execute if score @s ban matches 2.. if score <can_ban> variable matches 1 unless score @s staff_alt matches 1 if score @s hide_punishments matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Info] ","color":"dark_gray"},{"selector":"@p[tag=selected_player]"}," was banned by ",{"selector":"@s"},"!"]
execute if score @s ban matches 2.. if score <can_ban> variable matches 1 if score @s staff_alt matches 1 unless score @s hide_punishments matches 1 run tellraw @a [{"text":"[Info] ","color":"red"},{"selector":"@p[tag=selected_player]","color":"dark_red"}," was banned by a staff member!"]
execute if score @s ban matches 2.. if score <can_ban> variable matches 1 if score @s staff_alt matches 1 if score @s hide_punishments matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"","color":"gray"},{"text":"[Info] ","color":"dark_gray"},{"selector":"@p[tag=selected_player]"}," was banned by a staff member!"]

execute if score @s ban matches 2.. if score <can_ban> variable matches 1 as @p[tag=selected_player] run function pandamium:misc/get_banned

tag @a remove selected_player
tag @s remove running_trigger
scoreboard players reset @s ban
scoreboard players enable @s ban
