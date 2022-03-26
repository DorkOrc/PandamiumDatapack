tag @s add running_trigger
scoreboard players set <returned> variable 0

execute unless score @s staff_perms matches 1.. run scoreboard players set @s homes 1

# Own homes
execute if score @s homes matches 1 if score @s staff_perms matches 1.. run function pandamium:misc/print_nearest_non_staff_player
execute if score <returned> variable matches 0 store success score <returned> variable if score @s homes matches 1 run function pandamium:home/print_menu

# Other players' homes
execute if score <returned> variable matches 0 run scoreboard players set <player_exists> variable 0
execute if score <returned> variable matches 0 as @a if score @s id = @p[tag=running_trigger] homes store success score <player_exists> variable run tag @s add selected_player
execute if score <returned> variable matches 0 store success score <returned> variable if score <player_exists> variable matches 0 run tellraw @s [{"text":"[Homes]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"homes"}},"!"]]

# helper menu
execute if score <returned> variable matches 0 store success score <returned> variable if score @s staff_perms matches 1 as @p[tag=selected_player] run function pandamium:home/print_helper_menu
execute if score <returned> variable matches 0 store success score <returned> variable if score @s staff_perms matches ..1

# moderator menu (and store selected player)
execute if score <returned> variable matches 0 run scoreboard players reset @s selected_player
execute if score <returned> variable matches 0 run scoreboard players operation @s selected_player = @p[tag=selected_player] id
execute if score <returned> variable matches 0 as @p[tag=selected_player] run function pandamium:home/print_moderator_menu

#

tag @a remove selected_player
tag @s remove running_trigger
scoreboard players reset @s homes
scoreboard players enable @s homes
