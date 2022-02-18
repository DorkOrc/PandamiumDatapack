execute if score @s parkour.checkpoint matches 0.. run function pandamium:misc/parkour/actions/cancel/teleporting
spectate
execute in the_nether run tp @s 0 67 -2 180 0
xp add @s 0
scoreboard players set @s in_dimension -1
