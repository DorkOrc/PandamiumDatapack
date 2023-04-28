team leave @s
execute if score @s idle.time matches 1..1073741823 unless score @s disable_idle_indicator matches 1 unless entity @s[gamemode=spectator,scores={disable_idle_indicator=2}] run function pandamium:player/ranks/update_team/idle
execute if score @s idle.time matches 1073741824.. run function pandamium:player/ranks/update_team/afk
execute if entity @s[team=] run function pandamium:player/ranks/update_team/normal
