tellraw @s [{"text":"======== ","color":"aqua"},{"text":"Leader Boards","bold":true}," ========"]
tellraw @s [{"text":"","color":"aqua"},{"text":"Monthly Votes","bold":true},": "]

execute unless data storage pandamium.leader_boards:data leader_boards.monthly_votes.format[0] run tellraw @s {"text":"\nThere are no scores in this leaderboard yet!\n","color":"gray"}

execute if data storage pandamium.leader_boards:data leader_boards.monthly_votes.format[0] run tellraw @s [{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[0].root_text_component","interpret":true},"(",{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[0].place","bold":true},") ",{"nbt":"leader_boards.monthly_votes.format[0].display.name","storage":"pandamium.leader_boards:data","interpret":true}," 🏆 --- ",[{"nbt":"leader_boards.monthly_votes.format[0].value","storage":"pandamium.leader_boards:data","color":"green","bold":true}]]
execute if data storage pandamium.leader_boards:data leader_boards.monthly_votes.format[1] run tellraw @s [{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[1].root_text_component","interpret":true},"(",{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[1].place","bold":true},") ",{"nbt":"leader_boards.monthly_votes.format[1].display.name","storage":"pandamium.leader_boards:data","interpret":true}," --- ",[{"nbt":"leader_boards.monthly_votes.format[1].value","storage":"pandamium.leader_boards:data","color":"green","bold":true}]]
execute if data storage pandamium.leader_boards:data leader_boards.monthly_votes.format[2] run tellraw @s [{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[2].root_text_component","interpret":true},"(",{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[2].place","bold":true},") ",{"nbt":"leader_boards.monthly_votes.format[2].display.name","storage":"pandamium.leader_boards:data","interpret":true}," --- ",[{"nbt":"leader_boards.monthly_votes.format[2].value","storage":"pandamium.leader_boards:data","color":"green","bold":true}]]
execute if data storage pandamium.leader_boards:data leader_boards.monthly_votes.format[3] run tellraw @s [{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[3].root_text_component","interpret":true},"(",{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[3].place","bold":true},") ",{"nbt":"leader_boards.monthly_votes.format[3].display.name","storage":"pandamium.leader_boards:data","interpret":true}," --- ",[{"nbt":"leader_boards.monthly_votes.format[3].value","storage":"pandamium.leader_boards:data","color":"green","bold":true}]]
execute if data storage pandamium.leader_boards:data leader_boards.monthly_votes.format[4] run tellraw @s [{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[4].root_text_component","interpret":true},"(",{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[4].place","bold":true},") ",{"nbt":"leader_boards.monthly_votes.format[4].display.name","storage":"pandamium.leader_boards:data","interpret":true}," --- ",[{"nbt":"leader_boards.monthly_votes.format[4].value","storage":"pandamium.leader_boards:data","color":"green","bold":true}]]
execute if data storage pandamium.leader_boards:data leader_boards.monthly_votes.format[5] run tellraw @s [{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[5].root_text_component","interpret":true},"(",{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[5].place","bold":true},") ",{"nbt":"leader_boards.monthly_votes.format[5].display.name","storage":"pandamium.leader_boards:data","interpret":true}," --- ",[{"nbt":"leader_boards.monthly_votes.format[5].value","storage":"pandamium.leader_boards:data","color":"green","bold":true}]]
execute if data storage pandamium.leader_boards:data leader_boards.monthly_votes.format[6] run tellraw @s [{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[6].root_text_component","interpret":true},"(",{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[6].place","bold":true},") ",{"nbt":"leader_boards.monthly_votes.format[6].display.name","storage":"pandamium.leader_boards:data","interpret":true}," --- ",[{"nbt":"leader_boards.monthly_votes.format[6].value","storage":"pandamium.leader_boards:data","color":"green","bold":true}]]
execute if data storage pandamium.leader_boards:data leader_boards.monthly_votes.format[7] run tellraw @s [{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[7].root_text_component","interpret":true},"(",{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[7].place","bold":true},") ",{"nbt":"leader_boards.monthly_votes.format[7].display.name","storage":"pandamium.leader_boards:data","interpret":true}," --- ",[{"nbt":"leader_boards.monthly_votes.format[7].value","storage":"pandamium.leader_boards:data","color":"green","bold":true}]]
execute if data storage pandamium.leader_boards:data leader_boards.monthly_votes.format[8] run tellraw @s [{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[8].root_text_component","interpret":true},"(",{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[8].place","bold":true},") ",{"nbt":"leader_boards.monthly_votes.format[8].display.name","storage":"pandamium.leader_boards:data","interpret":true}," --- ",[{"nbt":"leader_boards.monthly_votes.format[8].value","storage":"pandamium.leader_boards:data","color":"green","bold":true}]]
execute if data storage pandamium.leader_boards:data leader_boards.monthly_votes.format[9] run tellraw @s [{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[9].root_text_component","interpret":true},"(",{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[9].place","bold":true},") ",{"nbt":"leader_boards.monthly_votes.format[9].display.name","storage":"pandamium.leader_boards:data","interpret":true}," --- ",[{"nbt":"leader_boards.monthly_votes.format[9].value","storage":"pandamium.leader_boards:data","color":"green","bold":true}]]
execute if data storage pandamium.leader_boards:data leader_boards.monthly_votes.format[10] run tellraw @s [{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[10].root_text_component","interpret":true},"(",{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[10].place","bold":true},") ",{"nbt":"leader_boards.monthly_votes.format[10].display.name","storage":"pandamium.leader_boards:data","interpret":true}," --- ",[{"nbt":"leader_boards.monthly_votes.format[10].value","storage":"pandamium.leader_boards:data","color":"green","bold":true}]]
execute if data storage pandamium.leader_boards:data leader_boards.monthly_votes.format[11] run tellraw @s [{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[11].root_text_component","interpret":true},"(",{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[11].place","bold":true},") ",{"nbt":"leader_boards.monthly_votes.format[11].display.name","storage":"pandamium.leader_boards:data","interpret":true}," --- ",[{"nbt":"leader_boards.monthly_votes.format[11].value","storage":"pandamium.leader_boards:data","color":"green","bold":true}]]
execute if data storage pandamium.leader_boards:data leader_boards.monthly_votes.format[12] run tellraw @s [{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[12].root_text_component","interpret":true},"(",{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[12].place","bold":true},") ",{"nbt":"leader_boards.monthly_votes.format[12].display.name","storage":"pandamium.leader_boards:data","interpret":true}," --- ",[{"nbt":"leader_boards.monthly_votes.format[12].value","storage":"pandamium.leader_boards:data","color":"green","bold":true}]]
execute if data storage pandamium.leader_boards:data leader_boards.monthly_votes.format[13] run tellraw @s [{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[13].root_text_component","interpret":true},"(",{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[13].place","bold":true},") ",{"nbt":"leader_boards.monthly_votes.format[13].display.name","storage":"pandamium.leader_boards:data","interpret":true}," --- ",[{"nbt":"leader_boards.monthly_votes.format[13].value","storage":"pandamium.leader_boards:data","color":"green","bold":true}]]
execute if data storage pandamium.leader_boards:data leader_boards.monthly_votes.format[14] run tellraw @s [{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[14].root_text_component","interpret":true},"(",{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[14].place","bold":true},") ",{"nbt":"leader_boards.monthly_votes.format[14].display.name","storage":"pandamium.leader_boards:data","interpret":true}," --- ",[{"nbt":"leader_boards.monthly_votes.format[14].value","storage":"pandamium.leader_boards:data","color":"green","bold":true}]]

tellraw @s {"text":"=================================","color":"aqua"}
