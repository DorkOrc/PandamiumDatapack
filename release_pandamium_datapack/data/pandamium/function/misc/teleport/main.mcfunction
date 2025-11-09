# Instead of "tp @s ~ ~ ~ ~ ~",
# use "function pandamium:misc/teleport/main"

scoreboard players set <can_teleport> variable 0
execute summon marker run function pandamium:misc/teleport/kill_marker

execute if score <can_teleport> variable matches 0 run tellraw @s {"text":"Invalid coordinates!","color":"red"}
execute if score <can_teleport> variable matches 1 run spectate
execute if score <can_teleport> variable matches 1 run function pandamium:misc/teleport/teleport
