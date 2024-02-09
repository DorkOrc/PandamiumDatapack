execute store result score <players_who_can_sleep> variable in overworld if entity @a[x=0,gamemode=!creative,gamemode=!spectator]

execute if score <players_who_can_sleep> variable matches 0..2 run return run gamerule playersSleepingPercentage 100
execute if score <players_who_can_sleep> variable matches 3 run return run gamerule playersSleepingPercentage 66
execute if predicate pandamium:environment/is_raining_and_thundering run return run gamerule playersSleepingPercentage 50
gamerule playersSleepingPercentage 33
