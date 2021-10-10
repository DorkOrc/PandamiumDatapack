scoreboard players operation <in_dimension> variable = @s in_dimension
execute if score <in_dimension> variable matches -1 in overworld run function pandamium:misc/teleport/main
execute unless score <in_dimension> variable matches -1 in the_nether run function pandamium:misc/teleport/main

execute at @s in the_nether run tp @a[y=-64,dy=63] ~ 0 ~
execute at @s in the_nether run tp @a[y=256,dy=64] ~ 256 ~
