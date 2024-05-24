data modify entity @s Tags append from storage pandamium:queue selected.entry.node_entity_tag

execute store result entity @s Pos[1] double 0.002 run scoreboard players get <distance> variable

data modify storage pandamium:local functions."pandamium:impl/queue/actions/search_nearby_for_homes/create_new_node".x set from storage pandamium:queue selected.entry.homes[-1].xyz[0]
data modify storage pandamium:local functions."pandamium:impl/queue/actions/search_nearby_for_homes/create_new_node".y set from storage pandamium:queue selected.entry.homes[-1].xyz[1]
data modify storage pandamium:local functions."pandamium:impl/queue/actions/search_nearby_for_homes/create_new_node".z set from storage pandamium:queue selected.entry.homes[-1].xyz[2]
data modify storage pandamium:local functions."pandamium:impl/queue/actions/search_nearby_for_homes/create_new_node".id set from storage pandamium:queue selected.entry.homes[-1].data[0]
function pandamium:utils/get/display_name/from_id with storage pandamium:local functions."pandamium:impl/queue/actions/search_nearby_for_homes/create_new_node"
function pandamium:impl/queue/actions/search_nearby_for_homes/generate_node_text with storage pandamium:local functions."pandamium:impl/queue/actions/search_nearby_for_homes/create_new_node"

execute store result score <homes_found> variable run data get storage pandamium:queue selected.entry.homes_found
execute store result storage pandamium:queue selected.entry.homes_found int 1 run scoreboard players add <homes_found> variable 1
