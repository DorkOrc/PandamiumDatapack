team leave @s
execute if score @s afk.time matches 1.. unless score @s disable_afk_indicator matches 1 unless entity @s[gamemode=spectator,scores={disable_afk_indicator=2}] run function pandamium:misc/ranks/update_team/afk
execute if entity @s[team=] run function pandamium:misc/ranks/update_team/normal
