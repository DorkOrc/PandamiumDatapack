function pandamium:misc/teleport
tellraw @s [{"text":"","color":"green"},{"text":"[Home]","color":"dark_green"}," Teleported to ",[{"text":"Home ","color":"aqua"},{"score":{"name":"@s","objective":"home"}}],"!"]
