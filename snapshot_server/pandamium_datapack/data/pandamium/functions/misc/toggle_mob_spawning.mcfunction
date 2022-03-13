execute store result score <mob_count> variable if entity @e[type=!#pandamium:mob_limit_excluded]
execute if score <mob_count> variable < <mob_limit> global run gamerule doMobSpawning true
execute unless score <mob_count> variable < <mob_limit> global run gamerule doMobSpawning false
