scoreboard players set <thrower_matches> variable 0
execute on origin if entity @s[tag=thrower] run scoreboard players set <thrower_matches> variable 1
execute if score <thrower_matches> variable matches 1 run kill
