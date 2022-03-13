scoreboard players operation <in_dimension> variable = @s in_dimension
execute if score <in_dimension> variable matches 1 run function pandamium:misc/teleport/spawn
execute unless score <in_dimension> variable matches 1 run function pandamium:misc/teleport/end_platform
