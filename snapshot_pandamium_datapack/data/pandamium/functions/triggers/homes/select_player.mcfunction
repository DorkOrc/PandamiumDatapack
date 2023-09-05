execute unless score @s staff_perms matches 1.. run tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute unless score @s staff_perms matches 1.. run return 0

scoreboard players reset @s selected_player

scoreboard players operation <id> variable = @s homes
execute store success score <target_exists> variable if entity @a[predicate=pandamium:matches_id,limit=1]
execute if score <target_exists> variable matches 0 run tellraw @s [{"text":"[Homes]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"homes"}},"!"]]
execute if score <target_exists> variable matches 0 run return 0

scoreboard players operation @s selected_player = @s homes

execute if score @s staff_perms matches 1 as @a[predicate=pandamium:matches_id,limit=1] run function pandamium:triggers/homes/print_menu/helper/main
execute if score @s staff_perms matches 2.. as @a[predicate=pandamium:matches_id,limit=1] run function pandamium:triggers/homes/print_menu/moderator/main
