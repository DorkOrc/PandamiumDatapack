execute if score @s spawn matches ..-1 if score @s staff_perms matches 1.. run gamemode spectator
execute if score @s spawn matches ..-1 run scoreboard players operation @s spawn *= <-1> variable

execute unless score @s spawn matches 2 run function pandamium:misc/teleport/spawn
execute if score @s spawn matches 2 run function pandamium:misc/teleport/nether_spawn

# Jail Area
execute if score @s spawn matches 3 run tp @s 0 32 68 0 0

# Castle Entrance
execute if score @s spawn matches 4 run tp @s -79 74 0 90 0

execute if score @s spawn matches 5.. run tellraw @s [{"text":"[Spawn]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

scoreboard players reset @s spawn
scoreboard players enable @s spawn
