tag @s add source
scoreboard players set <returned> variable 0

execute if score <returned> variable matches 0 if score @s playtime matches ..-2 store success score <returned> variable run tellraw @s [{"text":"[Playtime]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

# Toggle [Show Playtime Days]
execute if score <returned> variable matches 0 if score @s playtime matches -1 unless score @s playtime_ticks >= #ticks_per_day constant store success score <returned> variable run tellraw @s [{"text":"[Playtime]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute if score <returned> variable matches 0 if score @s playtime matches -1 store success score @s show_playtime_days unless score @s show_playtime_days matches 1
execute if score <returned> variable matches 0 if score @s playtime matches -1 run scoreboard players set @s playtime 1

# Print menu
execute if score <returned> variable matches 0 if score @s playtime matches 2.. unless score @s staff_perms matches 1.. run scoreboard players set @s playtime 1

execute if score <returned> variable matches 0 if score @s playtime matches 1 if score @s staff_perms matches 1.. run function pandamium:utils/print_nearest_non_staff_player
execute if score <returned> variable matches 0 if score @s playtime matches 1 store success score <returned> variable run function pandamium:impl/triggers/playtime/print_playtime

execute if score <returned> variable matches 0 run scoreboard players set <target_exists> variable 0
execute if score <returned> variable matches 0 run scoreboard players operation <target_id> variable = @s playtime
execute if score <returned> variable matches 0 as @a if score @s id = <target_id> variable store success score <target_exists> variable run function pandamium:impl/triggers/playtime/print_playtime
execute if score <returned> variable matches 0 if score <target_exists> variable matches 0 store success score <returned> variable run tellraw @s [{"text":"[Playtime]","color":"dark_red"},[{"text":" Could not find a player with ID ","color":"red"},{"score":{"name":"@s","objective":"playtime"}},"!"]]

tag @a remove target
tag @s remove source
scoreboard players reset @s playtime
scoreboard players enable @s playtime
