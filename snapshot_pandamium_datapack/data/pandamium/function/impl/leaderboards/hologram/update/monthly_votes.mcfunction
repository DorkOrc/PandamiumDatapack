scoreboard players set <updated> variable 1

tp @s ~ ~ ~ ~ ~
data merge entity @s {line_width:400,alignment:"center",background:3204448319L,brightness:{block:10,sky:10}}
tag @s add hologram
tag @s add hologram.leaderboard
tag @s add hologram.leaderboard.monthly_votes

data modify storage pandamium:temp hologram.lines set value ['["",[{"text":"========= ","color":"aqua"},{"text":"Monthly Votes","bold":true}," ========="]]']

execute unless data storage pandamium.leader_boards:data leader_boards.monthly_votes.format[0] run data modify storage pandamium:temp hologram.lines append value '{"text":"...","color":"gray"}'

execute if data storage pandamium.leader_boards:data leader_boards.monthly_votes.format[0] run data modify storage pandamium:temp hologram.lines append value '[{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[0].root_text_component","interpret":true},"(",{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[0].place","bold":true},") ",{"nbt":"leader_boards.monthly_votes.format[0].display.name","storage":"pandamium.leader_boards:data","interpret":true}," 🜲 - ",[{"nbt":"leader_boards.monthly_votes.format[0].value","storage":"pandamium.leader_boards:data","color":"#7FFF7F","bold":true}]]'
execute if data storage pandamium.leader_boards:data leader_boards.monthly_votes.format[1] run data modify storage pandamium:temp hologram.lines append value '[{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[1].root_text_component","interpret":true},"(",{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[1].place","bold":true},") ",{"nbt":"leader_boards.monthly_votes.format[1].display.name","storage":"pandamium.leader_boards:data","interpret":true}," - ",[{"nbt":"leader_boards.monthly_votes.format[1].value","storage":"pandamium.leader_boards:data","color":"#7FFF7F","bold":true}]]'
execute if data storage pandamium.leader_boards:data leader_boards.monthly_votes.format[2] run data modify storage pandamium:temp hologram.lines append value '[{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[2].root_text_component","interpret":true},"(",{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[2].place","bold":true},") ",{"nbt":"leader_boards.monthly_votes.format[2].display.name","storage":"pandamium.leader_boards:data","interpret":true}," - ",[{"nbt":"leader_boards.monthly_votes.format[2].value","storage":"pandamium.leader_boards:data","color":"#7FFF7F","bold":true}]]'
execute if data storage pandamium.leader_boards:data leader_boards.monthly_votes.format[3] run data modify storage pandamium:temp hologram.lines append value '[{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[3].root_text_component","interpret":true},"(",{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[3].place","bold":true},") ",{"nbt":"leader_boards.monthly_votes.format[3].display.name","storage":"pandamium.leader_boards:data","interpret":true}," - ",[{"nbt":"leader_boards.monthly_votes.format[3].value","storage":"pandamium.leader_boards:data","color":"#7FFF7F","bold":true}]]'
execute if data storage pandamium.leader_boards:data leader_boards.monthly_votes.format[4] run data modify storage pandamium:temp hologram.lines append value '[{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[4].root_text_component","interpret":true},"(",{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[4].place","bold":true},") ",{"nbt":"leader_boards.monthly_votes.format[4].display.name","storage":"pandamium.leader_boards:data","interpret":true}," - ",[{"nbt":"leader_boards.monthly_votes.format[4].value","storage":"pandamium.leader_boards:data","color":"#7FFF7F","bold":true}]]'
execute if data storage pandamium.leader_boards:data leader_boards.monthly_votes.format[5] run data modify storage pandamium:temp hologram.lines append value '[{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[5].root_text_component","interpret":true},"(",{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[5].place","bold":true},") ",{"nbt":"leader_boards.monthly_votes.format[5].display.name","storage":"pandamium.leader_boards:data","interpret":true}," - ",[{"nbt":"leader_boards.monthly_votes.format[5].value","storage":"pandamium.leader_boards:data","color":"#7FFF7F","bold":true}]]'
execute if data storage pandamium.leader_boards:data leader_boards.monthly_votes.format[6] run data modify storage pandamium:temp hologram.lines append value '[{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[6].root_text_component","interpret":true},"(",{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[6].place","bold":true},") ",{"nbt":"leader_boards.monthly_votes.format[6].display.name","storage":"pandamium.leader_boards:data","interpret":true}," - ",[{"nbt":"leader_boards.monthly_votes.format[6].value","storage":"pandamium.leader_boards:data","color":"#7FFF7F","bold":true}]]'
execute if data storage pandamium.leader_boards:data leader_boards.monthly_votes.format[7] run data modify storage pandamium:temp hologram.lines append value '[{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[7].root_text_component","interpret":true},"(",{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[7].place","bold":true},") ",{"nbt":"leader_boards.monthly_votes.format[7].display.name","storage":"pandamium.leader_boards:data","interpret":true}," - ",[{"nbt":"leader_boards.monthly_votes.format[7].value","storage":"pandamium.leader_boards:data","color":"#7FFF7F","bold":true}]]'
execute if data storage pandamium.leader_boards:data leader_boards.monthly_votes.format[8] run data modify storage pandamium:temp hologram.lines append value '[{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[8].root_text_component","interpret":true},"(",{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[8].place","bold":true},") ",{"nbt":"leader_boards.monthly_votes.format[8].display.name","storage":"pandamium.leader_boards:data","interpret":true}," - ",[{"nbt":"leader_boards.monthly_votes.format[8].value","storage":"pandamium.leader_boards:data","color":"#7FFF7F","bold":true}]]'
execute if data storage pandamium.leader_boards:data leader_boards.monthly_votes.format[9] run data modify storage pandamium:temp hologram.lines append value '[{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[9].root_text_component","interpret":true},"(",{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[9].place","bold":true},") ",{"nbt":"leader_boards.monthly_votes.format[9].display.name","storage":"pandamium.leader_boards:data","interpret":true}," - ",[{"nbt":"leader_boards.monthly_votes.format[9].value","storage":"pandamium.leader_boards:data","color":"#7FFF7F","bold":true}]]'
execute if data storage pandamium.leader_boards:data leader_boards.monthly_votes.format[10] run data modify storage pandamium:temp hologram.lines append value '[{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[10].root_text_component","interpret":true},"(",{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[10].place","bold":true},") ",{"nbt":"leader_boards.monthly_votes.format[10].display.name","storage":"pandamium.leader_boards:data","interpret":true}," - ",[{"nbt":"leader_boards.monthly_votes.format[10].value","storage":"pandamium.leader_boards:data","color":"#7FFF7F","bold":true}]]'
execute if data storage pandamium.leader_boards:data leader_boards.monthly_votes.format[11] run data modify storage pandamium:temp hologram.lines append value '[{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[11].root_text_component","interpret":true},"(",{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[11].place","bold":true},") ",{"nbt":"leader_boards.monthly_votes.format[11].display.name","storage":"pandamium.leader_boards:data","interpret":true}," - ",[{"nbt":"leader_boards.monthly_votes.format[11].value","storage":"pandamium.leader_boards:data","color":"#7FFF7F","bold":true}]]'
execute if data storage pandamium.leader_boards:data leader_boards.monthly_votes.format[12] run data modify storage pandamium:temp hologram.lines append value '[{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[12].root_text_component","interpret":true},"(",{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[12].place","bold":true},") ",{"nbt":"leader_boards.monthly_votes.format[12].display.name","storage":"pandamium.leader_boards:data","interpret":true}," - ",[{"nbt":"leader_boards.monthly_votes.format[12].value","storage":"pandamium.leader_boards:data","color":"#7FFF7F","bold":true}]]'
execute if data storage pandamium.leader_boards:data leader_boards.monthly_votes.format[13] run data modify storage pandamium:temp hologram.lines append value '[{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[13].root_text_component","interpret":true},"(",{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[13].place","bold":true},") ",{"nbt":"leader_boards.monthly_votes.format[13].display.name","storage":"pandamium.leader_boards:data","interpret":true}," - ",[{"nbt":"leader_boards.monthly_votes.format[13].value","storage":"pandamium.leader_boards:data","color":"#7FFF7F","bold":true}]]'
execute if data storage pandamium.leader_boards:data leader_boards.monthly_votes.format[14] run data modify storage pandamium:temp hologram.lines append value '[{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[14].root_text_component","interpret":true},"(",{"storage":"pandamium.leader_boards:data","nbt":"leader_boards.monthly_votes.format[14].place","bold":true},") ",{"nbt":"leader_boards.monthly_votes.format[14].display.name","storage":"pandamium.leader_boards:data","interpret":true}," - ",[{"nbt":"leader_boards.monthly_votes.format[14].value","storage":"pandamium.leader_boards:data","color":"#7FFF7F","bold":true}]]'

data modify storage pandamium:temp hologram.lines append value '{"text":"==================================","color":"aqua"}'

function pandamium:impl/leaderboards/hologram/set_text_from_lines