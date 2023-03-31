scoreboard players operation <afk_time> variable = @s afk.time
scoreboard players set @s afk.time -6000
execute if score <afk_time> variable matches 1.. run function pandamium:misc/ranks/update_team
