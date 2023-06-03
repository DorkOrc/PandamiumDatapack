tellraw @a [{"text":"[Restart]","color":"red"}," The server restart was cancelled!"]

scoreboard players set <restart_countdown> global -1
schedule clear pandamium:impl/restart_countdown
