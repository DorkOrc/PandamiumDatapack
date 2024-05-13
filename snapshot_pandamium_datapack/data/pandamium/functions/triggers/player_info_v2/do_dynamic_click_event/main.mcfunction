scoreboard players operation <click_event_id> variable = @s player_info_v2
scoreboard players operation <click_event_id> variable *= #-1 constant
execute store result storage pandamium:templates macro.click_event_id.click_event_id int 1 run scoreboard players remove <click_event_id> variable 2146000000

function pandamium:utils/database/click_events/load/from_click_event_id with storage pandamium:templates macro.click_event_id

execute store result score <owner_id> variable run data get storage pandamium.db.click_events:io selected.entry.owner.id
execute unless score <owner_id> variable = @s id run return run tellraw @s [{"text":"[Player Info V2]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
execute unless data storage pandamium.db.click_events:io selected.entry{trigger:"player_info_v2"} run return run tellraw @s [{"text":"[Player Info V2]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

# currently only "teleport" type exists
execute unless data storage pandamium.db.click_events:io selected.entry.data{type:"teleport"} run return run tellraw @s [{"text":"[Player Info V2]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]

execute store result score <tp_x> variable run data get storage pandamium.db.click_events:io selected.entry.data.position[0]
execute store result score <tp_y> variable run data get storage pandamium.db.click_events:io selected.entry.data.position[1]
execute store result score <tp_z> variable run data get storage pandamium.db.click_events:io selected.entry.data.position[2]
execute store result score <dimension> variable store result score <tp_d> variable run data get storage pandamium.db.click_events:io selected.entry.data.position[3]
function pandamium:triggers/player_info_v2/do_dynamic_click_event/with_username with storage pandamium.db.click_events:io selected.entry.data

function pandamium:utils/get/dimension_name/from_score
tellraw @s [{"text":"[Player Info V2]","color":"dark_green"},[{"text":" Teleported to ","color":"green"},[{"score":{"name":"<tp_x>","objective":"variable"},"color":"aqua"}," ",{"score":{"name":"<tp_y>","objective":"variable"}}," ",{"score":{"name":"<tp_z>","objective":"variable"}}]," in ",{"storage":"pandamium:temp","nbt":"dimension_name","color":"aqua"},"!"]]
