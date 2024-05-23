scoreboard players operation <ticks> variable = @s gift_cooldown
function pandamium:utils/get/time_from_ticks_without_days

execute if score @s gift_cooldown >= #ticks_per_minute constant run tellraw @s [{"text":"[Gift]","color":"dark_red"},[{"text":" You cannot use this trigger for ","color":"red"},{"nbt":"time[2]","storage":"pandamium:temp","bold":true}," minutes!"]]
execute unless score @s gift_cooldown >= #ticks_per_minute constant run tellraw @s [{"text":"[Gift]","color":"dark_red"},[{"text":" You cannot use this trigger for ","color":"red"},{"nbt":"time[1]","storage":"pandamium:temp","bold":true}," seconds!"]]
