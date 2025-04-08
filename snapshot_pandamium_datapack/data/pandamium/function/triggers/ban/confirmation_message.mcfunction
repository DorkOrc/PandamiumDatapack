# arguments: id

$tellraw @s [{text:"[Ban]",color:"dark_red"},[{color:"red",text:" Are you sure you want to ban "},{storage:"pandamium:local",nbt:'functions."pandamium:triggers/ban/*".target_display_name',interpret:true},"? "],{text:"[✔]",color:"dark_green",hover_event:{action:"show_text",value:[{color:"dark_green",text:"Click to ban "},{storage:"pandamium:local",nbt:'functions."pandamium:triggers/ban/*".target_display_name',interpret:true}]},click_event:{action:"run_command",command:"trigger ban set -$(id)"}}]
