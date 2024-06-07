# arguments: source, escaped_json

$tellraw @a[scores={id=$(source)},limit=1] [{"color":"dark_green","text":"[","extra":[{"storage":"pandamium:queue","nbt":"selected.entry.meta.name","interpret":true},"]"]},[{"text":" Compiled ","color":"green"},{"text":"[parkour_3]","color":"aqua"}," leader board! "],{"text":"[📋]","color":"gold","hoverEvent":{"action":"show_text","contents":{"color":"gold","text":"Click to copy ","extra":[{"text":"compiled [parkour_3] leader board","bold":true}," to your clipboard"]}},"clickEvent":{"action":"copy_to_clipboard","value":"$(escaped_json)"}}]
