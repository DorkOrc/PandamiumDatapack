scoreboard players set <hit> variable 0
execute on target if entity @s[tag=player] run scoreboard players set <hit> variable 1
execute if score <hit> variable matches 1 store result score <interaction_timestamp> variable run data get entity @s interaction.timestamp
execute if score <hit> variable matches 1 if score <interaction_timestamp> variable = <gametime> variable at @s run function pandamium:misc/detect/interaction_interact/run/main
