# arguments: username, id, id_with_leading_zeroes

$tellraw @s [{"text":"======== ","color":"yellow"},{"text":"Player Info","bold":true}," ========",{"text":"\nPlayer: ","bold":true,"color":"yellow"},{"storage":"pandamium:temp","nbt":"target","interpret":true}," (",{"score":{"name":"$(username)","objective":"id"},"bold":true},")"]

tellraw @s [{"text":"Playtimes: ","color":"gold"},{"text":"[Total] [Monthly] [Session]","color":"dark_gray"}]
#$tellraw @s [{"text":"Votes: ","color":"gold"},{"score":{"name":"$(username)","objective":"votes"},"bold":true,"color":"yellow"}]

# spawnpoint
$scoreboard players operation <dimension> variable = $(username) spawnpoint_d
function pandamium:utils/get/dimension_name/from_score
$execute if score $(username) spawnpoint_x matches -2147483648.. if entity $(username) run tellraw @s [{"text":"Last Set Spawnpoint: ","color":"gold"},{"text":"[🛏]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gold"},[{"score":{"name":"$(username)","objective":"spawnpoint_x"},"color":"yellow"}," ",{"score":{"name":"$(username)","objective":"spawnpoint_y"}}," ",{"score":{"name":"$(username)","objective":"spawnpoint_z"}}]," in ",{"nbt":"dimension_name","storage":"pandamium:temp","color":"yellow"}]}}," ",{"text":"[→]","color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to ","color":"blue"},{"storage":"pandamium:temp","nbt":"target","interpret":true},"'s ",{"text":"spawnpoint","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger spawnpoint set $(id)"}}]
$execute if score $(username) spawnpoint_x matches -2147483648.. unless entity $(username) run tellraw @s [{"text":"Last Set Spawnpoint: ","color":"gold"},{"text":"[🛏]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gold"},[{"score":{"name":"$(username)","objective":"spawnpoint_x"},"color":"yellow"}," ",{"score":{"name":"$(username)","objective":"spawnpoint_y"}}," ",{"score":{"name":"$(username)","objective":"spawnpoint_z"}}]," in ",{"nbt":"dimension_name","storage":"pandamium:temp","color":"yellow"}]}}," ",{"text":"[→]","color":"gray"}]
$execute unless score $(username) spawnpoint_x matches -2147483648.. run tellraw @s [{"text":"Last Set Spawnpoint: ","color":"gold"},{"text":"Not Set","color":"gray"}]

# last death location
#function pandamium:triggers/player_info_v2/print_last_death_location

# last known position
$execute store result score <dimension> variable run scoreboard players get $(username) last_position.d
function pandamium:utils/get/dimension_name/from_score
$execute if score $(username) last_position.y matches -2147483648.. run tellraw @s [{"text":"Last Position: ","color":"gold"},{"text":"[👁]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gold"},[{"score":{"name":"$(username)","objective":"last_position.x"},"color":"yellow"}," ",{"score":{"name":"$(username)","objective":"last_position.y"}}," ",{"score":{"name":"$(username)","objective":"last_position.z"}}]," in ",{"nbt":"dimension_name","storage":"pandamium:temp","color":"yellow"}]}}," ",{"text":"[→]","color":"blue"}]
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

tellraw @s {"text":"[Teleport History] [Known Alts] [Options]\n[Inventory] [Ender Chest] [Homes]","color":"blue"}

tellraw @s ""
tellraw @s "Punishments:\n [jail] [unjail] [kick] [ban] [/unban/]"
tellraw @s "Actions:\n [guidebook] [discord] [/tp_to_spawn/]"
tellraw @s " [tp] [pre_jail_tp]"
tellraw @s " [take_inventory] [take_ender_chest] "

tellraw @s {"text":"=============================","color":"yellow"}

return 1
