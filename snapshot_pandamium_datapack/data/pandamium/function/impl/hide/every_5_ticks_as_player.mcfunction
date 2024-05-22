effect clear @s
effect give @s invisibility 10 0 true
title @s actionbar {"text":"You are hidden","color":"green"}

execute if entity @s[gamemode=spectator] run return 0
execute if entity @s[name="DorkOrc"] if entity 9c184f3a-39ea-4f23-b7f5-7b23aeac6e17 run return 0
gamemode spectator
gamemode creative
