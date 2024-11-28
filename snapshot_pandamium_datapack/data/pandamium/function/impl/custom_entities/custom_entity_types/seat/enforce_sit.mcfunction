# context: as brain

execute store result score <id> variable run data get entity @s data.user_id
execute on vehicle run ride @a[predicate=pandamium:matches_id,limit=1,distance=..1] mount @s

execute store result score <enforce_sit_time> variable run data get entity @s data.enforce_sit_time
execute store result entity @s data.enforce_sit_time byte 1 run scoreboard players add <enforce_sit_time> variable 1

execute if score <enforce_sit_time> variable matches 10.. on vehicle run tag @s add pandamium.custom_entity.data.enforced_sit

execute if score <enforce_sit_time> variable matches 0..2 on vehicle on passengers run title @s[type=minecraft:player] actionbar "Press any movement key to stand up"
