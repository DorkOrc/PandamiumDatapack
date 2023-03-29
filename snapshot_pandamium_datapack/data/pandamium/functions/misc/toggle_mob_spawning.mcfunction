execute store result score <mob_count> global if entity @e[type=!#pandamium:mob_limit_excluded]
execute if score <mob_count> global < <mob_limit> global unless score <disable_force_mob_spawning> global matches 1 run gamerule doMobSpawning true
execute unless score <mob_count> global < <mob_limit> global run gamerule doMobSpawning false
