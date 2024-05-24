# spawn chance: There is a (x-72000)/x chance of spawning a group of phantoms where x is the time_since_rest statistic (using a scoreboard here)
scoreboard players operation <chance> variable = @s time_since_rest
scoreboard players remove <chance> variable 72000
scoreboard players operation <chance> variable *= #1000 constant
scoreboard players operation <chance> variable /= @s time_since_rest
execute store result score <rng> variable run random value 0..1000
execute unless score <rng> variable <= <chance> variable run return 0

# spawn
execute store result score <phantoms> variable run random value 1..4
execute if score <phantoms> variable matches 1.. run function pandamium:impl/phantoms/spawn_phantom/main
execute if score <phantoms> variable matches 2.. run function pandamium:impl/phantoms/spawn_phantom/main
execute if score <phantoms> variable matches 3.. run function pandamium:impl/phantoms/spawn_phantom/main
execute if score <phantoms> variable matches 4.. run function pandamium:impl/phantoms/spawn_phantom/main
