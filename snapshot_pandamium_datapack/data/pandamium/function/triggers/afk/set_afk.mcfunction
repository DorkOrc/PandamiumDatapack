scoreboard players set @s idle.time 1073741824
function pandamium:player/teams/update_suffix

tellraw @s [{"text":"[AFK]","color":"dark_green"},[{"text":" You are now considered ","color":"green"},{"text":"AFK","color":"aqua"},"! ",{"text":"[💬]","color":"dark_aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to tell online players that you are AFK","color":"dark_aqua"},{"text":"\n\nA message will be suggested to you, not automatically sent","color":"dark_gray"}]},"clickEvent":{"action":"suggest_command","value":"/me went AFK"}}]]
