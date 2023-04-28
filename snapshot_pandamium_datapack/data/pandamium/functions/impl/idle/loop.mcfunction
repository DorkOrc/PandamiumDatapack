execute in pandamium:staff_world positioned 0 0 0 summon marker run function pandamium:impl/idle/as_marker

scoreboard players remove @a[scores={idle.time=1..}] playtime_ticks 5
scoreboard players remove @a[scores={idle.time=1..}] monthly_playtime_ticks 5

execute as @a[scores={idle.time=1..5}] run function pandamium:player/ranks/update_team
