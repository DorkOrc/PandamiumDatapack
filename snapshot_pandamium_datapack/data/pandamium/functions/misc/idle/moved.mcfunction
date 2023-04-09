scoreboard players operation <idle_time> variable = @s idle.time
scoreboard players set @s idle.time -6000
execute if score <idle_time> variable matches 1.. run function pandamium:misc/ranks/update_team
