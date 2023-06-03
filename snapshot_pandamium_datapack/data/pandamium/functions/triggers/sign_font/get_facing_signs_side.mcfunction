execute if entity @s[y_rotation=-90..90] if block ~ ~ ~ #wall_signs[facing=south] run return 0
execute if entity @s[y_rotation=0..180] if block ~ ~ ~ #wall_signs[facing=west] run return 0
execute if entity @s[y_rotation=90..-90] if block ~ ~ ~ #wall_signs[facing=north] run return 0
execute if entity @s[y_rotation=180..0] if block ~ ~ ~ #wall_signs[facing=east] run return 0
return 1