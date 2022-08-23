function pandamium:misc/update_teams

playsound ui.toast.challenge_complete master @s

scoreboard players set <rank> variable 0
execute if score @s votes matches 5.. if score @s playtime_ticks matches 360000.. run scoreboard players set <rank> variable 1
execute if score @s votes matches 25.. if score @s playtime_ticks matches 1800000.. run scoreboard players set <rank> variable 2
execute if score @s votes matches 125.. if score @s playtime_ticks matches 9000000.. run scoreboard players set <rank> variable 3
execute if score @s votes matches 500.. if score @s playtime_ticks matches 36000000.. run scoreboard players set <rank> variable 4
execute if score @s votes matches 2500.. if score @s playtime_ticks matches 180000000.. run scoreboard players set <rank> variable 5

execute if score <rank> variable matches 1 run tellraw @s [{"text":"[Info]","color":"blue"},{"text":" Congratulations! ","color":"aqua"},[{"text":"You have ranked up to ","color":"green"},{"text":"Player","bold":true,"color":"green"},"! You now have access to:",{"text":"\n • Player prefix\n • Home 2","color":"aqua"}]]
execute if score <rank> variable matches 2 run tellraw @s [{"text":"[Info]","color":"blue"},{"text":" Congratulations! ","color":"aqua"},[{"text":"You have ranked up to ","color":"green"},{"text":"Member","bold":true,"color":"dark_green"},"! You now have access to:",{"text":"\n • Member prefix\n • Home 3","color":"aqua"}]]
execute if score <rank> variable matches 3 run tellraw @s [{"text":"[Info]","color":"blue"},{"text":" Congratulations! ","color":"aqua"},[{"text":"You have ranked up to ","color":"green"},{"text":"Elder","bold":true,"color":"aqua"},"! You now have access to:",{"text":"\n • Elder prefix\n • Home 4\n • You can toggle the Chat Reminders option","color":"aqua"}]]
execute if score <rank> variable matches 4 run tellraw @s [{"text":"[Info]","color":"blue"},{"text":" Congratulations! ","color":"aqua"},[{"text":"You have ranked up to ","color":"green"},{"text":"Veteran","bold":true,"color":"dark_aqua"},"! You now have access to:",[{"text":"\n • Veteran prefix\n • Home 5\n • You can make a request to have your own personal banner exhibited at spawn! Open a ticket through our ","color":"aqua"},{"text":"Discord","bold":true,"color":"#5865F2","underlined":true,"hoverEvent":{"action":"show_text","value":[{"text":"Click to join the ","color":"#5865F2"},{"text":"Discord Server","bold":true}]},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu/"}}," server to do so."]]]
execute if score <rank> variable matches 5 run tellraw @s [{"text":"[Info]","color":"blue"},{"text":" Congratulations! ","color":"aqua"},[{"text":"You have ranked up to ","color":"green"},{"text":"Elite","bold":true,"color":"blue"},"! You now have access to:",{"text":"\n • Elite prefix\n • Homes 6 and 7","color":"aqua"}]]

function #pandamium:leaderboards/update/playtime
