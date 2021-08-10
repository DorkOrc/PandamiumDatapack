# Since these players insist on exhausting the afk rules to farm playtime, they now get their own
# specific playtime behaviour that will only count if they have moved within the last 15 seconds :D

execute store result score <afk_x> temp run data get entity @s Pos[0] 100
execute store result score <afk_z> temp run data get entity @s Pos[2] 100

execute unless score <afk_x> temp = @s afk_last_x run scoreboard players set @s afk_time 0
execute unless score <afk_z> temp = @s afk_last_z run scoreboard players set @s afk_time 0

execute if score @s afk_time matches 300.. run scoreboard players remove @s playtime_ticks 5
execute if score @s afk_time matches 300.. run scoreboard players remove @s monthly_pt_ticks 5
scoreboard players add @s afk_time 5

scoreboard players operation @s afk_last_x = <afk_x> temp
scoreboard players operation @s afk_last_z = <afk_z> temp