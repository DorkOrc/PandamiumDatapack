function pandamium:misc/teleport/to_scores/main
execute if entity @s[gamemode=spectator] unless entity @s[x=-512,z=-512,dx=1024,dz=1024] unless score @s staff_perms matches 2.. run gamemode survival
tellraw @s [{"text":"","color":"green"},{"text":"[Home]","color":"dark_green"}," Teleported to ",[{"text":"Home ","color":"aqua"},{"score":{"name":"@s","objective":"home"}}],"!"]
