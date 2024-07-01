# Tells `@a[tag=source,limit=1]` the playtime, monthly playtime and online playtime for `@s`

scoreboard players operation <show_playtime_days> variable = @a[tag=source,limit=1] show_playtime_days
scoreboard players operation <playtime_value> variable = @a[tag=source,limit=1] playtime

#

scoreboard players operation <ticks> variable = @s playtime_ticks
execute unless score <show_playtime_days> variable matches 1 run function pandamium:utils/get/time_from_ticks_without_days
execute if score <show_playtime_days> variable matches 1 run function pandamium:utils/get/time_from_ticks_with_days
data modify storage pandamium:temp Times.playtime set from storage pandamium:temp time

scoreboard players operation <ticks> variable = @s monthly_playtime_ticks
execute unless score <show_playtime_days> variable matches 1 run function pandamium:utils/get/time_from_ticks_without_days
execute if score <show_playtime_days> variable matches 1 run function pandamium:utils/get/time_from_ticks_with_days
data modify storage pandamium:temp Times.monthly set from storage pandamium:temp time

scoreboard players operation <ticks> variable = @s yearly_playtime_ticks
execute unless score <show_playtime_days> variable matches 1 run function pandamium:utils/get/time_from_ticks_without_days
execute if score <show_playtime_days> variable matches 1 run function pandamium:utils/get/time_from_ticks_with_days
data modify storage pandamium:temp Times.yearly set from storage pandamium:temp time

scoreboard players operation <ticks> variable = @s online_ticks
function pandamium:utils/get/time_from_ticks_without_days
data modify storage pandamium:temp Times.online set from storage pandamium:temp time

#

execute unless score <show_playtime_days> variable matches 1 if score <playtime_value> variable matches 1 run tellraw @a[tag=source,limit=1] [{"text":"======== ","color":"aqua"},{"text":"Playtime","bold":true}," ========",[{"text":"\nTotal Playtime: ","color":"green"},[{"text":"","color":"green"},{"nbt":"Times.playtime[3]","storage":"pandamium:temp","color":"aqua","bold":true}," hour",{"text":"(s)","color":"gray"}],", ",[{"text":"","color":"green"},{"nbt":"Times.playtime[2]","storage":"pandamium:temp","color":"aqua","bold":true}," min",{"text":"(s)","color":"gray"}]," and ",[{"text":"","color":"green"},{"nbt":"Times.playtime[1]","storage":"pandamium:temp","color":"aqua","bold":true}," sec",{"text":"(s)","color":"gray"}]],[{"text":"\nPlaytime This Month: ","color":"green"},[{"text":"","color":"green"},{"nbt":"Times.monthly[3]","storage":"pandamium:temp","color":"aqua","bold":true}," hour",{"text":"(s)","color":"gray"}],", ",[{"text":"","color":"green"},{"nbt":"Times.monthly[2]","storage":"pandamium:temp","color":"aqua","bold":true}," min",{"text":"(s)","color":"gray"}]," and ",[{"text":"","color":"green"},{"nbt":"Times.monthly[1]","storage":"pandamium:temp","color":"aqua","bold":true}," sec",{"text":"(s)","color":"gray"}]],[{"text":"\nPlaytime This Year: ","color":"green"},[{"text":"","color":"green"},{"nbt":"Times.yearly[3]","storage":"pandamium:temp","color":"aqua","bold":true}," hour",{"text":"(s)","color":"gray"}],", ",[{"text":"","color":"green"},{"nbt":"Times.yearly[2]","storage":"pandamium:temp","color":"aqua","bold":true}," min",{"text":"(s)","color":"gray"}]," and ",[{"text":"","color":"green"},{"nbt":"Times.yearly[1]","storage":"pandamium:temp","color":"aqua","bold":true}," sec",{"text":"(s)","color":"gray"}]],[{"text":"\nSession Length: ","color":"green"},[{"text":"","color":"green"},{"nbt":"Times.online[3]","storage":"pandamium:temp","color":"aqua","bold":true}," hour",{"text":"(s)","color":"gray"}],", ",[{"text":"","color":"green"},{"nbt":"Times.online[2]","storage":"pandamium:temp","color":"aqua","bold":true}," min",{"text":"(s)","color":"gray"}]," and ",[{"text":"","color":"green"},{"nbt":"Times.online[1]","storage":"pandamium:temp","color":"aqua","bold":true}," sec",{"text":"(s)","color":"gray"}]]]
execute unless score <show_playtime_days> variable matches 1 if score <playtime_value> variable matches 2.. run tellraw @a[tag=source,limit=1] [{"text":"======== ","color":"yellow"},{"text":"Playtime","bold":true}," ========",{"text":"\nPlayer: ","bold":true},{"selector":"@s"},[{"text":"\nTotal Playtime: ","color":"gold"},[{"text":"","color":"gold"},{"nbt":"Times.playtime[3]","storage":"pandamium:temp","color":"yellow","bold":true}," hour",{"text":"(s)","color":"gray"}],", ",[{"text":"","color":"gold"},{"nbt":"Times.playtime[2]","storage":"pandamium:temp","color":"yellow","bold":true}," min",{"text":"(s)","color":"gray"}]," and ",[{"text":"","color":"gold"},{"nbt":"Times.playtime[1]","storage":"pandamium:temp","color":"yellow","bold":true}," sec",{"text":"(s)","color":"gray"}]],[{"text":"\nPlaytime This Month: ","color":"gold"},[{"text":"","color":"gold"},{"nbt":"Times.monthly[3]","storage":"pandamium:temp","color":"yellow","bold":true}," hour",{"text":"(s)","color":"gray"}],", ",[{"text":"","color":"gold"},{"nbt":"Times.monthly[2]","storage":"pandamium:temp","color":"yellow","bold":true}," min",{"text":"(s)","color":"gray"}]," and ",[{"text":"","color":"gold"},{"nbt":"Times.monthly[1]","storage":"pandamium:temp","color":"yellow","bold":true}," sec",{"text":"(s)","color":"gray"}]],[{"text":"\nPlaytime This Year: ","color":"gold"},[{"text":"","color":"gold"},{"nbt":"Times.yearly[3]","storage":"pandamium:temp","color":"yellow","bold":true}," hour",{"text":"(s)","color":"gray"}],", ",[{"text":"","color":"gold"},{"nbt":"Times.yearly[2]","storage":"pandamium:temp","color":"yellow","bold":true}," min",{"text":"(s)","color":"gray"}]," and ",[{"text":"","color":"gold"},{"nbt":"Times.yearly[1]","storage":"pandamium:temp","color":"yellow","bold":true}," sec",{"text":"(s)","color":"gray"}]],[{"text":"\nSession Length: ","color":"gold"},[{"text":"","color":"gold"},{"nbt":"Times.online[3]","storage":"pandamium:temp","color":"yellow","bold":true}," hour",{"text":"(s)","color":"gray"}],", ",[{"text":"","color":"gold"},{"nbt":"Times.online[2]","storage":"pandamium:temp","color":"yellow","bold":true}," min",{"text":"(s)","color":"gray"}]," and ",[{"text":"","color":"gold"},{"nbt":"Times.online[1]","storage":"pandamium:temp","color":"yellow","bold":true}," sec",{"text":"(s)","color":"gray"}]]]
execute unless score <show_playtime_days> variable matches 1 if score @s playtime_ticks >= #ticks_per_day constant run tellraw @a[tag=source,limit=1] [{"text":"\nShow Days: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Show Days","bold":true},{"text":"\n• Off (Default)\n• On","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger playtime set -1"}},{"text":"Off","color":"yellow","bold":true}]

execute if score <show_playtime_days> variable matches 1 if score <playtime_value> variable matches 1 run tellraw @a[tag=source,limit=1] [{"text":"======== ","color":"aqua"},{"text":"Playtime","bold":true}," ========",[{"text":"\nTotal Playtime: ","color":"green"},[{"text":"","color":"green"},{"nbt":"Times.playtime[4]","storage":"pandamium:temp","color":"aqua","bold":true}," day",{"text":"(s)","color":"gray"}],", ",[{"text":"","color":"green"},{"nbt":"Times.playtime[3]","storage":"pandamium:temp","color":"aqua","bold":true}," hour",{"text":"(s)","color":"gray"}],", ",[{"text":"","color":"green"},{"nbt":"Times.playtime[2]","storage":"pandamium:temp","color":"aqua","bold":true}," min",{"text":"(s)","color":"gray"}]," and ",[{"text":"","color":"green"},{"nbt":"Times.playtime[1]","storage":"pandamium:temp","color":"aqua","bold":true}," sec",{"text":"(s)","color":"gray"}]],[{"text":"\nPlaytime This Month: ","color":"green"},[{"text":"","color":"green"},{"nbt":"Times.monthly[4]","storage":"pandamium:temp","color":"aqua","bold":true}," day",{"text":"(s)","color":"gray"}],", ",[{"text":"","color":"green"},{"nbt":"Times.monthly[3]","storage":"pandamium:temp","color":"aqua","bold":true}," hour",{"text":"(s)","color":"gray"}],", ",[{"text":"","color":"green"},{"nbt":"Times.monthly[2]","storage":"pandamium:temp","color":"aqua","bold":true}," min",{"text":"(s)","color":"gray"}]," and ",[{"text":"","color":"green"},{"nbt":"Times.monthly[1]","storage":"pandamium:temp","color":"aqua","bold":true}," sec",{"text":"(s)","color":"gray"}]],[{"text":"\nPlaytime This Year: ","color":"green"},[{"text":"","color":"green"},{"nbt":"Times.yearly[4]","storage":"pandamium:temp","color":"aqua","bold":true}," day",{"text":"(s)","color":"gray"}],", ",[{"text":"","color":"green"},{"nbt":"Times.yearly[3]","storage":"pandamium:temp","color":"aqua","bold":true}," hour",{"text":"(s)","color":"gray"}],", ",[{"text":"","color":"green"},{"nbt":"Times.yearly[2]","storage":"pandamium:temp","color":"aqua","bold":true}," min",{"text":"(s)","color":"gray"}]," and ",[{"text":"","color":"green"},{"nbt":"Times.yearly[1]","storage":"pandamium:temp","color":"aqua","bold":true}," sec",{"text":"(s)","color":"gray"}]],[{"text":"\nSession Length: ","color":"green"},[{"text":"","color":"green"},{"nbt":"Times.online[3]","storage":"pandamium:temp","color":"aqua","bold":true}," hour",{"text":"(s)","color":"gray"}],", ",[{"text":"","color":"green"},{"nbt":"Times.online[2]","storage":"pandamium:temp","color":"aqua","bold":true}," min",{"text":"(s)","color":"gray"}]," and ",[{"text":"","color":"green"},{"nbt":"Times.online[1]","storage":"pandamium:temp","color":"aqua","bold":true}," sec",{"text":"(s)","color":"gray"}]]]
execute if score <show_playtime_days> variable matches 1 if score <playtime_value> variable matches 2.. run tellraw @a[tag=source,limit=1] [{"text":"======== ","color":"yellow"},{"text":"Playtime","bold":true}," ========",{"text":"\nPlayer: ","bold":true},{"selector":"@s"},[{"text":"\nTotal Playtime: ","color":"gold"},[{"text":"","color":"gold"},{"nbt":"Times.playtime[4]","storage":"pandamium:temp","color":"yellow","bold":true}," day",{"text":"(s)","color":"gray"}],", ",[{"text":"","color":"gold"},{"nbt":"Times.playtime[3]","storage":"pandamium:temp","color":"yellow","bold":true}," hour",{"text":"(s)","color":"gray"}],", ",[{"text":"","color":"gold"},{"nbt":"Times.playtime[2]","storage":"pandamium:temp","color":"yellow","bold":true}," min",{"text":"(s)","color":"gray"}]," and ",[{"text":"","color":"gold"},{"nbt":"Times.playtime[1]","storage":"pandamium:temp","color":"yellow","bold":true}," sec",{"text":"(s)","color":"gray"}]],[{"text":"\nPlaytime This Month: ","color":"gold"},[{"text":"","color":"gold"},{"nbt":"Times.monthly[4]","storage":"pandamium:temp","color":"yellow","bold":true}," day",{"text":"(s)","color":"gray"}],", ",[{"text":"","color":"gold"},{"nbt":"Times.monthly[3]","storage":"pandamium:temp","color":"yellow","bold":true}," hour",{"text":"(s)","color":"gray"}],", ",[{"text":"","color":"gold"},{"nbt":"Times.monthly[2]","storage":"pandamium:temp","color":"yellow","bold":true}," min",{"text":"(s)","color":"gray"}]," and ",[{"text":"","color":"gold"},{"nbt":"Times.monthly[1]","storage":"pandamium:temp","color":"yellow","bold":true}," sec",{"text":"(s)","color":"gray"}]],[{"text":"\nPlaytime This Year: ","color":"gold"},[{"text":"","color":"gold"},{"nbt":"Times.yearly[4]","storage":"pandamium:temp","color":"yellow","bold":true}," day",{"text":"(s)","color":"gray"}],", ",[{"text":"","color":"gold"},{"nbt":"Times.yearly[3]","storage":"pandamium:temp","color":"yellow","bold":true}," hour",{"text":"(s)","color":"gray"}],", ",[{"text":"","color":"gold"},{"nbt":"Times.yearly[2]","storage":"pandamium:temp","color":"yellow","bold":true}," min",{"text":"(s)","color":"gray"}]," and ",[{"text":"","color":"gold"},{"nbt":"Times.yearly[1]","storage":"pandamium:temp","color":"yellow","bold":true}," sec",{"text":"(s)","color":"gray"}]],[{"text":"\nSession Length: ","color":"gold"},[{"text":"","color":"gold"},{"nbt":"Times.online[3]","storage":"pandamium:temp","color":"yellow","bold":true}," hour",{"text":"(s)","color":"gray"}],", ",[{"text":"","color":"gold"},{"nbt":"Times.online[2]","storage":"pandamium:temp","color":"yellow","bold":true}," min",{"text":"(s)","color":"gray"}]," and ",[{"text":"","color":"gold"},{"nbt":"Times.online[1]","storage":"pandamium:temp","color":"yellow","bold":true}," sec",{"text":"(s)","color":"gray"}]]]
execute if score <show_playtime_days> variable matches 1 if score @s playtime_ticks >= #ticks_per_day constant run tellraw @a[tag=source,limit=1] [{"text":"\nShow Days: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Show Days","bold":true},{"text":"\n• Off (Default)\n• On","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger playtime set -1"}},{"text":"On","color":"yellow","bold":true}]

execute if score <playtime_value> variable matches 1 run tellraw @a[tag=source,limit=1] {"text":"=========================","color":"aqua"}
execute if score <playtime_value> variable matches 2.. run tellraw @a[tag=source,limit=1] {"text":"=========================","color":"yellow"}

return 0