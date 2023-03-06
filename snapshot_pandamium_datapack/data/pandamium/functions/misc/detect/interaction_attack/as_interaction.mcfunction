scoreboard players set <hit> variable 0
execute on attacker if entity @s[tag=player] run scoreboard players set <hit> variable 1
execute if score <hit> variable matches 1 store result score <attack_timestamp> variable run data get entity @s attack.timestamp
execute if score <hit> variable matches 1 if score <attack_timestamp> variable = <gametime> variable at @s run function pandamium:misc/detect/interaction_attack/run/main
