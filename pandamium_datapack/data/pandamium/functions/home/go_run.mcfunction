function pandamium:misc/teleport/to_scores/main
gamemode survival @s[gamemode=spectator,predicate=!pandamium:in_spawn,scores={staff_perms=..1}]

tellraw @s [{"text":"","color":"green"},{"text":"[Home]","color":"dark_green"}," Teleported to ",[{"text":"Home ","color":"aqua"},{"score":{"name":"@s","objective":"home"}}],"!"]
