execute if score <sender_is_player> variable matches 1 run tellraw @s [{text:"[Mail]",color:"dark_green"},{text:" Sent ",color:"green",extra:[{text:"",color:"aqua",extra:[{storage:"pandamium:temp",nbt:"receivers_display_names[]",interpret:true,separator:{text:" and ",color:"green"}}]},{text:" mail! "},{text:"[Main Menu]",color:"gold",hover_event:{action:"show_text",text:[{text:"Click to go to ",color:"gold"},{text:"Main Menu",bold:true},{text:" page"}]},click_event:{action:"run_command",command:"trigger mail set 1"}}]}]
execute if score <sender_is_player> variable matches 0 run tellraw @s [{text:"[Mail]",color:"dark_green"},{text:" Sent ",color:"green",extra:[{text:"",color:"aqua",extra:[{storage:"pandamium:temp",nbt:"receivers_display_names[]",interpret:true,separator:{text:" and ",color:"green"}}]},{text:" mail as "},{text:"",color:"aqua",extra:[{storage:"pandamium:temp",nbt:"sender_display_name",interpret:true}]},{text:"! "},{text:"[Main Menu]",color:"gold",hover_event:{action:"show_text",text:[{text:"Click to go to ",color:"gold"},{text:"Main Menu",bold:true},{text:" page"}]},click_event:{action:"run_command",command:"trigger mail set 1"}}]}]

execute if score <was_draft> variable matches 1 run scoreboard players remove @s mail_data.drafts 1
