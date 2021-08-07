function pandamium:misc/update_teams

playsound minecraft:ui.toast.challenge_complete master @s

scoreboard players set <rank> variable 0
execute if score @s votes matches 5.. if score @s playtime_ticks matches 360000.. run scoreboard players set <rank> variable 1
execute if score @s votes matches 25.. if score @s playtime_ticks matches 1800000.. run scoreboard players set <rank> variable 2
execute if score @s votes matches 125.. if score @s playtime_ticks matches 9000000.. run scoreboard players set <rank> variable 3
execute if score @s votes matches 500.. if score @s playtime_ticks matches 36000000.. run scoreboard players set <rank> variable 4
execute if score @s votes matches 2500.. if score @s playtime_ticks matches 180000000.. run scoreboard players set <rank> variable 5

execute if score <rank> variable matches 1 run tellraw @s [{"text":"[Info]","color":"blue"},{"text":" Congratulations! ","color":"aqua"},[{"text":"You have ranked up to ","color":"green"},{"text":"Player","bold":true,"color":"green"},"! You now have access to:",{"text":"\n • Player prefix\n • Home 2","color":"aqua"}]]
execute if score <rank> variable matches 2 run tellraw @s [{"text":"[Info]","color":"blue"},{"text":" Congratulations! ","color":"aqua"},[{"text":"You have ranked up to ","color":"green"},{"text":"Member","bold":true,"color":"dark_green"},"! You now have access to:",{"text":"\n • Member prefix\n • Home 3","color":"aqua"}]]

execute if score <rank> variable matches 3 run tellraw @s [{"text":"[Info]","color":"blue"},{"text":" Congratulations! ","color":"aqua"},[{"text":"You have ranked up to ","color":"green"},{"text":"Elder","bold":true,"color":"aqua"},"! You now have access to:",{"text":"\n • Elder prefix\n • Home 4\n • The Auto Messages option","color":"aqua"}]]
execute if score <rank> variable matches 3 if score @s gameplay_perms matches 6.. run tellraw @s {"text":" • The Donator Prefix option","color":"aqua"}

execute if score <rank> variable matches 4 run tellraw @s [{"text":"[Info]","color":"blue"},{"text":" Congratulations! ","color":"aqua"},[{"text":"You have ranked up to ","color":"green"},{"text":"Veteran","bold":true,"color":"dark_aqua"},"! You now have access to:",{"text":"\n • Veteran prefix\n • Home 5","color":"aqua"}]]
execute if score <rank> variable matches 5 run tellraw @s [{"text":"[Info]","color":"blue"},{"text":" Congratulations! ","color":"aqua"},[{"text":"You have ranked up to ","color":"green"},{"text":"Elite","bold":true,"color":"blue"},"! You now have access to:",{"text":"\n • Elite prefix\n • Homes 6 and 7","color":"aqua"}]]
