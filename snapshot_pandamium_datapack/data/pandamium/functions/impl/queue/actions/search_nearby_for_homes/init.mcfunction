data modify storage pandamium:queue selected.entry.homes_found set value 0

execute unless data storage pandamium:queue selected.entry.meta.name run data modify storage pandamium:queue selected.entry.meta.name set value '"Search Nearby for Homes"'

execute store result storage pandamium:queue selected.entry.meta.max int 1 if data storage pandamium:queue selected.entry.homes[]

execute in pandamium:staff_world positioned 0. 0 0. summon area_effect_cloud run data modify storage pandamium:local functions."pandamium:impl/queue/actions/search_nearby_for_homes/init".uuid set from entity @s UUID
data modify storage pandamium:local functions."pandamium:impl/queue/actions/search_nearby_for_homes/init".uuid_0 set from storage pandamium:local functions."pandamium:impl/queue/actions/search_nearby_for_homes/init".uuid[0]
data modify storage pandamium:local functions."pandamium:impl/queue/actions/search_nearby_for_homes/init".uuid_1 set from storage pandamium:local functions."pandamium:impl/queue/actions/search_nearby_for_homes/init".uuid[1]
data modify storage pandamium:local functions."pandamium:impl/queue/actions/search_nearby_for_homes/init".uuid_2 set from storage pandamium:local functions."pandamium:impl/queue/actions/search_nearby_for_homes/init".uuid[2]
data modify storage pandamium:local functions."pandamium:impl/queue/actions/search_nearby_for_homes/init".uuid_3 set from storage pandamium:local functions."pandamium:impl/queue/actions/search_nearby_for_homes/init".uuid[3]
function pandamium:impl/queue/actions/search_nearby_for_homes/set_node_entity_tag with storage pandamium:local functions."pandamium:impl/queue/actions/search_nearby_for_homes/init"
