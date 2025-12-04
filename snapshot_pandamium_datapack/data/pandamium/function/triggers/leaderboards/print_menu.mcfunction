# header
tellraw @s [{text:"======== ",color:"aqua"},{text:"Leader Boards",bold:true}," ========"]

# main menu
tellraw @s [{color:"aqua",text:""},{bold:true,text:"Statistics"},":"]
tellraw @s [{color:"green",text:" "},{color:"aqua",text:"[All-Time Playtime]",hover_event:{action:"show_text",value:[{color:"aqua",text:"Click to display the "},{bold:true,text:"All-Time\nPlaytime"}," leader board"]},click_event:{action:"run_command",command:"trigger leaderboards set -1"}},"  |  ",{color:"aqua",text:"[All-Time Votes]",hover_event:{action:"show_text",value:[{color:"aqua",text:"Click to display the "},{bold:true,text:"All-Time\nVotes"}," leader board"]},click_event:{action:"run_command",command:"trigger leaderboards set -2"}},"\n ",{color:"dark_aqua",text:"[Monthly Playtime]",hover_event:{action:"show_text",value:[{color:"dark_aqua",text:"Click to display the "},{bold:true,text:"Monthly\nPlaytime"}," leader board"]},click_event:{action:"run_command",command:"trigger leaderboards set -3"}},"  |  ",{color:"dark_aqua",text:"[Monthly Votes]",hover_event:{action:"show_text",value:[{color:"dark_aqua",text:"Click to display the "},{bold:true,text:"Monthly\nVotes"}," leader board"]},click_event:{action:"run_command",command:"trigger leaderboards set -4"}},"\n ",{color:"blue",text:"[Yearly Playtime]",hover_event:{action:"show_text",value:[{color:"blue",text:"Click to display the "},{bold:true,text:"Yearly\nPlaytime"}," leader board"]},click_event:{action:"run_command",command:"trigger leaderboards set -5"}},"  |  ",{color:"blue",text:"[Yearly Votes]",hover_event:{action:"show_text",value:[{color:"blue",text:"Click to display the "},{bold:true,text:"Yearly Votes"},"\nleader board"]},click_event:{action:"run_command",command:"trigger leaderboards set -6"}}]
tellraw @s [{color:"aqua",text:"\n"},{bold:true,text:"Parkour Courses"},":"]
tellraw @s [{color:"green",text:" "},{color:"aqua",text:"[Forgotten Caverns]",hover_event:{action:"show_text",value:[{color:"aqua",text:"Click to display the "},{bold:true,text:"Forgotten\nCaverns"}," leader board"]},click_event:{action:"run_command",command:"trigger leaderboards set -7"}}]

# embed data
execute store success score <monthly_embed_data_json_generated> variable if data storage pandamium.leader_boards:data previous_month_data.json

data modify storage pandamium:temp previous_month_display_name set value "Previous Month"
function pandamium:utils/get/month_name with storage pandamium.leader_boards:data previous_month_data
execute if data storage pandamium.leader_boards:data previous_month_data.year if data storage pandamium.leader_boards:data previous_month_data.month run data modify storage pandamium:temp previous_month_display_name set value [{storage:"pandamium:temp",nbt:"month_name"}," ",{storage:"pandamium.leader_boards:data",nbt:"previous_month_data.year"}]

tellraw @s[predicate=pandamium:player/min_staff_perms/moderator] {bold:true,color:"yellow",text:"\nEmbed Data: "}

data modify storage pandamium:local functions."pandamium:triggers/leaderboards/*".copy_embed_data set value {color:"gold",text:"[📋]",hover_event:{action:"show_text",value:[{color:"gold",text:"Click to copy "},{bold:true,storage:"pandamium:temp",nbt:"previous_month_display_name",interpret:true}," embed JSON to your clipboard"]},click_event:{action:"copy_to_clipboard"}}
data modify storage pandamium:local functions."pandamium:triggers/leaderboards/*".copy_embed_data.click_event.value set from storage pandamium.leader_boards:data previous_month_data.json
execute if score <monthly_embed_data_json_generated> variable matches 1 run tellraw @s[predicate=pandamium:player/min_staff_perms/moderator] [{color:"gray",text:"• "},{color:"aqua",storage:"pandamium:temp",nbt:"previous_month_display_name",interpret:true}," ",{storage:"pandamium:local",nbt:'functions."pandamium:triggers/leaderboards/*".copy_embed_data',interpret:true}]
execute if score <monthly_embed_data_json_generated> variable matches 0 run tellraw @s[predicate=pandamium:player/min_staff_perms/moderator] [{color:"gray",text:"• "},{color:"aqua",storage:"pandamium:temp",nbt:"previous_month_display_name",interpret:true}," ",{color:"gray",text:"[📋]",hover_event:{action:"show_text",value:[{color:"red",text:""},{storage:"pandamium:temp",nbt:"previous_month_display_name",interpret:true,bold:true}," embed JSON has not been generated"]}}]

# footer
tellraw @s {color:"aqua",text:"================================"}
