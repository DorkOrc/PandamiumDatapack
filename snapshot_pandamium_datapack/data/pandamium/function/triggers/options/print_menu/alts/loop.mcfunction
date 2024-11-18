# arguments: id

$function pandamium:utils/database/players/load/from_id {id:$(id)}

$execute unless data storage pandamium:temp alts[0].flags run tellraw @s [{"text":"• "},[{"storage":"pandamium.db.players:io","nbt":"selected.entry.username","hoverEvent":{"action":"show_text","contents":{"text":"Click to copy \"$(id)\" to clipboard"}},"clickEvent":{"action":"copy_to_clipboard","value":"$(id)"}}," ",[{"text":"(","color":"gray"},{"storage":"pandamium:temp","nbt":"alts[0].id","bold":true},")"]]," ",{"text":"[flags]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":"none"}}]
$execute if data storage pandamium:temp alts[0].flags run tellraw @s [{"text":"• "},[{"storage":"pandamium.db.players:io","nbt":"selected.entry.username","hoverEvent":{"action":"show_text","contents":{"text":"Click to copy \"$(id)\" to clipboard"}},"clickEvent":{"action":"copy_to_clipboard","value":"$(id)"}}," ",[{"text":"(","color":"gray"},{"storage":"pandamium:temp","nbt":"alts[0].id","bold":true},")"]]," ",{"text":"[flags]","color":"dark_gray","hoverEvent":{"action":"show_text","contents":[{"storage":"pandamium:temp","nbt":"alts[0].flags"}]}}]

data remove storage pandamium:temp alts[0]
execute if data storage pandamium:temp alts[0] run function pandamium:triggers/options/print_menu/alts/loop with storage pandamium:temp alts[0]
