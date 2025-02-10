# arguments: x, y, z, dimension

$tellraw @a[scores={send_extra_debug_info=2..}] {text:"[Pandamium: Summoned Christmas Mob at $(x) $(y) $(z) in $(dimension)]",color:"gray",italic:true,hover_event:{action:"show_text",value:["Click to teleport there"]},click_event:{action:"suggest_command",command:"/execute in $(dimension) run tp $(x) $(y) $(z)"}}
