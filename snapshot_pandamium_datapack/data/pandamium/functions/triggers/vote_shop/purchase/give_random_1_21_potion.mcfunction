execute store result score <type> variable run random value 0..3

execute if score <type> variable matches 0 run return run give @s potion[potion_contents=wind_charged]
execute if score <type> variable matches 1 run return run give @s potion[potion_contents=weaving]
execute if score <type> variable matches 2 run return run give @s potion[potion_contents=oozing]
execute if score <type> variable matches 3 run return run give @s potion[potion_contents=infested]

return 0
