scoreboard players set <monthly_embed_data_json_generated> variable 1
execute unless data storage pandamium.leader_boards:data previous_month_data.copy_to_clipboard_root run scoreboard players set <monthly_embed_data_json_generated> variable 0
execute if data storage pandamium.leader_boards:data previous_month_data{copy_to_clipboard_root:'""'} run scoreboard players set <monthly_embed_data_json_generated> variable 0
data modify storage pandamium:temp previous_month_display_name set value '"Previous Month"'
function pandamium:utils/get/month_name with storage pandamium.leader_boards:data previous_month_data
execute if data storage pandamium.leader_boards:data previous_month_data.year if data storage pandamium.leader_boards:data previous_month_data.month run data modify storage pandamium:temp previous_month_display_name set value '[{"storage":"pandamium:temp","nbt":"month_name"}," ",{"storage":"pandamium.leader_boards:data","nbt":"previous_month_data.year"}]'

scoreboard players set <yearly_embed_data_json_generated> variable 1
execute unless data storage pandamium.leader_boards:data previous_year_data.copy_to_clipboard_root run scoreboard players set <yearly_embed_data_json_generated> variable 0
execute if data storage pandamium.leader_boards:data previous_year_data{copy_to_clipboard_root:'""'} run scoreboard players set <yearly_embed_data_json_generated> variable 0
data modify storage pandamium:temp previous_year_display_name set value '"Previous Year"'
execute if data storage pandamium.leader_boards:data previous_year_data.year run data modify storage pandamium:temp previous_year_display_name set value '[{"storage":"pandamium.leader_boards:data","nbt":"previous_year_data.year"}]'


tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Leader Boards","bold":true}," ========"]
tellraw @s [{"text":"","color":"aqua"},{"text":"Statistics","bold":true},":"]
tellraw @s [{"text":" ","color":"green"},{"text":"[All-Time Playtime]","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to display the ","color":"aqua"},{"text":"All-Time\nPlaytime","bold":true}," leader board"]},"clickEvent":{"action":"run_command","value":"/trigger leaderboards set -1"}},"  |  ",{"text":"[All-Time Votes]","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to display the ","color":"aqua"},{"text":"All-Time\nVotes","bold":true}," leader board"]},"clickEvent":{"action":"run_command","value":"/trigger leaderboards set -2"}},"\n ",{"text":"[Monthly Playtime]","color":"dark_aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to display the ","color":"dark_aqua"},{"text":"Monthly\nPlaytime","bold":true}," leader board"]},"clickEvent":{"action":"run_command","value":"/trigger leaderboards set -3"}},"  |  ",{"text":"[Monthly Votes]","color":"dark_aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to display the ","color":"dark_aqua"},{"text":"Monthly\nVotes","bold":true}," leader board"]},"clickEvent":{"action":"run_command","value":"/trigger leaderboards set -4"}},"\n ",{"text":"[Yearly Playtime]","color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"Click to display the ","color":"blue"},{"text":"Yearly\nPlaytime","bold":true}," leader board"]},"clickEvent":{"action":"run_command","value":"/trigger leaderboards set -5"}},"  |  ",{"text":"[Yearly Votes]","color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"Click to display the ","color":"blue"},{"text":"Yearly Votes","bold":true},"\nleader board"]},"clickEvent":{"action":"run_command","value":"/trigger leaderboards set -6"}}]
tellraw @s [{"text":"\n","color":"aqua"},{"text":"Parkour Courses","bold":true},":"]
tellraw @s [{"text":" ","color":"green"},{"text":"[Forgotten Caverns]","color":"aqua","hoverEvent":{"action":"show_text","value":[{"text":"Click to display the ","color":"aqua"},{"text":"Forgotten\nCaverns","bold":true}," leader board"]},"clickEvent":{"action":"run_command","value":"/trigger leaderboards set -7"}}]

tellraw @s[scores={staff_perms=2..}] {"text":"\nEmbed Data: ","color":"yellow","bold":true}
execute if score <monthly_embed_data_json_generated> variable matches 1 run tellraw @s[scores={staff_perms=2..}] [{"text":"• ","color":"gray"},{"storage":"pandamium:temp","nbt":"previous_month_display_name","interpret":true,"color":"aqua"}," ",[{"storage":"pandamium.leader_boards:data","nbt":"previous_month_data.copy_to_clipboard_root","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to copy ","color":"gold"},{"storage":"pandamium:temp","nbt":"previous_month_display_name","interpret":true,"bold":true}," embed JSON to your clipboard"]}},{"text":"[📋]","color":"gold"}]]
execute if score <monthly_embed_data_json_generated> variable matches 0 run tellraw @s[scores={staff_perms=2..}] [{"text":"• ","color":"gray"},{"storage":"pandamium:temp","nbt":"previous_month_display_name","interpret":true,"color":"aqua"}," ",{"text":"[📋]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"red"},{"storage":"pandamium:temp","nbt":"previous_month_display_name","interpret":true,"bold":true}," embed JSON has not been generated"]}}]

execute if score <yearly_embed_data_json_generated> variable matches 1 run tellraw @s[scores={staff_perms=2..}] [{"text":"• ","color":"gray"},{"storage":"pandamium:temp","nbt":"previous_year_display_name","interpret":true,"color":"aqua"}," ",[{"storage":"pandamium.leader_boards:data","nbt":"previous_year_data.copy_to_clipboard_root","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Click to copy ","color":"gold"},{"storage":"pandamium:temp","nbt":"previous_year_display_name","interpret":true,"bold":true}," embed JSON to your clipboard"]}},{"text":"[📋]","color":"gold"}]]
execute if score <yearly_embed_data_json_generated> variable matches 0 run tellraw @s[scores={staff_perms=2..}] [{"text":"• ","color":"gray"},{"storage":"pandamium:temp","nbt":"previous_year_display_name","interpret":true,"color":"aqua"}," ",{"text":"[📋]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"red"},{"storage":"pandamium:temp","nbt":"previous_year_display_name","interpret":true,"bold":true}," embed JSON has not been generated"]}}]

tellraw @s {"text":"================================","color":"aqua"}
