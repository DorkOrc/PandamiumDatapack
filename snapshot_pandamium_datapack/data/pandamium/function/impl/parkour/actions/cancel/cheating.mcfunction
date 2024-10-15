function pandamium:impl/parkour/actions/cancel

execute if data storage pandamium:temp cheat_data{type:"leave_course"} run return run tellraw @s [{"text":"[Parkour] ","color":"dark_red"},{"text":"Your parkour session was ended! You left the course.","color":"red"}]
tellraw @s [{"text":"[Parkour] ","color":"dark_red"},{"text":"Your parkour session was ended! Cheating was detected.","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Reason: ","color":"dark_red"},{"storage":"pandamium:temp","nbt":"cheat_data.name","color":"red"}]}}]
