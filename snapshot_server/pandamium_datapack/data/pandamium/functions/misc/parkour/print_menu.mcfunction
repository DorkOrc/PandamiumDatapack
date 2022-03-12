tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Parkour","bold":true}," ========"]

# Best Times
tellraw @s {"text":"Best Times:","bold":true,"color":"aqua"}

execute if score @s parkour_1.best_time = @s parkour_1.best_time run scoreboard players operation <ticks> variable = @s parkour_1.best_time
execute if score @s parkour_1.best_time = @s parkour_1.best_time run function pandamium:misc/get_time_from_ticks_without_days
execute if score @s parkour_1.best_time = @s parkour_1.best_time if score <hours> variable matches 0 run tellraw @s [{"text":"Caves & Cliffs: ","color":"dark_aqua"},{"score":{"name":"<minutes>","objective":"variable"},"bold":true,"color":"aqua"},{"text":" minute","color":"aqua"},{"text":"(s)","color":"gray"}," and ",{"score":{"name":"<seconds>","objective":"variable"},"bold":true,"color":"aqua"},{"text":" second","color":"aqua"},{"text":"(s)","color":"gray"}]
execute if score @s parkour_1.best_time = @s parkour_1.best_time if score <hours> variable matches 1.. run tellraw @s [{"text":"Caves & Cliffs: ","color":"dark_aqua"},{"score":{"name":"<hours>","objective":"variable"},"bold":true,"color":"aqua"},{"text":" hour","color":"aqua"},{"text":"(s)","color":"gray"},", ",{"score":{"name":"<minutes>","objective":"variable"},"bold":true,"color":"aqua"},{"text":" minute","color":"aqua"},{"text":"(s)","color":"gray"}," and ",{"score":{"name":"<seconds>","objective":"variable"},"bold":true,"color":"aqua"},{"text":" second","color":"aqua"},{"text":"(s)","color":"gray"}]
execute unless score @s parkour_1.best_time = @s parkour_1.best_time run tellraw @s [{"text":"Caves & Cliffs: ","color":"dark_aqua"},{"text":"Not Finished","color":"gray"}]

execute if score @s parkour_2.best_time = @s parkour_2.best_time run scoreboard players operation <ticks> variable = @s parkour_2.best_time
execute if score @s parkour_2.best_time = @s parkour_2.best_time run function pandamium:misc/get_time_from_ticks_without_days
execute if score @s parkour_2.best_time = @s parkour_2.best_time if score <hours> variable matches 0 run tellraw @s [{"text":"Monstrosity: ","color":"dark_aqua"},{"score":{"name":"<minutes>","objective":"variable"},"bold":true,"color":"aqua"},{"text":" minute","color":"aqua"},{"text":"(s)","color":"gray"}," and ",{"score":{"name":"<seconds>","objective":"variable"},"bold":true,"color":"aqua"},{"text":" second","color":"aqua"},{"text":"(s)","color":"gray"}]
execute unless score @s parkour_2.best_time = @s parkour_2.best_time run tellraw @s [{"text":"Monstrosity: ","color":"dark_aqua"},{"text":"Not Finished","color":"gray"}]

# Teleporting
tellraw @s {"text":"\nCourses:","bold":true,"color":"aqua"}
execute unless score @s parkour.checkpoint matches 0.. run tellraw @s [{"text":"","color":"green"},{"text":"[Caves & Cliffs Parkour]","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"aqua"},{"text":"Caves & Cliffs Parkour","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger parkour set -101"}},"  |  ",{"text":"[Monstrosity Parkour]","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"aqua"},{"text":"Monstrosity Parkour","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger parkour set -102"}}]

tellraw @s {"text":"=========================","color":"aqua"}
