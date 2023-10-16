scoreboard players operation <ticks> variable = @a[tag=player_info.target,limit=1] playtime_ticks
function pandamium:utils/get/time_from_ticks_without_days
data modify storage pandamium:temp Times.playtime set from storage pandamium:temp time

scoreboard players operation <ticks> variable = @a[tag=player_info.target,limit=1] online_ticks
function pandamium:utils/get/time_from_ticks_without_days
data modify storage pandamium:temp Times.online set from storage pandamium:temp time

tellraw @s [{"text":"Total Playtime: ","color":"gold"},[{"text":"","color":"gold"},{"nbt":"Times.playtime[3]","storage":"pandamium:temp","color":"yellow","bold":true}," hour",{"text":"s","color":"gray"}]," and ",[{"text":"","color":"gold"},{"nbt":"Times.playtime[2]","storage":"pandamium:temp","color":"yellow","bold":true}," min",{"text":"s","color":"gray"}]]
tellraw @s [{"text":"Session Length: ","color":"gold"},[{"text":"","color":"gold"},{"nbt":"Times.online[3]","storage":"pandamium:temp","color":"yellow","bold":true}," hour",{"text":"s","color":"gray"}]," and ",[{"text":"","color":"gold"},{"nbt":"Times.online[2]","storage":"pandamium:temp","color":"yellow","bold":true}," min",{"text":"s","color":"gray"}]]
