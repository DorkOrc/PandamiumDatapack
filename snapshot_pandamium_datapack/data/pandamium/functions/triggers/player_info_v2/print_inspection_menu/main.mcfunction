# arguments: username, id, id_with_leading_zeroes

$tellraw @s [{"text":"======== ","color":"yellow"},{"text":"Player Info","bold":true}," ========",{"text":"\nPlayer: ","bold":true,"color":"yellow"},{"storage":"pandamium:temp","nbt":"target","interpret":true}," (",{"score":{"name":"$(username)","objective":"id"},"bold":true},")"]

$tellraw @s [{"text":"Playtimes: ","color":"gold"},\
    {"text":"[Total]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":["Total Playtime (raw data):\n",{"score":{"name":"$(username)","objective":"playtime_ticks"}}]}}," ",\
    {"text":"[Monthly]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":["Monthly Playtime (raw data):\n",{"score":{"name":"$(username)","objective":"monthly_playtime_ticks"}}]}}," ",\
    {"text":"[Yearly]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":["Yearly Playtime (raw data):\n",{"score":{"name":"$(username)","objective":"yearly_playtime_ticks"}}]}}," ",\
    {"text":"[Session]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":["Online Playtime (raw data):\n",{"score":{"name":"$(username)","objective":"online_ticks"}}]}}\
]

#$tellraw @s [{"text":"Votes: ","color":"gold"},{"score":{"name":"$(username)","objective":"votes"},"bold":true,"color":"yellow"}]

# spawnpoint
$scoreboard players operation <dimension> variable = $(username) spawnpoint_d
function pandamium:utils/get/dimension_name/from_score
$execute if score $(username) spawnpoint_x matches -2147483648.. run tellraw @s [{"text":"Last Set Spawnpoint: ","color":"gold"},{"text":"[🛏]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gold"},[{"score":{"name":"$(username)","objective":"spawnpoint_x"},"color":"yellow"}," ",{"score":{"name":"$(username)","objective":"spawnpoint_y"}}," ",{"score":{"name":"$(username)","objective":"spawnpoint_z"}}]," in ",{"nbt":"dimension_name","storage":"pandamium:temp","color":"yellow"}]}}," ",{"text":"[→]","color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"blue"},{"storage":"pandamium:temp","nbt":"target","interpret":true},"'s ",{"text":"spawnpoint","bold":true},{"text":"\nPlayer must be online","color":"red"}]},"clickEvent":{"action":"run_command","value":"/trigger spawnpoint set $(id)"}}]
$execute unless score $(username) spawnpoint_x matches -2147483648.. run tellraw @s [{"text":"Last Set Spawnpoint: ","color":"gold"},{"text":"Not Set","color":"gray"}]

# last death location
#function pandamium:triggers/player_info_v2/print_last_death_location

# last known position
$execute store result score <dimension> variable run scoreboard players get $(username) last_position.d
function pandamium:utils/get/dimension_name/from_score
$execute if score $(username) last_position.y matches -2147483648.. run tellraw @s [{"text":"Last Position: ","color":"gold"},{"text":"[👁]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gold"},[{"score":{"name":"$(username)","objective":"last_position.x"},"color":"yellow"}," ",{"score":{"name":"$(username)","objective":"last_position.y"}}," ",{"score":{"name":"$(username)","objective":"last_position.z"}}]," in ",{"nbt":"dimension_name","storage":"pandamium:temp","color":"yellow"}]}}," ",{"text":"[→]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to teleport to ","color":"blue"},{"storage":"pandamium:temp","nbt":"target","interpret":true},"'s last position",{"text":"\nPlayer must be online","color":"red"}]},"clickEvent":{"action":"run_command","value":"/trigger tp set $(id)"}}]
$execute unless score $(username) last_position.y matches -2147483648.. run tellraw @s [{"text":"Last Position: ","color":"gold"},{"text":"Unknown","color":"gray"}]
# used y here because some players' last_position.x were accidentally set to 0 when they should be unset

# last session start date
$execute if score $(username) last_joined.year matches -2147483648.. run scoreboard players operation <next_hour> variable = @s last_joined.hour
scoreboard players add <next_hour> variable 1
execute if score <next_hour> variable matches 25 run scoreboard players set <next_hour> variable 0
$execute if score $(username) last_joined.year matches -2147483648.. run tellraw @s [{"text":"Last Session Start Date: ","color":"gold"},{"text":"[⌚]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gold"},[{"score":{"name":"$(username)","objective":"last_joined.day"},"color":"yellow"},"/",{"score":{"name":"$(username)","objective":"last_joined.month"}},"/",{"score":{"name":"$(username)","objective":"last_joined.year"}}]," between ",[{"score":{"name":"$(username)","objective":"last_joined.hour"},"color":"yellow"},":10 UTC"]," and ",[{"score":{"name":"<next_hour>","objective":"variable"},"color":"yellow"},":10 UTC"]]}}]
$execute unless score $(username) last_joined.year matches -2147483648.. run tellraw @s [{"text":"Last Session Start Date: ","color":"gold"},{"text":"Unknown","color":"gray"}]

# first join date
$execute if score $(username) first_joined.year matches -2147483648.. run scoreboard players operation <next_hour> variable = @s first_joined.hour
scoreboard players add <next_hour> variable 1
execute if score <next_hour> variable matches 25 run scoreboard players set <next_hour> variable 0
$execute if score $(username) first_joined.year matches -2147483648.. run tellraw @s [{"text":"First Join Date: ","color":"gold"},{"text":"[⌚]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gold"},[{"score":{"name":"$(username)","objective":"first_joined.day"},"color":"yellow"},"/",{"score":{"name":"$(username)","objective":"first_joined.month"}},"/",{"score":{"name":"$(username)","objective":"first_joined.year"}}]," between ",[{"score":{"name":"$(username)","objective":"first_joined.hour"},"color":"yellow"},":10 UTC"]," and ",[{"score":{"name":"<next_hour>","objective":"variable"},"color":"yellow"},":10 UTC"]]}}]
$execute unless score $(username) first_joined.year matches -2147483648.. run tellraw @s [{"text":"First Join Date: ","color":"gold"},{"text":"Unknown","color":"gray"}," ",{"text":"ℹ","color":"blue","hoverEvent":{"action":"show_text","contents":["This player joined before 21st\nOctober 2023 13:15 UTC"]}}]

# teleport history
#function pandamium:triggers/player_info_v2/print_teleport_history_menu/main

$tellraw @s ["",\
        {"text":"[Teleport History]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to see ","color":"blue"},{"storage":"pandamium:temp","nbt":"target","interpret":true},"'s ",{"text":"Teleport History","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger player_info_v2 set -1$(id_with_leading_zeroes)"}}," ",\
        {"text":"[Known Alts]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":["Alt Of (raw data):\n",{"storage":"pandamium.db:players","nbt":"selected.entry.data.alt_of","color":"gray"},"\nAlts (raw data):\n",{"storage":"pandamium.db:players","nbt":"selected.entry.data.alts","color":"gray"}]}}," ",\
        {"text":"[Options]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Unfinished.","color":"gray"}]}},\
    "\n",\
        {"text":"[Inventory]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to see ","color":"blue"},{"storage":"pandamium:temp","nbt":"target","interpret":true},"'s ",{"text":"Inventory","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger inventory set $(id)"}}," ",\
        {"text":"[Ender Chest]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to see ","color":"blue"},{"storage":"pandamium:temp","nbt":"target","interpret":true},"'s ",{"text":"Ender Chest","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger enderchest set $(id)"}}," ",\
        {"text":"[Homes]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to see ","color":"blue"},{"storage":"pandamium:temp","nbt":"target","interpret":true},"'s ",{"text":"Homes","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger homes set $(id)"}}," ",\
        {"text":"[Mail]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":["Inbox (raw data):\n",{"storage":"pandamium.db:players","nbt":"selected.entry.data.mail.inbox","color":"gray"},"\nOutbox (raw data):\n",{"storage":"pandamium.db:players","nbt":"selected.entry.data.mail.outbox","color":"gray"},"\nDrafts (raw data):\n",{"storage":"pandamium.db:players","nbt":"selected.entry.data.mail.drafts","color":"gray"}]}},\
    "\n\n",\
        {"text":"Punishments:","color":"aqua","bold":true},\
    "\n ",\
        {"text":"[Jail]","color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Click to jail ","color":"light_purple"},{"storage":"pandamium:temp","nbt":"target","interpret":true}]},"clickEvent":{"action":"suggest_command","value":"/trigger jail set $(id)"}}," ",\
        {"text":"[Unjail]","color":"dark_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Click to unjail ","color":"dark_purple"},{"storage":"pandamium:temp","nbt":"target","interpret":true}]},"clickEvent":{"action":"suggest_command","value":"/trigger unjail set $(id)"}}," ",\
        {"text":"[Kick]","color":"dark_aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to kick ","color":"dark_aqua"},{"storage":"pandamium:temp","nbt":"target","interpret":true}]},"clickEvent":{"action":"suggest_command","value":"/trigger kick set $(id)"}}," ",\
        {"text":"[Ban]","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Click to ban ","color":"red"},{"storage":"pandamium:temp","nbt":"target","interpret":true}]},"clickEvent":{"action":"suggest_command","value":"/trigger ban set $(id)"}},\
    "\n",\
        {"text":"Teleport To:","color":"aqua","bold":true},\
    "\n ",\
        {"text":"[Last Position]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to teleport to ","color":"blue"},{"storage":"pandamium:temp","nbt":"target","interpret":true},"'s last position"]},"clickEvent":{"action":"suggest_command","value":"/trigger tp set $(id)"}}," ",\
        {"text":"[Pre-Jail Position]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to teleport to ","color":"blue"},{"storage":"pandamium:temp","nbt":"target","interpret":true},"'s pre-jail position"]},"clickEvent":{"action":"suggest_command","value":"/trigger pre_jail_tp set $(id)"}},\
    "\n",\
        {"text":"Move Items:","color":"aqua","bold":true},\
    "\n ",\
        {"text":"[Inventory]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to move ","color":"blue"},{"storage":"pandamium:temp","nbt":"target","interpret":true},"'s inventory to the staff world",{"text":"\nPlayer must be online","color":"red"}]},"clickEvent":{"action":"suggest_command","value":"/trigger take_inventory set $(id)"}}," ",\
        {"text":"[Ender Chest]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to move ","color":"blue"},{"storage":"pandamium:temp","nbt":"target","interpret":true},"'s ender chest to the staff world",{"text":"\nPlayer must be online","color":"red"}]},"clickEvent":{"action":"suggest_command","value":"/trigger take_enderchest set $(id)"}}," ",\
        {"text":"[Bound Items]","color":"blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click to move ","color":"blue"},{"storage":"pandamium:temp","nbt":"target","interpret":true},"'s bound items to the staff world",{"text":"\nPlayer must be online","color":"red"}]},"clickEvent":{"action":"suggest_command","value":"/trigger take_bound_items set $(id)"}}\
]

tellraw @s {"text":"=============================","color":"yellow"}

return 1
