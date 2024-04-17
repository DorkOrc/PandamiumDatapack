execute store result score <amplifier> variable run random value 0..4

execute if score <amplifier> variable matches 0 run return run give @s ominous_bottle
execute if score <amplifier> variable matches 1 run return run give @s ominous_bottle[ominous_bottle_amplifier=1]
execute if score <amplifier> variable matches 2 run return run give @s ominous_bottle[ominous_bottle_amplifier=2]
execute if score <amplifier> variable matches 3 run return run give @s ominous_bottle[ominous_bottle_amplifier=3]
execute if score <amplifier> variable matches 4 run return run give @s ominous_bottle[ominous_bottle_amplifier=4]

return 0
