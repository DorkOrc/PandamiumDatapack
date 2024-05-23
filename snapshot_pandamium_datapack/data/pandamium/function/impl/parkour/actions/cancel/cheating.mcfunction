function pandamium:impl/parkour/actions/cancel
tellraw @s [{"text":"[Parkour] ","color":"dark_red"},{"text":"Ended parkour! Cheating was detected.","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Reason: ","color":"dark_red"},{"storage":"pandamium:temp","nbt":"cheat_data.name","color":"red"}]}}]
