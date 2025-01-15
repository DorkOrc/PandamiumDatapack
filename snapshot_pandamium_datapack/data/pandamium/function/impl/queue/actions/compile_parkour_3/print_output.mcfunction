# arguments: source, escaped_json

$tellraw @a[scores={id=$(source)},limit=1] [{color:"dark_green",text:"[",extra:[{storage:"pandamium:queue",nbt:"selected.entry.meta.name",interpret:true},{text:"]"}]},{text:" Compiled ",color:"green",extra:[{text:"[parkour_3]",color:"aqua"},{text:" leader board! "}]},{text:"[📋]",color:"gold",hover_event:{action:"show_text",value:{color:"gold",text:"Click to copy ",extra:[{text:"compiled [parkour_3] leader board",bold:true},{text:" to your clipboard"}]}}}]
