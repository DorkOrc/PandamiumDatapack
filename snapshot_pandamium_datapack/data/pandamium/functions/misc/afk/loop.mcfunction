execute in pandamium:staff_world positioned 0 0 0 summon marker run function pandamium:misc/afk/as_marker

scoreboard players set @a[gamemode=spectator] afk.time 1

scoreboard players remove @a[scores={afk.time=1..}] playtime_ticks 5
scoreboard players remove @a[scores={afk.time=1..}] monthly_playtime_ticks 5