tag @s add running_trigger
scoreboard players set <returned> variable 0

execute if score <returned> variable matches 0 store success score <returned> variable if score @s playtime matches ..-2 run tellraw @s [{"text":"[Playtime]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

# Toggle [Show Playtime Days]
execute if score <returned> variable matches 0 store success score <returned> variable if score @s playtime matches -1 unless score @s playtime_ticks >= <ticks_per_day> variable run tellraw @s [{"text":"[Playtime]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute if score <returned> variable matches 0 if score @s playtime matches -1 store success score @s show_playtime_days unless score @s show_playtime_days matches 1
execute if score <returned> variable matches 0 if score @s playtime matches -1 run scoreboard players set @s playtime 1

# Print menu
execute if score <returned> variable matches 0 unless score @s staff_perms matches 1.. run scoreboard players set @s playtime 1

execute if score <returned> variable matches 0 if score @s playtime matches 1 if score @s staff_perms matches 1.. run function pandamium:misc/print_nearest_non_staff_player
execute if score <returned> variable matches 0 store success score <returned> variable if score @s playtime matches 1 run function pandamium:misc/print_playtime

execute if score <returned> variable matches 0 run scoreboard players set <player_exists> variable 0
execute if score <returned> variable matches 0 as @a if score @s id = @p[tag=running_trigger] playtime store success score <player_exists> variable run function pandamium:misc/print_playtime
execute if score <returned> variable matches 0 store success score <returned> variable if score <player_exists> variable matches 0 run tellraw @s [{"text":"[Playtime]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"playtime"}},"!"]]

tag @a remove selected_player
tag @s remove running_trigger
scoreboard players reset @s playtime
scoreboard players enable @s playtime
