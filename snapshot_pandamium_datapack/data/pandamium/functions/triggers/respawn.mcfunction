scoreboard players set <returned> variable 0

execute if score <returned> variable matches 0 if score @s jailed matches 1.. store success score <returned> variable run tellraw @s [{"text":"[Respawn]","color":"dark_red"},{"text":" You cannot use this trigger in jail!","color":"red"}]
execute if score <returned> variable matches 0 if score @s disable_keep_inventory matches 1 store success score <returned> variable run tellraw @s [{"text":"[Respawn]","color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger options"},"hoverEvent":{"action":"show_text","value":[{"text":"/trigger ","color":"gray"},{"text":"options","color":"aqua"}]}},{"text":" You cannot use this trigger because you have disabled Keep-Inventory for yourself! You must re-enable it to use this trigger.","color":"red"}]

execute if score <returned> variable matches 0 run function pandamium:player/respawn

scoreboard players reset @s respawn
scoreboard players enable @s respawn
