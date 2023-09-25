tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Parkour","bold":true}," ========"]

# best times
tellraw @s {"text":"Best Times:","bold":true,"color":"aqua"}
execute if score @s parkour.leaderboard_blacklist matches 1 run tellraw @s [{"text":"⚠ ","color":"yellow","hoverEvent":{"action":"show_text","value":{"text":"You may have been blacklisted by\nrequest or as a result of\nhacking/cheating. If you think\nthis is a mistake, please\ncontact a staff member.","color":"red"}}},{"text":"You have been blacklisted from parkour leaderboards.","color":"red"}]

execute if score @s parkour_1.best_time matches 1.. run scoreboard players operation <ticks> variable = @s parkour_1.best_time
execute if score @s parkour_1.best_time matches 1.. run function pandamium:utils/get/time_from_ticks_without_days
execute if score @s parkour_1.best_time matches 1.. if score <hours> variable matches 0 run tellraw @s [{"text":"Caves & Cliffs: ","color":"dark_aqua"},{"score":{"name":"<minutes>","objective":"variable"},"bold":true,"color":"aqua"},{"text":" minute","color":"aqua"},{"text":"s","color":"gray"}," and ",{"score":{"name":"<seconds>","objective":"variable"},"bold":true,"color":"aqua"},{"text":" second","color":"aqua"},{"text":"s","color":"gray"},{"text":" (ARCHIVED)","color":"gray","font":"uniform","hoverEvent":{"action":"show_text","value":{"text":"You have completed this course,\nbut it no longer exists.","color":"gray"}}}]
execute if score @s parkour_1.best_time matches 1.. if score <hours> variable matches 1.. run tellraw @s [{"text":"Caves & Cliffs: ","color":"dark_aqua"},{"score":{"name":"<hours>","objective":"variable"},"bold":true,"color":"aqua"},{"text":" hour","color":"aqua"},{"text":"s","color":"gray"},", ",{"score":{"name":"<minutes>","objective":"variable"},"bold":true,"color":"aqua"},{"text":" minute","color":"aqua"},{"text":"s","color":"gray"}," and ",{"score":{"name":"<seconds>","objective":"variable"},"bold":true,"color":"aqua"},{"text":" second","color":"aqua"},{"text":"s","color":"gray"},{"text":" (ARCHIVED)","color":"gray","font":"uniform","hoverEvent":{"action":"show_text","value":{"text":"You have completed this course,\nbut it no longer exists.","color":"gray"}}}]

execute if score @s parkour_2.best_time matches 1.. run scoreboard players operation <ticks> variable = @s parkour_2.best_time
execute if score @s parkour_2.best_time matches 1.. run function pandamium:utils/get/time_from_ticks_without_days
execute if score @s parkour_2.best_time matches 1.. if score <hours> variable matches 0 run tellraw @s [{"text":"Monstrosity: ","color":"dark_aqua"},{"score":{"name":"<minutes>","objective":"variable"},"bold":true,"color":"aqua"},{"text":" minute","color":"aqua"},{"text":"s","color":"gray"}," and ",{"score":{"name":"<seconds>","objective":"variable"},"bold":true,"color":"aqua"},{"text":" second","color":"aqua"},{"text":"s","color":"gray"},{"text":" (ARCHIVED)","color":"gray","font":"uniform","hoverEvent":{"action":"show_text","value":{"text":"You have completed this course,\nbut it no longer exists.","color":"gray"}}}]

execute unless score @s parkour_1.best_time matches 1.. unless score @s parkour_2.best_time matches 1.. run tellraw @s {"text":"No tracked courses exist currently, and you have no archived times.","color":"gray"}

# teleporting
tellraw @s {"text":"\nCourses:","bold":true,"color":"aqua"}
tellraw @s [{"text":" ","color":"green"},{"text":"[Unnamed Parkour Course]","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"aqua"},{"text":"Unnamed Parkour Course","bold":true},{"text":"\nThis course is not tracked.","color":"red"}]},"clickEvent":{"action":"run_command","value":"/trigger parkour set -101"}}]

# options
tellraw @s {"text":"\nOptions:","bold":true,"color":"aqua"}
execute unless score @s hide_parkour_timer matches 1 run tellraw @s [{"text":"Show Parkour Timer: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Show Parkour Timer","bold":true},{"text":"\n• On (Default)\n• Off","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -5"}},{"text":"On","color":"yellow","bold":true}]
execute if score @s hide_parkour_timer matches 1 run tellraw @s [{"text":"Show Parkour Timer: ","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to cycle options for\n","color":"aqua"},{"text":"Show Parkour Timer","bold":true},{"text":"\n• On (Default)\n• Off","color":"dark_gray"}]},"clickEvent":{"action":"run_command","value":"/trigger options set -5"}},{"text":"Off","color":"yellow","bold":true}]

tellraw @s {"text":"=========================","color":"aqua"}
