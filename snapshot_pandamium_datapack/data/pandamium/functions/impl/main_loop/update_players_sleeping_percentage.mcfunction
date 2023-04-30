execute if predicate pandamium:environment/is_raining_and_thundering run gamerule playersSleepingPercentage 50
execute unless predicate pandamium:environment/is_raining_and_thundering run gamerule playersSleepingPercentage 33

execute in overworld store result score <players_who_can_sleep> variable if entity @a[x=0,gamemode=survival]
execute if score <players_who_can_sleep> variable matches 0..3 run gamerule playersSleepingPercentage 66
