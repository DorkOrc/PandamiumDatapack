scoreboard players set <sleeping_divisor> variable 3
execute store result score <overworld_player_count> variable if entity @a[x=0]
scoreboard players set <sleeping_players> variable 0
execute as @a[x=0,scores={time_since_rest=0}] at @s positioned ~ ~.3 ~ unless entity @s[dx=0] run scoreboard players add <sleeping_players> variable 1
scoreboard players operation <required_sleeping> variable = <overworld_player_count> variable
scoreboard players operation <required_sleeping> variable /= <sleeping_divisor> variable
execute unless score <required_sleeping> variable matches 1.. run scoreboard players set <required_sleeping> variable 1

execute unless score <check_sleeping_players> variable = <sleeping_players> variable if score <sleeping_players> variable matches 1.. if score <overworld_player_count> variable matches 2.. run title @a actionbar [{"text":"","color":"aqua"},{"score":{"name":"<sleeping_players>","objective":"variable"}},"/",{"score":{"name":"<required_sleeping>","objective":"variable"}}," players are sleeping..."]
execute unless score <check_sleeping_players> variable = <sleeping_players> variable if score <sleeping_players> variable matches 0 if score <sleeping_time> variable matches 1.. if score <temp_2> variable matches 2.. run title @a actionbar [{"text":"0/","color":"aqua"},{"score":{"name":"<required_sleeping>","objective":"variable"}}," players are sleeping..."]

execute if score <sleeping_players> variable >= <required_sleeping> variable if score <overworld_player_count> variable matches 2.. run scoreboard players add <sleeping_time> variable 5
execute unless score <sleeping_players> variable >= <required_sleeping> variable run scoreboard players reset <sleeping_time> variable
execute if score <sleeping_time> variable matches 100.. run function pandamium:misc/skip_night
execute if score <sleeping_time> variable matches 100.. run title @a actionbar {"text":"The night was skipped!","color":"aqua"}
execute if score <sleeping_time> variable matches 100.. run scoreboard players reset <sleeping_time> variable

scoreboard players operation <check_sleeping_players> variable = <sleeping_players> variable
