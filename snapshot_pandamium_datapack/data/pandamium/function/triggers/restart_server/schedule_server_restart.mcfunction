function pandamium:misc/start_restart_countdown/generic
scoreboard players set <seconds_until_restart> global 30

tellraw @a[scores={staff_perms=1..}] [{"text":"[Staff Info]","color":"dark_gray"},{"text":" Click to cancel the server restart: ","color":"gray"},{"text":"[❌]","color":"dark_red","hoverEvent":{"action":"show_text","value":[{"text":"Click to ","color":"dark_red"},{"text":"cancel","bold":true}," the server restart"]},"clickEvent":{"action":"run_command","value":"/trigger restart_server set -3"}}]
