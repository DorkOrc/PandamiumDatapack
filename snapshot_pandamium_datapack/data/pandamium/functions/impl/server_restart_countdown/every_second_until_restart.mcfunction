execute if score <seconds_until_restart> global matches 300 run tellraw @a [{"text":"[Warning]","color":"dark_red"},[{"text":" The server will be temporarily closed in\n ","color":"red"},{"text":"5 minutes","bold":true,"color":"yellow"},{"storage":"pandamium:global","nbt":"restart_reason","interpret":true},"!"]]
execute if score <seconds_until_restart> global matches 300 as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1

execute if score <seconds_until_restart> global matches 60 run tellraw @a [{"text":"[Warning]","color":"dark_red"},[{"text":" The server will be temporarily closed in\n ","color":"red"},{"text":"1 minute","bold":true,"color":"yellow"},{"storage":"pandamium:global","nbt":"restart_reason","interpret":true},"!"]]
execute if score <seconds_until_restart> global matches 60 as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1

execute if score <seconds_until_restart> global matches 10 run tellraw @a [{"text":"[Warning]","color":"dark_red"},[{"text":" The server will be temporarily closed in\n ","color":"red"},{"text":"10 seconds","bold":true,"color":"yellow"},{"storage":"pandamium:global","nbt":"restart_reason","interpret":true},"!"]]
execute if score <seconds_until_restart> global matches 10 as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 2 1

execute if score <seconds_until_restart> global matches 2..5 run tellraw @a [{"text":"[Warning]","color":"dark_red"},[{"text":" The server will close in ","color":"red"},[{"score":{"name":"<seconds_until_restart>","objective":"global"},"bold":true,"color":"yellow"}," seconds"],"!"]]
execute if score <seconds_until_restart> global matches 1 run tellraw @a [{"text":"[Warning]","color":"dark_red"},[{"text":" The server will close in ","color":"red"},{"text":"1 second","bold":true,"color":"yellow"},"!"]]

execute if score <seconds_until_restart> global matches 0 summon area_effect_cloud run function pandamium:impl/server_restart_countdown/kick_players_and_stop_server

#

scoreboard players remove <seconds_until_restart> global 1
execute if score <seconds_until_restart> global matches 0.. run schedule function pandamium:impl/server_restart_countdown/every_second_until_restart 1s
