scoreboard players set <seconds_until_restart> global 300
scoreboard players set <server_restart_countdown_start> global 1
schedule function pandamium:impl/server_restart_countdown/every_second_until_restart 1t
