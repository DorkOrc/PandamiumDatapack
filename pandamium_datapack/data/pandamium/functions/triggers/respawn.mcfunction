execute if score @s jailed matches 1.. run tellraw @s [{"text":"[Info]","color":"dark_red"},{"text":" You cannot use that trigger in jail!","color":"red"}]
execute unless score @s jailed matches 1.. if score @s disable_keep_inv matches 1 run tellraw @s [{"text":"[Info]","color":"dark_red"},{"text":" You have disabled Keep-Inventory for yourself! Re-enable it to use that trigger.","color":"red"}]

execute unless score @s jailed matches 1.. unless score @s disable_keep_inv matches 1 run function pandamium:misc/get_killed

scoreboard players reset @s respawn
scoreboard players enable @s respawn
