# store teleport
execute if data storage pandamium:templates teleport.source run function pandamium:impl/teleport/store_teleport/main

# Cancels teleport as cheating if on parkour course.
execute if score @s parkour.checkpoint matches 0.. unless score <parkour.allow_teleport> variable matches 1 run advancement grant @s only pandamium:detect/parkour/cheat teleport
execute if score @s parkour.checkpoint matches 0.. unless score <parkour.allow_teleport> variable matches 1 run return run scoreboard players reset <parkour.allow_teleport> variable
scoreboard players set <parkour.allow_teleport> variable 0

# Prevents spawn effects triggering advancements
effect clear @s[predicate=pandamium:in_spawn]

# Prevents spectators from getting stuck
spectate

# Prevents hackers from tracking the teleport destination
execute at @s run tp ~ 0 ~

# Only needs to run if the player stays in the same dimension and is not a spectator
# Doesn't run if the player just teleports 200 blocks away
tag @s add teleport.anti_tp_exploit
execute positioned ~-200 0 ~-200 unless entity @s[dx=399,dz=399] at @a[tag=teleport.anti_tp_exploit,gamemode=!spectator,x=0,limit=1] run function pandamium:impl/teleport/anti_tp_exploit
tag @s remove teleport.anti_tp_exploit

# Does teleport
tp @s ~ ~ ~ ~ ~

# Resets velocity
tp @s
