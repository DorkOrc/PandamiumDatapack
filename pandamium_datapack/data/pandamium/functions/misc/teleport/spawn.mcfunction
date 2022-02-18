execute if score @s parkour.checkpoint matches 0.. run function pandamium:misc/parkour/actions/cancel/teleporting
spectate
execute in overworld run tp @s 0 92 0 -180 0
xp add @s 0
scoreboard players set @s in_dimension 0
