execute store result score <mob_count> variable run execute if entity @e[type=!#pandamium:mob_limit_excluded]
execute if score <mob_count> variable < <mob_limit> variable run gamerule doMobSpawning true
execute unless score <mob_count> variable < <mob_limit> variable run gamerule doMobSpawning false
