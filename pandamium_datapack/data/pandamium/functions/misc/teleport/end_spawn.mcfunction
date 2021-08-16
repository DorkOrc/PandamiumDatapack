spectate
execute if score @s gameplay_perms matches 6 run execute in the_end run tp @s 100.5 49.0 0.5 90 0
execute unless score @s gameplay_perms matches 6 run function pandamium:misc/donator_only_message
xp add @s 0
scoreboard players set @s in_dimension 1
