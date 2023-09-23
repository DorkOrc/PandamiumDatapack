# arguments: id
$function pandamium:utils/database/players/load/from_id {id:$(id)}

execute unless data storage pandamium:temp alts[0].priority run tellraw @s [{"text":"• "},{"storage":"pandamium.db:players","nbt":"selected.entry.username"}," ",[{"text":"(","color":"gray"},{"storage":"pandamium:temp","nbt":"alts[0].id","bold":true},")"]]
execute if data storage pandamium:temp alts[0].priority run tellraw @s [{"text":"• "},{"storage":"pandamium.db:players","nbt":"selected.entry.username"}," ",[{"text":"(","color":"gray"},{"storage":"pandamium:temp","nbt":"alts[0].id","bold":true},")"]," ",{"text":"[flags]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"storage":"pandamium:temp","nbt":"alts[0].priority"}]}}]

data remove storage pandamium:temp alts[0]
execute if data storage pandamium:temp alts[0] run function pandamium:triggers/options/print_menu/alts/loop with storage pandamium:temp alts[0]
