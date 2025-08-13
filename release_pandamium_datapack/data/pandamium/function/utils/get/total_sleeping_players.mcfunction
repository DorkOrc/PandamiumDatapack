# Outputs:
# - score <total_sleeping_players> variable

scoreboard players set <total_sleeping_players> variable 0
# if the player's hitbox height is less than 0.3, they must be sleeping
execute in overworld as @a[x=0] at @s positioned ~ ~0.3 ~ unless entity @s[dx=0] run scoreboard players add <total_sleeping_players> variable 1
