execute if score @s parkour.checkpoint matches 0.. run function pandamium:misc/parkour/actions/cancel/teleporting

execute if score @s jailed matches 1.. run tellraw @s [{"text":"[Respawn]","color":"dark_red"},{"text":" You cannot use this trigger in jail!","color":"red"}]
execute unless score @s jailed matches 1.. if score @s disable_keep_inventory matches 1 run tellraw @s [{"text":"[Respawn]","color":"dark_red"},{"text":" You have disabled Keep-Inventory for yourself! You must re-enable it to use this trigger.","color":"red"}]

execute unless score @s jailed matches 1.. unless score @s disable_keep_inventory matches 1 run function pandamium:misc/get_killed

scoreboard players reset @s respawn
scoreboard players enable @s respawn
