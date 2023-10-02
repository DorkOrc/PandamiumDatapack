execute if predicate pandamium:last_joined/before_rank_advancement_changes run return 0

function pandamium:player/ranks/update_perms
function pandamium:player/teams/update_base
# <gameplay_rank> variable -> 0..5

execute if score <gameplay_rank> variable matches 0..4 run playsound ui.toast.challenge_complete master @s

execute if score <gameplay_rank> variable matches 1 run tellraw @s [{"text":"[Info]","color":"blue"},{"text":" Congratulations! ","color":"aqua"},[{"text":"You have ranked up to ","color":"green"},{"text":"Player","bold":true,"color":"green"},"! You now have access to:",{"text":"\n • Player prefix\n • Home 3","color":"aqua"}]]
execute if score <gameplay_rank> variable matches 2 run tellraw @s [{"text":"[Info]","color":"blue"},{"text":" Congratulations! ","color":"aqua"},[{"text":"You have ranked up to ","color":"green"},{"text":"Member","bold":true,"color":"dark_green"},"! You now have access to:",{"text":"\n • Member prefix\n • Homes 4 and 5","color":"aqua"}]]
execute if score <gameplay_rank> variable matches 3 run tellraw @s [{"text":"[Info]","color":"blue"},{"text":" Congratulations! ","color":"aqua"},[{"text":"You have ranked up to ","color":"green"},{"text":"Elder","bold":true,"color":"aqua"},"! You now have access to:",{"text":"\n • Elder prefix\n • Homes 6 to 10\n • You can toggle the Chat Reminders option","color":"aqua"}]]
execute if score <gameplay_rank> variable matches 4 run tellraw @s [{"text":"[Info]","color":"blue"},{"text":" Congratulations! ","color":"aqua"},[{"text":"You have ranked up to ","color":"green"},{"text":"Veteran","bold":true,"color":"dark_aqua"},"! You now have access to:",[{"text":"\n • Veteran prefix\n • Home 11 to 15\n • You can make a request to have your own personal banner exhibited at spawn! Open a ticket through our ","color":"aqua"},{"text":"Discord","bold":true,"color":"#5865F2","underlined":true,"hoverEvent":{"action":"show_text","value":[{"text":"Click to join the ","color":"#5865F2"},{"text":"Discord Server","bold":true}]},"clickEvent":{"action":"open_url","value":"http://discord.pandamium.eu/"}}," server to do so."]]]
execute if score <gameplay_rank> variable matches 5 run tellraw @s [{"text":"[Info]","color":"blue"},{"text":" Congratulations! ","color":"aqua"},[{"text":"You have ranked up to ","color":"green"},{"text":"Elite","bold":true,"color":"blue"},"! You now have access to:",{"text":"\n • Elite prefix\n • Homes 16 to 20","color":"aqua"}]]
