data modify storage pandamium:temp player_info.nbt set from entity @a[tag=player_info.target,limit=1]
execute as @a[tag=player_info.target,limit=1] run function pandamium:utils/database/players/load/self

#

tellraw @s [{"text":"======== ","color":"yellow"},{"text":"Player Info","bold":true}," ========",{"text":"\nPlayer: ","bold":true,"color":"yellow"},{"selector":"@a[tag=player_info.target,limit=1]"}," (",{"score":{"name":"@a[tag=player_info.target,limit=1]","objective":"id"},"bold":true},")"]

function pandamium:triggers/player_info/print_playtime

execute store result score <votes> variable run scoreboard players get @a[tag=player_info.target,limit=1] votes
tellraw @s [{"text":"Votes: ","color":"gold"},{"score":{"name":"<votes>","objective":"variable"},"bold":true,"color":"yellow"}]

execute as @a[tag=player_info.target,limit=1] run function pandamium:triggers/player_info/print_spawnpoint
function pandamium:triggers/player_info/print_last_death_location

scoreboard players operation <dimension> variable = @a[tag=player_info.target,limit=1] last_position.x
function pandamium:utils/get/dimension_name/from_score
tellraw @s [{"text":"Last Position: ","color":"gold"},{"text":"[👁]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"gold"},[{"score":{"name":"@a[tag=player_info.target,limit=1]","objective":"last_position.x"},"bold":true,"color":"yellow"}," ",{"score":{"name":"@a[tag=player_info.target,limit=1]","objective":"last_position.y"}}," ",{"score":{"name":"@a[tag=player_info.target,limit=1]","objective":"last_position.z"}}]," in ",{"nbt":"dimension_name","storage":"pandamium:temp","color":"yellow","bold":true}]}}]

execute if data storage pandamium.db:players selected.entry.data.tp_history run tellraw @s [{"text":"Teleport History: ","color":"gold"},{"text":"[🗺]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":["• ",{"storage":"pandamium.db:players","nbt":"selected.entry.data.tp_history[]","separator":"\n• "}]}}," (W.I.P.)"]
execute unless data storage pandamium.db:players selected.entry.data.tp_history run tellraw @s [{"text":"Teleport History: ","color":"gold"},{"text":"[🗺]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":{"text":"none"}}}," (W.I.P.)"]

execute store result score <health> variable run data get storage pandamium:temp player_info.nbt.Health
execute store result score <hunger> variable run data get storage pandamium:temp player_info.nbt.foodLevel
tellraw @s [{"text":"Health: ","color":"gold"},{"score":{"name":"<health>","objective":"variable"},"bold":true,"color":"yellow"},"  Hunger: ",{"score":{"name":"<hunger>","objective":"variable"},"bold":true,"color":"yellow"}]

tellraw @s {"text":"[Target Options Menu]","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"Click to see target's ","color":"yellow"},{"text":"Options","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger player_info set -22"}}

tellraw @s ""

# Click Events
execute if score @s staff_perms matches ..1 run tellraw @s [{"text":"","color":"yellow"},{"text":"[Jail]","hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"yellow"},{"text":"Jail","bold":true}," target"]},"clickEvent":{"action":"run_command","value":"/trigger player_info set -5"}}," ",{"text":"[Unjail]","hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"yellow"},{"text":"Unjail","bold":true}," target"]},"clickEvent":{"action":"run_command","value":"/trigger player_info set -7"}}," ",{"text":"[Kick]","hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"yellow"},{"text":"Kick","bold":true}," target"]},"clickEvent":{"action":"run_command","value":"/trigger player_info set -8"}}]
execute if score @s staff_perms matches 2.. run tellraw @s [{"text":"","color":"yellow"},{"text":"[Jail]","hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"yellow"},{"text":"Jail","bold":true}," target"]},"clickEvent":{"action":"run_command","value":"/trigger player_info set -5"}}," ",{"text":"[Unjail]","hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"yellow"},{"text":"Unjail","bold":true}," target"]},"clickEvent":{"action":"run_command","value":"/trigger player_info set -7"}}," ",{"text":"[Kick]","hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"yellow"},{"text":"Kick","bold":true}," target"]},"clickEvent":{"action":"run_command","value":"/trigger player_info set -8"}}," ",{"text":"[Ban]","color":"gold","hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"gold"},{"text":"Ban","bold":true}," target"]},"clickEvent":{"action":"run_command","value":"/trigger player_info set -9"}}]

tellraw @s [{"text":"","color":"yellow"},{"text":"[Inventory]","hoverEvent":{"action":"show_text","value":[{"text":"Click to see target's ","color":"yellow"},{"text":"Inventory","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger player_info set -10"}}," ",{"text":"[Ender Chest]","hoverEvent":{"action":"show_text","value":[{"text":"Click to see target's ","color":"yellow"},{"text":"Ender Chest","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger player_info set -11"}}," ",{"text":"[Homes]","hoverEvent":{"action":"show_text","value":[{"text":"Click to see target's ","color":"yellow"},{"text":"Homes","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger player_info set -12"}}," ",{"text":"[Votes]","hoverEvent":{"action":"show_text","value":[{"text":"Click to see target's ","color":"yellow"},{"text":"Votes","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger player_info set -3"}}," ",{"text":"[Spawnpoint]","hoverEvent":{"action":"show_text","value":[{"text":"Click to see target's ","color":"yellow"},{"text":"Spawnpoint","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger player_info set -4"}}]
tellraw @s [{"text":"","color":"yellow"},{"text":"[Give Guidebook]","hoverEvent":{"action":"show_text","value":[{"text":"Click to give target a ","color":"yellow"},{"text":"Guidebook","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger player_info set -13"}}," ",{"text":"[Send Discord Invite]","hoverEvent":{"action":"show_text","value":[{"text":"Click to send target a ","color":"yellow"},{"text":"Discord","bold":true}," invitation"]},"clickEvent":{"action":"run_command","value":"/trigger player_info set -14"}}," ",{"text":"[Teleport to Spawn]","hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport target to ","color":"yellow"},{"text":"Spawn","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger player_info set -15"}}]

execute if score @s staff_perms matches 2.. run tellraw @s [{"text":"","color":"gold"},{"text":"[TP]","hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"gold"},{"text":"Teleport","bold":true}," to target"]},"clickEvent":{"action":"run_command","value":"/trigger player_info set -16"}}," ",{"text":"[TP to Pre-Jail Location]","hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to target's ","color":"gold"},{"text":"Pre-Jail Location","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger player_info set -17"}}," ",{"text":"[TP to Last Death Location]","hoverEvent":{"action":"show_text","value":[{"text":"Click to teleport to target's ","color":"gold"},{"text":"Last Death Location","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger player_info set -21"}}]
execute if score @s staff_perms matches 3.. run tellraw @s [{"text":"","color":"#FB6F00"},{"text":"[Take Inventory]","hoverEvent":{"action":"show_text","value":[{"text":"Click to take target's ","color":"#FB6F00"},{"text":"Inventory","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger player_info set -18"}}," ",{"text":"[Take Ender Chest]","hoverEvent":{"action":"show_text","value":[{"text":"Click to take target's ","color":"#FB6F00"},{"text":"Ender Chest","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger player_info set -19"}}," ",{"text":"[Take Bound Items]","hoverEvent":{"action":"show_text","value":[{"text":"Click to take target's ","color":"#FB6F00"},{"text":"Bound Items","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger player_info set -20"}}]

tellraw @s {"text":"=============================","color":"yellow"}

return 0
