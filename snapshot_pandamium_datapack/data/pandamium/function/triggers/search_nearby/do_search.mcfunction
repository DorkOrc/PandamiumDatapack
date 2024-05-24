tellraw @s [{"text":"[Search Nearby]","color":"dark_green"},[{"text":" Queued region search!","color":"green"}]]
function pandamium:impl/queue/actions/search_nearby_for_homes/new

execute if dimension minecraft:overworld in the_nether run function pandamium:impl/queue/actions/search_nearby_for_homes/new
execute if dimension minecraft:the_nether in overworld run function pandamium:impl/queue/actions/search_nearby_for_homes/new
