tellraw @s [{text:"======== ",color:"aqua"},{text:"Parkour",bold:true}," ========"]

# best times
tellraw @s {text:"Best Times:",bold:true,color:"aqua"}
execute if score @s parkour.leaderboard_blacklist matches 1 run tellraw @s [{text:"⚠ ",color:"yellow",hover_event:{action:"show_text",value:{text:"You may have been blacklisted by\nrequest or as a result of\nhacking/cheating. If you think\nthis is a mistake, please\ncontact a staff member.",color:"red"}}},{text:"You have been blacklisted from parkour leaderboards.",color:"red"}]

execute if score @s parkour_1.best_time matches 1.. run scoreboard players operation <ticks> variable = @s parkour_1.best_time
execute if score @s parkour_1.best_time matches 1.. run function pandamium:impl/parkour/get_formatted_time
execute if score @s parkour_1.best_time matches 1.. run tellraw @s [{storage:"pandamium:dictionary",nbt:"parkour.parkour_1.name",interpret:true,color:"dark_aqua"},": ",{storage:"pandamium:temp",nbt:"formatted_time",interpret:true},{text:" (ARCHIVED)",color:"gray",font:"uniform",hover_event:{action:"show_text",value:{text:"You have completed this course,\nbut it no longer exists.",color:"gray"}}}]

execute if score @s parkour_2.best_time matches 1.. run scoreboard players operation <ticks> variable = @s parkour_2.best_time
execute if score @s parkour_2.best_time matches 1.. run function pandamium:impl/parkour/get_formatted_time
execute if score @s parkour_2.best_time matches 1.. if score <hours> variable matches 0 run tellraw @s [{storage:"pandamium:dictionary",nbt:"parkour.parkour_2.name",interpret:true,color:"dark_aqua"},": ",{storage:"pandamium:temp",nbt:"formatted_time",interpret:true},{text:" (ARCHIVED)",color:"gray",font:"uniform",hover_event:{action:"show_text",value:{text:"You have completed this course,\nbut it no longer exists.",color:"gray"}}}]

execute if score @s parkour_3.best_time matches 1.. run scoreboard players operation <ticks> variable = @s parkour_3.best_time
execute if score @s parkour_3.best_time matches 1.. run function pandamium:impl/parkour/get_formatted_time
execute if score @s parkour_3.best_time matches 1.. if score <hours> variable matches 0 run tellraw @s [{storage:"pandamium:dictionary",nbt:"parkour.parkour_3.name",interpret:true,color:"dark_aqua"}," (Unconfirmed): ",{storage:"pandamium:temp",nbt:"formatted_time",interpret:true}," ",{text:"⚠",color:"yellow",hover_event:{action:"show_text",value:["",{text:"Unconfirmed",color:"yellow",underlined:true},{text:"\nThis time was made before lag correction was added, so may be shorter than your real time.",color:"gray"}]}}]

execute if score @s parkour_3.best_time_real matches 1.. run scoreboard players operation <ticks> variable = @s parkour_3.best_time_real
execute if score @s parkour_3.best_time_real matches 1.. run function pandamium:impl/parkour/get_formatted_time
execute if score @s parkour_3.best_time_real matches 1.. run tellraw @s [{storage:"pandamium:dictionary",nbt:"parkour.parkour_3.name",interpret:true,color:"dark_aqua"},": ",{storage:"pandamium:temp",nbt:"formatted_time",interpret:true}]

execute if score @s parkour_3.best_time_deathless matches 1.. run scoreboard players operation <ticks> variable = @s parkour_3.best_time_deathless
execute if score @s parkour_3.best_time_deathless matches 1.. run function pandamium:impl/parkour/get_formatted_time
execute if score @s parkour_3.best_time_deathless matches 1.. run tellraw @s [{storage:"pandamium:dictionary",nbt:"parkour.parkour_3.name",interpret:true,color:"dark_aqua"}," (Flawless): ",{storage:"pandamium:temp",nbt:"formatted_time",interpret:true}]

execute if score @s parkour_4.shortest_time.time matches 1.. run scoreboard players operation <ticks> variable = @s parkour_4.shortest_time.time
execute if score @s parkour_4.shortest_time.time matches 1.. run function pandamium:impl/parkour/get_formatted_time
execute if score @s parkour_4.shortest_time.time matches 1.. run tellraw @s [{storage:"pandamium:dictionary",nbt:"parkour.parkour_4.name",interpret:true,color:"dark_aqua"}," (Shortest Time): ",{storage:"pandamium:temp",nbt:"formatted_time",interpret:true}," with ",{score:{name:"@s",objective:"parkour_4.shortest_time.falls"}}," falls"]

#execute unless score @s parkour_1.best_time matches 1.. unless score @s parkour_2.best_time matches 1.. unless score @s parkour_3.best_time_real matches 1.. run tellraw @s {text:"No tracked courses exist currently, and you have no archived times.",color:"gray"}

# teleporting
tellraw @s {text:"\nCourses:",bold:true,color:"aqua"}
tellraw @s [{text:" ",color:"green"},{text:"[",color:"aqua",hover_event:{action:"show_text",value:[{text:"Click to teleport to the ",color:"aqua"},{storage:"pandamium:dictionary",nbt:"parkour.parkour_3.name",interpret:true,bold:true}," parkour course",{text:"\n\nOr run ",color:"dark_gray"},{text:"/trigger ",color:"gray"},{text:"parkour.warp.Forgotten_Caverns",color:"aqua"}]},click_event:{action:"run_command",command:"trigger parkour.warp.Forgotten_Caverns"},extra:[{storage:"pandamium:dictionary",nbt:"parkour.parkour_3.name",interpret:true},"]"]},"  |  ",{text:"[",color:"aqua",hover_event:{action:"show_text",value:[{text:"Click to teleport to the ",color:"aqua"},{storage:"pandamium:dictionary",nbt:"parkour.parkour_4.name",interpret:true,bold:true}," parkour course",{text:"\n\nOr run ",color:"dark_gray"},{text:"/trigger ",color:"gray"},{text:"parkour.warp.Jack_o_Giggle",color:"aqua"}]},click_event:{action:"run_command",command:"trigger parkour.warp.Jack_o_Giggle"},extra:[{storage:"pandamium:dictionary",nbt:"parkour.parkour_4.name",interpret:true},"]"]}]

# options
tellraw @s {text:"\nOptions:",bold:true,color:"aqua"}
execute unless score @s hide_parkour_timer matches 1 run tellraw @s [{text:"\nShow Parkour Timer: ",color:"aqua",hover_event:{action:"show_text",value:[{text:"Click to cycle options for\n",color:"aqua"},{text:"Show Parkour Timer",bold:true},{text:"",color:"dark_gray",extra:[{text:"\n• On (Default)",color:"white"},"\n• Off"]}]},click_event:{action:"run_command",command:"trigger options set -5"}},{text:"On",color:"yellow",bold:true}]
execute if score @s hide_parkour_timer matches 1 run tellraw @s [{text:"\nShow Parkour Timer: ",color:"aqua",hover_event:{action:"show_text",value:[{text:"Click to cycle options for\n",color:"aqua"},{text:"Show Parkour Timer",bold:true},{text:"\n• On (Default)",color:"dark_gray",extra:[{text:"\n• Off",color:"white"}]}]},click_event:{action:"run_command",command:"trigger options set -5"}},{text:"Off",color:"yellow",bold:true}]

execute unless score @s optn.parkour.restart_on_fall matches 1 run tellraw @s [{text:"New Attempt on Fall: ",color:"aqua",hover_event:{action:"show_text",value:[{text:"Click to cycle options for\n",color:"aqua"},{text:"New Attempt on Fall",bold:true},{text:"",color:"dark_gray",extra:[{text:"\n• Off (Default)",color:"white"},"\n• On"]},{text:"\nIf On, falling on any course\nwill send you back to the\nbeginning and restart your timer,\nregardless of your checkpoint.\nUseful for speedruns!",color:"gray"}]},click_event:{action:"run_command",command:"trigger options set -15"}},{text:"Off",color:"yellow",bold:true}]
execute if score @s optn.parkour.restart_on_fall matches 1 run tellraw @s [{text:"New Attempt on Fall: ",color:"aqua",hover_event:{action:"show_text",value:[{text:"Click to cycle options for\n",color:"aqua"},{text:"New Attempt on Fall",bold:true},{text:"\n• Off (Default)",color:"dark_gray",extra:[{text:"\n• On",color:"white"}]},{text:"\nIf On, falling on any course\nwill send you back to the\nbeginning and restart your timer,\nregardless of your checkpoint.\nUseful for speedruns!",color:"gray"}]},click_event:{action:"run_command",command:"trigger options set -15"}},{text:"On",color:"yellow",bold:true}]

tellraw @s {text:"=========================",color:"aqua"}
