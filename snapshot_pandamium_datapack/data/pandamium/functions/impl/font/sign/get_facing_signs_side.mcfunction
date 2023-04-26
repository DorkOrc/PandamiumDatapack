execute if entity @s[y_rotation=-90..90] if block ~ ~ ~ #wall_signs[facing=south] run scoreboard players set <looking_at_front> variable 0
execute if entity @s[y_rotation=0..180] if block ~ ~ ~ #wall_signs[facing=west] run scoreboard players set <looking_at_front> variable 0
execute if entity @s[y_rotation=90..-90] if block ~ ~ ~ #wall_signs[facing=north] run scoreboard players set <looking_at_front> variable 0
execute if entity @s[y_rotation=180..0] if block ~ ~ ~ #wall_signs[facing=east] run scoreboard players set <looking_at_front> variable 0
