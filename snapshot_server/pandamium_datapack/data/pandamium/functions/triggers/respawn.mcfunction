scoreboard players set <returned> variable 0

execute if score <returned> variable matches 0 store success score <returned> variable if score @s jailed matches 1.. run tellraw @s [{"text":"[Respawn]","color":"dark_red"},{"text":" You cannot use this trigger in jail!","color":"red"}]
execute if score <returned> variable matches 0 store success score <returned> variable if score @s disable_keep_inventory matches 1 run tellraw @s [{"text":"[Respawn]","color":"dark_red"},{"text":" You have disabled Keep-Inventory for yourself! You must re-enable it to use this trigger.","color":"red"}]

execute if score <returned> variable matches 0 if score @s parkour.checkpoint matches 0.. run function pandamium:misc/parkour/actions/cancel/generic
execute if score <returned> variable matches 0 run function pandamium:misc/get_killed

scoreboard players reset @s respawn
scoreboard players enable @s respawn
