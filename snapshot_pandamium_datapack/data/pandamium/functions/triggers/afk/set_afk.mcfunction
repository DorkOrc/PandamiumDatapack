scoreboard players set @s idle.time 1073741824
function pandamium:player/ranks/update_team
tellraw @s [{"text":"[AFK]","color":"dark_green"},[{"text":" You are now considered ","color":"green"},{"text":"AFK","color":"aqua"},"!"]]
