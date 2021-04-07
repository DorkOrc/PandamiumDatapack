execute if score <restart_countdown> variable matches 60 run tellraw @a {"text":"[Restart] The server will restart in 60 seconds!","color":"red"}
execute if score <restart_countdown> variable matches 30 run tellraw @a {"text":"[Restart] The server will restart in 30 seconds!","color":"red"}
execute if score <restart_countdown> variable matches 10 run tellraw @a {"text":"[Restart] The server will restart in 10 seconds!","color":"red"}
execute if score <restart_countdown> variable matches 1..5 run tellraw @a [{"text":"[Restart] The server will restart in ","color":"red"},{"score":{"name":"<restart_countdown>","objective":"variable"}}," seconds!"]
execute if score <restart_countdown> variable matches 0 run kick @a The server was restarted! It will be back in 1-2 minutes.
execute if score <restart_countdown> variable matches 0 run stop

execute if score <restart_countdown> variable matches 1.. run schedule function pandamium:misc/restart_countdown 1s
scoreboard players remove <restart_countdown> variable 1
