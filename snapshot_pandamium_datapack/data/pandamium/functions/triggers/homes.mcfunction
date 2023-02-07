scoreboard players set <returned> variable 0

execute unless score @s staff_perms matches 1.. run scoreboard players set @s homes 1

# Own homes
tag @s add print
execute if score @s homes matches 1 store success score <returned> variable run function pandamium:home/print_menu
execute if score @s homes matches 1 if score @s staff_perms matches 1.. run function pandamium:misc/print_nearest_non_staff_player

# Other players' homes
execute if score <returned> variable matches 0 run scoreboard players reset @s selected_player
execute if score <returned> variable matches 0 run scoreboard players set <target_exists> variable 0
execute if score <returned> variable matches 0 run scoreboard players operation <target_id> variable = @s homes
execute if score <returned> variable matches 0 as @a if score @s id = <target_id> variable store success score <target_exists> variable run tag @s add target
execute if score <returned> variable matches 0 if score <target_exists> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Homes]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"homes"}},"!"]]
execute if score <returned> variable matches 0 run scoreboard players operation @s selected_player = <target_id> variable

execute if score <returned> variable matches 0 if score @s staff_perms matches 1 as @a[tag=target,limit=1] store success score <returned> variable run function pandamium:home/print_helper_menu
execute if score <returned> variable matches 0 if score @s staff_perms matches 2.. as @a[tag=target,limit=1] store success score <returned> variable run function pandamium:home/print_moderator_menu
tag @s remove print

execute if score <returned> variable matches 0 run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" Something went wrong!","color":"red"}]

#

tag @a remove target
scoreboard players reset @s homes
scoreboard players enable @s homes
