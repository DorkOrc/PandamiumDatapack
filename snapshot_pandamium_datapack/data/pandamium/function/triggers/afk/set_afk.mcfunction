scoreboard players set @s idle.time 1073741824
function pandamium:player/update_tablist_value

tellraw @s [{text:"[AFK]",color:"dark_green"},{text:" You are now considered ",color:"green",extra:[{text:"AFK",color:"aqua"},"! ",{text:"[💬]",color:"dark_aqua",hover_event:{action:"show_text",value:[{text:"Click to tell online players that you are AFK",color:"dark_aqua"},{text:"\n\nA message will be suggested to you, not automatically sent",color:"dark_gray"}]},click_event:{action:"suggest_command",command:"/me went AFK"}}]}]
