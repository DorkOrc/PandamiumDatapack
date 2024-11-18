# arguments: username, id, id_with_leading_zeroes

$tellraw @s [{"text":"======== ","color":"yellow"},{"text":"Player Info","bold":true}," ========",{"text":"\nPlayer: ","bold":true,"color":"yellow"},{"text":"","color":"aqua","extra":[{"storage":"pandamium:temp","nbt":"target","interpret":true}]}," (",{"score":{"name":"$(username)","objective":"id"},"bold":true},")"]

# playtimes
data modify storage pandamium:local functions."pandamium:triggers/player_info_v2/print_inspection_menu/*".playtime_display_modifiers set value [{text:'{"text":"[this_month]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"storage":"pandamium:local","nbt":"functions.\'pandamium:triggers/player_info_v2/print_inspection_menu/*\'.monthly_playtime[3]"},"h ",{"storage":"pandamium:local","nbt":"functions.\'pandamium:triggers/player_info_v2/print_inspection_menu/*\'.monthly_playtime[2]"},"m ",{"storage":"pandamium:local","nbt":"functions.\'pandamium:triggers/player_info_v2/print_inspection_menu/*\'.monthly_playtime[1]"},"s"]}}',type:"monthly"},{text:'{"text":"[this_year]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"storage":"pandamium:local","nbt":"functions.\'pandamium:triggers/player_info_v2/print_inspection_menu/*\'.yearly_playtime[3]"},"h ",{"storage":"pandamium:local","nbt":"functions.\'pandamium:triggers/player_info_v2/print_inspection_menu/*\'.yearly_playtime[2]"},"m ",{"storage":"pandamium:local","nbt":"functions.\'pandamium:triggers/player_info_v2/print_inspection_menu/*\'.yearly_playtime[1]"},"s"]}}',type:"yearly"}]

$scoreboard players operation <ticks> variable = $(username) playtime_ticks
function pandamium:utils/get/time_from_ticks_without_days
data modify storage pandamium:local functions."pandamium:triggers/player_info_v2/print_inspection_menu/*".total_playtime set from storage pandamium:temp time

$scoreboard players operation <ticks> variable = $(username) monthly_playtime_ticks
execute unless score <ticks> variable matches 1.. run data remove storage pandamium:local functions."pandamium:triggers/player_info_v2/print_inspection_menu/*".playtime_display_modifiers[{type:"monthly"}]
function pandamium:utils/get/time_from_ticks_without_days
data modify storage pandamium:local functions."pandamium:triggers/player_info_v2/print_inspection_menu/*".monthly_playtime set from storage pandamium:temp time

$scoreboard players operation <ticks> variable = $(username) yearly_playtime_ticks
execute unless score <ticks> variable matches 1.. run data remove storage pandamium:local functions."pandamium:triggers/player_info_v2/print_inspection_menu/*".playtime_display_modifiers[{type:"yearly"}]
function pandamium:utils/get/time_from_ticks_without_days
data modify storage pandamium:local functions."pandamium:triggers/player_info_v2/print_inspection_menu/*".yearly_playtime set from storage pandamium:temp time

tellraw @s [{"text":" playtime: ","color":"gold"},\
    {"text":"","color":"yellow","extra":[{"storage":"pandamium:local","nbt":"functions.'pandamium:triggers/player_info_v2/print_inspection_menu/*'.total_playtime[3]"},"h ",{"storage":"pandamium:local","nbt":"functions.'pandamium:triggers/player_info_v2/print_inspection_menu/*'.total_playtime[2]"},"m ",{"storage":"pandamium:local","nbt":"functions.'pandamium:triggers/player_info_v2/print_inspection_menu/*'.total_playtime[1]"},"s"]}," ",\
    {"storage":"pandamium:local","nbt":"functions.'pandamium:triggers/player_info_v2/print_inspection_menu/*'.playtime_display_modifiers[].text","interpret":true,"separator":" "}\
]

# session length
$scoreboard players operation <ticks> variable = $(username) online_ticks
function pandamium:utils/get/time_from_ticks_without_days
data modify storage pandamium:local functions."pandamium:triggers/player_info_v2/print_inspection_menu/*".session_playtime set from storage pandamium:temp time

execute if score <target_is_online> variable matches 1 run tellraw @s [{"text":" session_length: ","color":"gold"},{"text":"","color":"yellow","extra":[{"storage":"pandamium:local","nbt":"functions.'pandamium:triggers/player_info_v2/print_inspection_menu/*'.session_playtime[3]"},"h ",{"storage":"pandamium:local","nbt":"functions.'pandamium:triggers/player_info_v2/print_inspection_menu/*'.session_playtime[2]"},"m ",{"storage":"pandamium:local","nbt":"functions.'pandamium:triggers/player_info_v2/print_inspection_menu/*'.session_playtime[1]"},"s"]}]

# votes
$data modify storage pandamium:local functions."pandamium:triggers/player_info_v2/print_inspection_menu/*".votes_display_modifiers set value [{text:'{"text":"[this_month]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"score":{"name":"$(username)","objective":"monthly_votes"}}]}}',type:"monthly"},{text:'{"text":"[this_year]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"score":{"name":"$(username)","objective":"yearly_votes"}}]}}',type:"yearly"}]
$execute unless score $(username) monthly_votes matches 1.. run data remove storage pandamium:local functions."pandamium:triggers/player_info_v2/print_inspection_menu/*".votes_display_modifiers[{type:"monthly"}]
$execute unless score $(username) yearly_votes matches 1.. run data remove storage pandamium:local functions."pandamium:triggers/player_info_v2/print_inspection_menu/*".votes_display_modifiers[{type:"yearly"}]

$execute if score $(username) votes matches 1.. run tellraw @s [{"text":" votes: ","color":"gold"},\
    {"score":{"name":"$(username)","objective":"votes"},"color":"yellow"}," ",\
    {"storage":"pandamium:local","nbt":"functions.'pandamium:triggers/player_info_v2/print_inspection_menu/*'.votes_display_modifiers[].text","interpret":true,"separator":" "}\
]

# last known position
$execute store result score <dimension> variable run scoreboard players get $(username) last_position.d
function pandamium:utils/get/dimension_name/from_score
$execute if score $(username) last_position.y matches -2147483648.. run tellraw @s [{"text":" last_position: ","color":"gold"},{"text":"[👁]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gold"},[{"score":{"name":"$(username)","objective":"last_position.x"},"color":"yellow"}," ",{"score":{"name":"$(username)","objective":"last_position.y"}}," ",{"score":{"name":"$(username)","objective":"last_position.z"}}]," in ",{"nbt":"dimension_name","storage":"pandamium:temp","color":"yellow"}]}}," ",{"text":"[→]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to teleport to ","color":"blue"},{"storage":"pandamium:temp","nbt":"target","interpret":true},"'s last position"]},"clickEvent":{"action":"run_command","value":"/trigger tp set $(id)"}}]
$execute unless score $(username) last_position.y matches -2147483648.. run tellraw @s [{"text":" last_position: ","color":"gold"},{"text":"Unknown","color":"gray"}]
# used y here because some players' last_position.x were accidentally set to 0 when they should be unset

# last set spawnpoint
$scoreboard players operation <dimension> variable = $(username) spawnpoint_d
function pandamium:utils/get/dimension_name/from_score
$execute if score $(username) spawnpoint_x matches -2147483648.. run tellraw @s [{"text":" last_set_spawnpoint: ","color":"gold"},{"text":"[🛏]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gold"},[{"score":{"name":"$(username)","objective":"spawnpoint_x"},"color":"yellow"}," ",{"score":{"name":"$(username)","objective":"spawnpoint_y"}}," ",{"score":{"name":"$(username)","objective":"spawnpoint_z"}}]," in ",{"nbt":"dimension_name","storage":"pandamium:temp","color":"yellow"}]}}," ",{"text":"[→]","color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"blue"},{"storage":"pandamium:temp","nbt":"target","interpret":true},"'s ",{"text":"spawnpoint","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger spawnpoint set -$(id)"}}]

# pre-jail position
$execute store result score <dimension> variable run scoreboard players get $(username) pre_jail_pos_d
function pandamium:utils/get/dimension_name/from_score
$execute if score $(username) pre_jail_pos_x matches -2147483648.. run tellraw @s [{"text":" pre_jail_position: ","color":"gold"},{"text":"[👁]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gold"},[{"score":{"name":"$(username)","objective":"pre_jail_pos_x"},"color":"yellow"}," ",{"score":{"name":"$(username)","objective":"pre_jail_pos_y"}}," ",{"score":{"name":"$(username)","objective":"pre_jail_pos_z"}}]," in ",{"nbt":"dimension_name","storage":"pandamium:temp","color":"yellow"}]}}," ",{"text":"[→]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to teleport to ","color":"blue"},{"storage":"pandamium:temp","nbt":"target","interpret":true},"'s pre-jail position"]},"clickEvent":{"action":"run_command","value":"/trigger pre_jail_tp set $(id)"}}]

# last death location
execute if score <target_is_online> variable matches 1 run data modify storage pandamium:local functions."pandamium:triggers/player_info_v2/print_inspection_menu/*".last_death_location set from entity @a[predicate=pandamium:matches_id,limit=1] LastDeathLocation
function pandamium:utils/get/dimension_name/from_string_id with storage pandamium:local functions."pandamium:triggers/player_info_v2/print_inspection_menu/*".last_death_location
$execute if score <target_is_online> variable matches 1 run tellraw @s [{"text":" last_death_location: ","color":"gold"},{"text":"[☠]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gold"},{"storage":"pandamium:local","nbt":"functions.'pandamium:triggers/player_info_v2/print_inspection_menu/*'.last_death_location.pos[]","separator":" ","color":"yellow"}," in ",{"nbt":"dimension_name","storage":"pandamium:temp","color":"yellow"}]}}," ",{"text":"[→]","color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"blue"},{"storage":"pandamium:temp","nbt":"target","interpret":true},"'s ",{"text":"last death location","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger player_info_v2 set -8$(id_with_leading_zeroes)"}}]

# first join date
$execute if score $(username) first_joined.year matches -2147483648.. run scoreboard players operation <next_hour> variable = @s first_joined.hour
scoreboard players add <next_hour> variable 1
execute if score <next_hour> variable matches 25 run scoreboard players set <next_hour> variable 0
$execute if score $(username) first_joined.year matches -2147483648.. run tellraw @s [{"text":" first_join_date: ","color":"gold"},{"text":"[⌚]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gold"},[{"score":{"name":"$(username)","objective":"first_joined.day"},"color":"yellow"},"/",{"score":{"name":"$(username)","objective":"first_joined.month"}},"/",{"score":{"name":"$(username)","objective":"first_joined.year"}}]," between ",[{"score":{"name":"$(username)","objective":"first_joined.hour"},"color":"yellow"},":00 GMT"]," and ",[{"score":{"name":"<next_hour>","objective":"variable"},"color":"yellow"},":00 GMT"]]}}]

# last join date
$execute if score $(username) last_joined.year matches -2147483648.. run scoreboard players operation <next_hour> variable = @s last_joined.hour
scoreboard players add <next_hour> variable 1
execute if score <next_hour> variable matches 25 run scoreboard players set <next_hour> variable 0
$execute if score $(username) last_joined.year matches -2147483648.. run tellraw @s [{"text":" last_join_date: ","color":"gold"},{"text":"[⌚]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gold"},[{"score":{"name":"$(username)","objective":"last_joined.day"},"color":"yellow"},"/",{"score":{"name":"$(username)","objective":"last_joined.month"}},"/",{"score":{"name":"$(username)","objective":"last_joined.year"}}]," between ",[{"score":{"name":"$(username)","objective":"last_joined.hour"},"color":"yellow"},":00 GMT"]," and ",[{"score":{"name":"<next_hour>","objective":"variable"},"color":"yellow"},":00 GMT"]]}}]

# alt information
data modify storage pandamium:local functions."pandamium:triggers/player_info_v2/print_inspection_menu/*".alt_ids set from storage pandamium.db.players:io selected.entry.data.alts
data modify storage pandamium:local functions."pandamium:triggers/player_info_v2/print_inspection_menu/*".alt_names set value []
execute if data storage pandamium:local functions."pandamium:triggers/player_info_v2/print_inspection_menu/*".alt_ids[0] in pandamium:staff_world run function pandamium:triggers/player_info_v2/print_inspection_menu/alts_loop with storage pandamium:local functions."pandamium:triggers/player_info_v2/print_inspection_menu/*".alt_ids[0]
execute if data storage pandamium:local functions."pandamium:triggers/player_info_v2/print_inspection_menu/*".alt_names[0] run tellraw @s [{"text":" known_alts: ","color":"gold"},{"text":"","color":"yellow","extra":[{"storage":"pandamium:local","nbt":"functions.'pandamium:triggers/player_info_v2/print_inspection_menu/*'.alt_names[]","interpret":true,"separator":{"text":", ","color":"gray"}}]}]

execute if data storage pandamium.db.players:io selected.entry.data.alt_of in pandamium:staff_world run function pandamium:triggers/player_info_v2/print_inspection_menu/get_alt_of with storage pandamium.db.players:io selected.entry.data.alt_of
execute if data storage pandamium.db.players:io selected.entry.data.alt_of run tellraw @s [{"text":" alt_of: ","color":"gold"},{"text":"","color":"yellow","extra":[{"storage":"pandamium:local","nbt":"functions.'pandamium:triggers/player_info_v2/print_inspection_menu/*'.display_alt_of","interpret":true}]}]

# teleport history
#function pandamium:triggers/player_info_v2/print_teleport_history_menu/main
$tellraw @s [{"text":" tp_history: ","color":"gold"},{"text":"[👁]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to see ","color":"blue"},{"storage":"pandamium:temp","nbt":"target","interpret":true},"'s ",{"text":"Teleport History","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger player_info_v2 set -1$(id_with_leading_zeroes)"}}]

# inventory
$execute if score <target_is_online> variable matches 1 run tellraw @s [{"text":" inventory: ","color":"gold"},\
        {"text":"[👁]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to see ","color":"blue"},{"storage":"pandamium:temp","nbt":"target","interpret":true},"'s ",{"text":"inventory","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger inspect_inventory set $(id)"}}," ",\
        {"text":"[Take]","color":"dark_blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to move ","color":"blue"},{"storage":"pandamium:temp","nbt":"target","interpret":true},"'s ",{"text":"inventory","bold":true}," to the staff world",{"text":"\n\nA command will be suggested to you, not automatically ran","color":"dark_gray"}]},"clickEvent":{"action":"suggest_command","value":"/trigger take_enderchest set $(id)"}}\
]

# ender chest
$execute if score <target_is_online> variable matches 1 if items entity @a[predicate=pandamium:matches_id,limit=1] enderchest.* * run tellraw @s [{"text":" ender_chest: ","color":"gold"},\
        {"text":"[👁]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to see ","color":"blue"},{"storage":"pandamium:temp","nbt":"target","interpret":true},"'s ",{"text":"ender chest","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger inspect_enderchest set $(id)"}}," ",\
        {"text":"[Take]","color":"dark_blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to move ","color":"blue"},{"storage":"pandamium:temp","nbt":"target","interpret":true},"'s ",{"text":"ender chest","bold":true}," to the staff world",{"text":"\n\nA command will be suggested to you, not automatically ran","color":"dark_gray"}]},"clickEvent":{"action":"suggest_command","value":"/trigger take_enderchest set $(id)"}}\
]

# misc
$tellraw @s ["",\
        {"text":" other: ","color":"gold"},\
        {"text":"[Homes]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to see ","color":"blue"},{"storage":"pandamium:temp","nbt":"target","interpret":true},"'s ",{"text":"homes","bold":true},{"text":"\n\nA command will be suggested to you, not automatically ran","color":"dark_gray"}]},"clickEvent":{"action":"suggest_command","value":"/trigger homes set $(id)"}}," ",\
        {"text":"[Inbox]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to see ","color":"blue"},{"storage":"pandamium:temp","nbt":"target","interpret":true},"'s ",{"text":"Inbox","bold":true},{"text":"\n\nA command will be suggested to you, not automatically ran","color":"dark_gray"}]},"clickEvent":{"action":"suggest_command","value":"/trigger player_info_v2 set -2$(id_with_leading_zeroes)"}}," ",\
        {"text":"[Outbox]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to see ","color":"blue"},{"storage":"pandamium:temp","nbt":"target","interpret":true},"'s ",{"text":"Outbox","bold":true},{"text":"\n\nA command will be suggested to you, not automatically ran","color":"dark_gray"}]},"clickEvent":{"action":"suggest_command","value":"/trigger player_info_v2 set -3$(id_with_leading_zeroes)"}},\
    "\n",\
        {"text":"Punishments:","color":"aqua","bold":true}," ",\
        {"text":"[Jail]","color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Click to jail ","color":"light_purple"},{"storage":"pandamium:temp","nbt":"target","interpret":true},{"text":"\n\nA command will be suggested to you, not automatically ran","color":"dark_gray"}]},"clickEvent":{"action":"suggest_command","value":"/trigger jail set $(id)"}}," ",\
        {"text":"[Unjail]","color":"dark_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Click to unjail ","color":"dark_purple"},{"storage":"pandamium:temp","nbt":"target","interpret":true},{"text":"\n\nA command will be suggested to you, not automatically ran","color":"dark_gray"}]},"clickEvent":{"action":"suggest_command","value":"/trigger unjail set $(id)"}}," ",\
        {"text":"[Kick]","color":"dark_aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to kick ","color":"dark_aqua"},{"storage":"pandamium:temp","nbt":"target","interpret":true},{"text":"\nPlayer must be online","color":"red"},{"text":"\n\nA command will be suggested to you, not automatically ran","color":"dark_gray"}]},"clickEvent":{"action":"suggest_command","value":"/trigger kick set $(id)"}}," ",\
        {"text":"[Ban]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Click to ban ","color":"red"},{"storage":"pandamium:temp","nbt":"target","interpret":true},{"text":"\nPlayer must be online","color":"red"},{"text":"\n\nA command will be suggested to you, not automatically ran","color":"dark_gray"}]},"clickEvent":{"action":"suggest_command","value":"/trigger ban set $(id)"}},\
    "\n",\
        {"text":"RTP Cooldown:","color":"aqua","bold":true}," ",\
        {"text":"[none]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click to remove ","color":"green"},{"storage":"pandamium:temp","nbt":"target","interpret":true},"'s RTP trigger restrictions"]},"clickEvent":{"action":"run_command","value":"/trigger player_info_v2 set -4$(id_with_leading_zeroes)"}}," ",{"text":"[5m]","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Click to set ","color":"yellow"},{"storage":"pandamium:temp","nbt":"target","interpret":true},"'s RTP cooldown to 5 minutes"]},"clickEvent":{"action":"run_command","value":"/trigger player_info_v2 set -5$(id_with_leading_zeroes)"}}," ",{"text":"[1h]","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"Click to set ","color":"yellow"},{"storage":"pandamium:temp","nbt":"target","interpret":true},"'s RTP cooldown to 1 hour"]},"clickEvent":{"action":"run_command","value":"/trigger player_info_v2 set -6$(id_with_leading_zeroes)"}}," ",{"text":"[∞]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Click to disable ","color":"red"},{"storage":"pandamium:temp","nbt":"target","interpret":true},"'s RTP trigger"]},"clickEvent":{"action":"run_command","value":"/trigger player_info_v2 set -7$(id_with_leading_zeroes)"}}\
]

tellraw @s {"text":"=============================","color":"yellow"}

return 1
