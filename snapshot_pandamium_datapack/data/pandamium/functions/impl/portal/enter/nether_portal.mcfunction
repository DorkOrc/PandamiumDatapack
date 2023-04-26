execute store success score <in_the_nether> variable if predicate pandamium:in_dimension/the_end
execute if score <in_the_nether> variable matches 1 in overworld run function pandamium:misc/teleport/here
execute if score <in_the_nether> variable matches 0 in the_nether run function pandamium:misc/teleport/here

execute at @s in the_nether run tp @a[y=-64,dy=63] ~ 0 ~
execute at @s in the_nether run tp @a[y=256,dy=64] ~ 256 ~
