scoreboard players reset <seconds_until_restart> global
schedule clear pandamium:impl/server_restart_countdown/every_second_until_restart

tellraw @s [{"text":"[Restart]","color":"dark_green"},{"text":" Cancelled the server restart!","color":"green"}]
tellraw @a [{"text":"[Info]","color":"blue"},[{"text":" The server restart was ","color":"green"},{"text":"cancelled","color":"aqua"},"!"]]
