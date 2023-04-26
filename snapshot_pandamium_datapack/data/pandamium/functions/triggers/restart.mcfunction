execute if score @s restart matches 1.. run tellraw @s [{"text":"[Restart]","color":"dark_red"},{"text":" Confirm Restart! ","color":"red"},{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"Click to restart the server ","color":"dark_green"},{"text":"Now","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger restart set -1"}}," ",{"text":"[⌛]","bold":true,"color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"Click to restart the server ","color":"blue"},{"text":"in 30 Seconds","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger restart set -2"}}]

execute if score @s restart matches -1 run function pandamium:impl/triggers/restart/kick_players_and_stop_server

execute if score @s restart matches -2 if score <restart_countdown> global matches 1.. run tellraw @s [{"text":"[Restart]","color":"dark_red"},{"text":" The countdown has already started!","color":"red"}]
execute if score @s restart matches -2 unless score <restart_countdown> global matches 1.. run function pandamium:impl/triggers/restart/start_countdown

execute if score @s restart matches -3 unless score <restart_countdown> global matches 1.. run tellraw @s [{"text":"[Restart]","color":"dark_red"},{"text":" There is no restart scheduled!","color":"red"}]
execute if score @s restart matches -3 if score <restart_countdown> global matches 1.. run function pandamium:impl/triggers/restart/cancel_countdown

scoreboard players reset @s restart
scoreboard players enable @s restart
