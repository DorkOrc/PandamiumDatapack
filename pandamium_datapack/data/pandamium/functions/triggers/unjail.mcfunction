execute at @a if score @s unjail = @p id if score @p jailed matches 1.. run function pandamium:misc/get_unjailed

scoreboard players reset @s unjail
scoreboard players enable @s unjail