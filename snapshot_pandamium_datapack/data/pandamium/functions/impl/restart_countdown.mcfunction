execute if score <restart_countdown> global matches 30 run tellraw @a {"text":"[Restart] The server will restart in 30 seconds!","color":"red"}

execute if score <restart_countdown> global matches 10 run tellraw @a {"text":"[Restart] The server will restart in 10 seconds!","color":"red"}

execute if score <restart_countdown> global matches 2..5 run tellraw @a [{"text":"[Restart] The server will restart in ","color":"red"},{"score":{"name":"<restart_countdown>","objective":"global"}}," seconds!"]
execute if score <restart_countdown> global matches 1 run tellraw @a {"text":"[Restart] The server will restart in 1 second!","color":"red"}

execute if score <restart_countdown> global matches 0 run function pandamium:misc/kick_players_and_stop_server

#

scoreboard players remove <restart_countdown> global 1
execute if score <restart_countdown> global matches 0.. run schedule function pandamium:impl/restart_countdown 1s
