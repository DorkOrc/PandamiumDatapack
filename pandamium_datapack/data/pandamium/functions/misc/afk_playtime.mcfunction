# Since XactivateG, Wormcave and Yuaichi insist on exhausting the afk rules to farm playtime, they now get their own
# specific playtime behaviour that will only count if they have moved within the last 15 seconds :D

# XactivateG

execute store result score <afk_x> variable run data get entity XactivateG Pos[0] 100
execute store result score <afk_z> variable run data get entity XactivateG Pos[2] 100

execute unless score <afk_x> variable = <XactivateG_last_x> variable run scoreboard players set <XactivateG_afk_time> variable 0
execute unless score <afk_z> variable = <XactivateG_last_z> variable run scoreboard players set <XactivateG_afk_time> variable 0

execute if entity XactivateG if score <XactivateG_afk_time> variable matches 300.. run scoreboard players remove XactivateG playtime_ticks 5
scoreboard players add <XactivateG_afk_time> variable 5

scoreboard players operation <XactivateG_last_x> variable = <afk_x> variable
scoreboard players operation <XactivateG_last_z> variable = <afk_z> variable

# Wormcave

execute store result score <afk_x> variable run data get entity Wormcave Pos[0] 100
execute store result score <afk_z> variable run data get entity Wormcave Pos[2] 100

execute unless score <afk_x> variable = <Wormcave_last_x> variable run scoreboard players set <Wormcave_afk_time> variable 0
execute unless score <afk_z> variable = <Wormcave_last_z> variable run scoreboard players set <Wormcave_afk_time> variable 0

execute if entity Wormcave if score <Wormcave_afk_time> variable matches 300.. run scoreboard players remove Wormcave playtime_ticks 5
scoreboard players add <Wormcave_afk_time> variable 5

scoreboard players operation <Wormcave_last_x> variable = <afk_x> variable
scoreboard players operation <Wormcave_last_z> variable = <afk_z> variable

# Yuaichi

execute store result score <afk_x> variable run data get entity Yuaichi Pos[0] 100
execute store result score <afk_z> variable run data get entity Yuaichi Pos[2] 100

execute unless score <afk_x> variable = <Yuaichi_last_x> variable run scoreboard players set <Yuaichi_afk_time> variable 0
execute unless score <afk_z> variable = <Yuaichi_last_z> variable run scoreboard players set <Yuaichi_afk_time> variable 0

execute if entity Yuaichi if score <Yuaichi_afk_time> variable matches 300.. run scoreboard players remove Yuaichi playtime_ticks 5
scoreboard players add <Yuaichi_afk_time> variable 5

scoreboard players operation <Yuaichi_last_x> variable = <afk_x> variable
scoreboard players operation <Yuaichi_last_z> variable = <afk_z> variable
