spectate
execute in the_end run tp @s 100 49 0 90 0
xp add @s 0
scoreboard players set @s in_dimension 1

# Generate end platform
fill 102 51 2 98 49 -2 air
fill 102 48 2 98 48 -2 obsidian
