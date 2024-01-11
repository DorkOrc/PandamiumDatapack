execute if score @s restart_server matches 1.. run return run tellraw @s [{"text":"[Restart]","color":"dark_red"},{"text":" Confirm server restart: ","color":"red"},{"text":"[✔]","color":"dark_green","hoverEvent":{"action":"show_text","value":[{"text":"Click to restart the server ","color":"dark_green"},{"text":"now","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger restart_server set -1"}}," ",{"text":"[⌛]","color":"blue","hoverEvent":{"action":"show_text","value":[{"text":"Click to restart the server ","color":"blue"},{"text":"in 30 Seconds","bold":true}]},"clickEvent":{"action":"run_command","value":"/trigger restart_server set -2"}}]

execute if score @s restart_server matches -1 run return run function pandamium:triggers/restart_server/force_server_restart

execute if score @s restart_server matches -2 if score <seconds_until_restart> global matches 1.. run return run tellraw @s [{"text":"[Restart]","color":"dark_red"},{"text":" A server restart has already been scheduled!","color":"red"}]
execute if score @s restart_server matches -2 unless score <seconds_until_restart> global matches 1.. run return run function pandamium:triggers/restart_server/schedule_server_restart

execute if score @s restart_server matches -3 if score <seconds_until_restart> global matches 1.. run return run function pandamium:triggers/restart_server/cancel_server_restart
execute if score @s restart_server matches -3 unless score <seconds_until_restart> global matches 1.. run return run tellraw @s [{"text":"[Restart]","color":"dark_red"},{"text":" There is no server restart scheduled!","color":"red"}]
