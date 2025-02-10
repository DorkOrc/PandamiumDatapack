scoreboard players operation <source_id> variable = @s id

function pandamium:utils/run_command_as_players_sorted_by_rank {command:"function pandamium:triggers/mail/print_selection_menu/as_player"}

tellraw @s [" ",{text:"[Search Offline Players]",color:"#6100B9",hover_event:{action:"show_text",value:[{text:"Click to search for players by username",color:"#6100B9"}]},click_event:{action:"run_command",command:"trigger mail set 1000006"}}]

tellraw @s {text:"\nOther Mailboxes:",bold:true,color:"aqua"}
execute unless score @s staff_perms matches 1.. run tellraw @s [" ",{text:"[Mail the Staff Team]",color:"yellow",hover_event:{action:"show_text",value:[{text:"Click to send mail to\n",color:"yellow"},{text:"The Staff Team",bold:true}]},click_event:{action:"run_command",command:"trigger mail set 1000201"}}]
execute if score @s staff_perms matches 1.. run tellraw @s [" ",{text:"[Mail the Staff Team]",color:"gray",hover_event:{action:"show_text",value:[{text:"Use the staff channels on the Discord server",color:"gray"}]}}]

execute if score @s staff_perms matches 4.. run tellraw @s [" ",{text:"[Create a News Post]",color:"#00AA7F",hover_event:{action:"show_text",value:[{text:"Click to send mail to\n",color:"#00AA7F"},{text:"News Feed",bold:true}]},click_event:{action:"run_command",command:"trigger mail set 1000202"}}]
