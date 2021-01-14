# Since XactivateG and WormCave insist on exhausting the afk rules to farm playtime, they now get their own
# specific playtime behaviour that will only count if they haven't moved within the last 15 seconds :D

# XactivateG

execute store result score <afk_x> variable run data get entity XactivateG Pos[0] 100
execute store result score <afk_z> variable run data get entity XactivateG Pos[2] 100

execute unless score <afk_x> variable = <XactivateG_last_x> variable run scoreboard players set <XactivateG_afk_time> variable 0
execute unless score <afk_z> variable = <XactivateG_last_z> variable run scoreboard players set <XactivateG_afk_time> variable 0

execute if score <XactivateG_afk_time> variable matches 300.. run scoreboard players remove XactivateG playtime_ticks 5
scoreboard players add <XactivateG_afk_time> variable 5

scoreboard players operation <XactivateG_last_x> variable = <afk_x> variable
scoreboard players operation <XactivateG_last_z> variable = <afk_z> variable

# WormCave

execute store result score <afk_x> variable run data get entity WormCave Pos[0] 100
execute store result score <afk_z> variable run data get entity WormCave Pos[2] 100

execute unless score <afk_x> variable = <WormCave_last_x> variable run scoreboard players set <WormCave_afk_time> variable 0
execute unless score <afk_z> variable = <WormCave_last_z> variable run scoreboard players set <WormCave_afk_time> variable 0

execute if score <WormCave_afk_time> variable matches 300.. run scoreboard players remove WormCave playtime_ticks 5
scoreboard players add <WormCave_afk_time> variable 5

scoreboard players operation <WormCave_last_x> variable = <afk_x> variable
scoreboard players operation <WormCave_last_z> variable = <afk_z> variable
