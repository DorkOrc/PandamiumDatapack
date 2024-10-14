effect clear @s
effect give @s invisibility 10 0 true
effect give @s[scores={spectator_night_vision=1}] night_vision 20 0 true
title @s actionbar {"text":"You are hidden","color":"green"}

execute unless entity @s[predicate=pandamium:on_ground,gamemode=!spectator] run return 0
execute if score @s id matches 532 if entity 9c184f3a-39ea-4f23-b7f5-7b23aeac6e17 run return 0

execute at @s run tp @s ~ ~0.1 ~
gamemode spectator
gamemode creative
