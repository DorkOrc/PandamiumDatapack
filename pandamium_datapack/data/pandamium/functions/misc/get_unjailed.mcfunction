scoreboard players reset @s jailed
scoreboard players reset @s cheater
tellraw @a [{"text":"","color":"light_purple"},{"text":"[Info]","color":"dark_purple"}," ",{"selector":"@s"}," was unjailed by ",{"selector":"@p[tag=running_trigger]"},"!"]
function pandamium:misc/teleport/spawn
