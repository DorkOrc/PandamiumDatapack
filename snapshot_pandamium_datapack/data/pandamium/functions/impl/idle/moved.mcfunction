scoreboard players operation <idle_time> variable = @s idle.time
scoreboard players set @s idle.time -6000
execute if score <idle_time> variable matches 1.. run function pandamium:player/ranks/update_team
execute if score <idle_time> variable matches 1073741824.. run tellraw @s [{"text":"[AFK]","color":"dark_gray"},{"text":" You are no longer considered AFK.","color":"gray"}]
