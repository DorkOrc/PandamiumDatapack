
scoreboard players set <temp_1> variable 3
execute store result score <temp_2> variable if entity @a[nbt={Dimension:"minecraft:overworld"}]
scoreboard players set <sleeping_players> variable 0
execute as @a[nbt={Dimension:"minecraft:overworld"}] if data entity @s SleepingX run scoreboard players add <sleeping_players> variable 1
scoreboard players operation <required_sleeping> variable = <temp_2> variable
scoreboard players operation <required_sleeping> variable /= <temp_1> variable
execute unless score <required_sleeping> variable matches 1.. run scoreboard players set <required_sleeping> variable 1

execute unless score <check_sleeping_players> variable = <sleeping_players> variable if score <sleeping_players> variable matches 1.. if score <temp_2> variable matches 2.. run title @a actionbar [{"text":"","color":"aqua","bold":true},{"score":{"name":"<sleeping_players>","objective":"variable"}},"/",{"score":{"name":"<required_sleeping>","objective":"variable"}}," players are sleeping..."]
execute unless score <check_sleeping_players> variable = <sleeping_players> variable if score <sleeping_players> variable matches 0 if score <sleeping_time> variable matches 1.. if score <temp_2> variable matches 2.. run title @a actionbar [{"text":"0/","color":"aqua","bold":true},{"score":{"name":"<required_sleeping>","objective":"variable"}}," players are sleeping..."]

execute if score <sleeping_players> variable >= <required_sleeping> variable if score <temp_2> variable matches 2.. run scoreboard players add <sleeping_time> variable 5
execute unless score <sleeping_players> variable >= <required_sleeping> variable run scoreboard players reset <sleeping_time> variable
execute if score <sleeping_time> variable matches 100.. run function pandamium:misc/skip_night
execute if score <sleeping_time> variable matches 100.. run title @a actionbar {"text":"The night was skipped!","color":"aqua","bold":true}
execute if score <sleeping_time> variable matches 100.. run scoreboard players reset <sleeping_time> variable

scoreboard players operation <check_sleeping_players> variable = <sleeping_players> variable
