execute if score @s playtime matches ..-2 run return run tellraw @s [{"text":"[Playtime]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

# Toggle [Show Playtime Days]
execute if score @s playtime matches -1 unless score @s playtime_ticks >= #ticks_per_day constant run return run tellraw @s [{"text":"[Playtime]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute if score @s playtime matches -1 store success score @s show_playtime_days unless score @s show_playtime_days matches 1
execute if score @s playtime matches -1 run scoreboard players set @s playtime 1

# Print menu
execute if score @s playtime matches 2.. unless score @s staff_perms matches 1.. run scoreboard players set @s playtime 1

execute if score @s playtime matches 1 if score @s staff_perms matches 1.. run function pandamium:utils/print_nearest_non_staff_player
execute if score @s playtime matches 1 run return run function pandamium:triggers/playtime/print_menu

#
scoreboard players set <target_exists> variable 0
scoreboard players operation <target_id> variable = @s playtime
execute as @a if score @s id = <target_id> variable run return run function pandamium:triggers/playtime/print_menu
execute if score <target_exists> variable matches 0 run return run tellraw @s [{"text":"[Playtime]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"playtime"}},"!"]]
