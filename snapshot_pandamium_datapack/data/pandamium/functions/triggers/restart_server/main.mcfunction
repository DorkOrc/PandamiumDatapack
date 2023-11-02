function pandamium:utils/triggers/disable_player_suffixes

execute if score @s restart_server matches 1.. run tellraw @s [{"text":"[Restart]","color":"dark_red"},{"text":" Confirm Restart! ","color":"red"},{"text":"[✔]","color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"Click to restart the server ","color":"dark_green"},{"text":"Now","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger restart_server set -1"}}," ",{"text":"[⌛]","color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"Click to restart the server ","color":"blue"},{"text":"in 30 Seconds","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger restart_server set -2"}}]

execute if score @s restart_server matches -1 run function pandamium:misc/kick_players_and_stop_server

execute if score @s restart_server matches -2 if score <restart_countdown> global matches 1.. run tellraw @s [{"text":"[Restart]","color":"dark_red"},{"text":" The countdown has already started!","color":"red"}]
execute if score @s restart_server matches -2 unless score <restart_countdown> global matches 1.. run function pandamium:triggers/restart_server/start_countdown

execute if score @s restart_server matches -3 unless score <restart_countdown> global matches 1.. run tellraw @s [{"text":"[Restart]","color":"dark_red"},{"text":" There is no restart scheduled!","color":"red"}]
execute if score @s restart_server matches -3 if score <restart_countdown> global matches 1.. run function pandamium:triggers/restart_server/cancel_countdown

scoreboard players reset @s restart_server
scoreboard players enable @s restart_server
