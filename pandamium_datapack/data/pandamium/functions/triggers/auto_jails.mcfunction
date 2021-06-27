execute store success score <can_run> variable if data storage pandamium:jail auto_jails[0]

execute if score <can_run> variable matches 0 run tellraw @s [{"text":"[Auto-Jails]","color":"dark_red"},{"text":" There are no auto-jails logged!","color":"red"}]

execute if score <can_run> variable matches 1 run tellraw @s [{"text":"======== ","color":"yellow"},{"text":"Auto Jails","bold":true}," ========",{"text":"\nLog:","bold":true}]
execute if score <can_run> variable matches 1 run function pandamium:misc/jail/print_and_clear_jail_log
execute if score <can_run> variable matches 1 run tellraw @s [{"text":"\nCopy this list into ","color":"yellow"},{"text":"#player-record","color":"#5865F2"},"\n============================"]
execute if score <can_run> variable matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"[Info]","color":"dark_gray"},{"text":" Auto Jails log was cleared.","color":"gray"}]

scoreboard players reset @s auto_jails
scoreboard players enable @s auto_jails
