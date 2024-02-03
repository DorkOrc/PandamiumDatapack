data modify storage pandamium:temp parts set value ["",""]

#

scoreboard players operation <timer_hours> variable = @s parkour.timer_ticks
scoreboard players operation <timer_hours> variable /= #ticks_per_hour constant

scoreboard players operation <timer_minutes> variable = @s parkour.timer_ticks
scoreboard players operation <timer_minutes> variable /= #ticks_per_minute constant
scoreboard players operation <timer_minutes> variable %= #minutes_per_hour constant
execute if score <timer_minutes> variable matches 0..9 run data modify storage pandamium:temp parts[0] set value "0"

scoreboard players operation <timer_seconds> variable = @s parkour.timer_ticks
scoreboard players operation <timer_seconds> variable /= #ticks_per_second constant
scoreboard players operation <timer_seconds> variable %= #seconds_per_minute constant
execute if score <timer_seconds> variable matches 0..9 run data modify storage pandamium:temp parts[1] set value "0"

#

execute if score <timer_hours> variable matches 0 run title @s actionbar [{"text":"Parkour: ","color":"dark_aqua"},[{"storage":"pandamium:temp","nbt":"parts[0]","color":"aqua"},{"score":{"name":"<timer_minutes>","objective":"variable"}}],":",[{"storage":"pandamium:temp","nbt":"parts[1]","color":"aqua"},{"score":{"name":"<timer_seconds>","objective":"variable"}}]," | ",{"text":"/trigger ","color":"gray"},{"text":"parkour","color":"aqua"}]
execute if score <timer_hours> variable matches 1.. run title @s actionbar [{"text":"Parkour: ","color":"dark_aqua"},{"score":{"name":"<timer_hours>","objective":"variable"},"color":"aqua"},":",[{"storage":"pandamium:temp","nbt":"parts[0]","color":"aqua"},{"score":{"name":"<timer_minutes>","objective":"variable"}}],":",[{"storage":"pandamium:temp","nbt":"parts[1]","color":"aqua"},{"score":{"name":"<timer_seconds>","objective":"variable"}}]," | ",{"text":"/trigger ","color":"gray"},{"text":"parkour","color":"aqua"}]
