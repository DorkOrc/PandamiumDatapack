execute if predicate pandamium:is_thundering run gamerule playersSleepingPercentage 50
execute unless predicate pandamium:is_thundering run gamerule playersSleepingPercentage 33

execute if score <player_count> variable matches 0..2 run gamerule playersSleepingPercentage 100
execute if score <player_count> variable matches 3 run gamerule playersSleepingPercentage 66
