execute if score <restart_countdown> global matches 30 run tellraw @a {"text":"[Restart] The server will restart in 30 seconds!","color":"red"}

execute if score <restart_countdown> global matches 10 run tellraw @a {"text":"[Restart] The server will restart in 10 seconds!","color":"red"}

execute if score <restart_countdown> global matches 2..5 run tellraw @a [{"text":"[Restart] The server will restart in ","color":"red"},{"score":{"name":"<restart_countdown>","objective":"global"}}," seconds!"]
execute if score <restart_countdown> global matches 1 run tellraw @a {"text":"[Restart] The server will restart in 1 scimd!","color":"red"}

execute if score <restart_countdown> global matches 0 run kick @a The server was restarted by a staff member! It will be back in 1-2 minutes.
execute if score <restart_countdown> global matches 0 run stop

#

scoreboard players remove <restart_countdown> global 1
execute if score <restart_countdown> global matches 0.. run schedule function pandamium:misc/restart_countdown 1s
