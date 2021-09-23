execute if score @s restart matches 1.. run tellraw @s [{"text":"[Restart]","color":"dark_red"},{"text":" Confirm Restart! ","color":"red"},{"text":"[✔]","bold":true,"color":"dark_green","hoverEvent":{"action":"show_text","value":{"text":"Restart the Server Now","color":"dark_green"}},"clickEvent":{"action":"run_command","value":"/trigger restart set -1"}}," ",{"text":"[⌛]","bold":true,"color":"blue","hoverEvent":{"action":"show_text","value":{"text":"Restart the Server in 30 Seconds","color":"blue"}},"clickEvent":{"action":"run_command","value":"/trigger restart set -2"}}]

execute if score @s restart matches -1 run kick @a The server was restarted! It will be back in 1-2 minutes.
execute if score @s restart matches -1 run stop

scoreboard players add @a staff_perms 0
execute if score @s restart matches -2 unless score @s staff_alt matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"[Restart] ","color":"red"},{"selector":"@s"}," has scheduled a server restart! ",{"text":"[X]","bold":true,"color":"dark_red","hoverEvent":{"action":"show_text","value":{"text":"Cancel Restart","color":"dark_red"}},"clickEvent":{"action":"run_command","value":"/trigger restart set -3"}}]
execute if score @s restart matches -2 unless score @s staff_alt matches 1 run tellraw @a[scores={staff_perms=..0}] [{"text":"[Restart] ","color":"red"},{"selector":"@s"}," has scheduled a server restart!"]
execute if score @s restart matches -2 if score @s staff_alt matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"[Restart] ","color":"red"},"A staff member has scheduled a server restart! ",{"text":"[X]","bold":true,"color":"dark_red","hoverEvent":{"action":"show_text","value":{"text":"Cancel Restart","color":"dark_red"}},"clickEvent":{"action":"run_command","value":"/trigger restart set -3"}}]
execute if score @s restart matches -2 if score @s staff_alt matches 1 run tellraw @a[scores={staff_perms=..0}] [{"text":"[Restart] ","color":"red"},"A staff member has scheduled a server restart!"]
execute if score @s restart matches -2 run scoreboard players set <restart_countdown> global 30
execute if score @s restart matches -2 run function pandamium:misc/restart_countdown

execute if score @s restart matches -3 unless score <restart_countdown> global matches 1.. run tellraw @s [{"text":"[Restart]","color":"dark_red"},{"text":" The server is not restarting!","color":"red"}]
execute if score @s restart matches -3 if score <restart_countdown> global matches 1.. run tellraw @a [{"text":"[Restart] ","color":"red"},"The server restart was cancelled!"]
execute if score @s restart matches -3 run scoreboard players set <restart_countdown> global -1
execute if score @s restart matches -3 run schedule clear pandamium:misc/restart_countdown

scoreboard players reset @s restart
scoreboard players enable @s restart
