execute if predicate pandamium:environment/is_night in overworld as @a[x=0,scores={time_since_rest=72000..},gamemode=!spectator] unless score @s disable_insomnia matches 1 positioned as @s positioned over motion_blocking positioned as @s[dy=1000000] rotated ~ 0 run function pandamium:impl/phantoms/spawn

schedule function pandamium:impl/phantoms/loop 120s
