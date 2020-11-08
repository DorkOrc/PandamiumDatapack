execute unless score @s jailed matches 1.. if score @s del_home matches -1 run function pandamium:home/delete_run

execute unless score @s jailed matches 1.. if score @s del_home matches -2 if score @s gameplay_perms matches 1.. run function pandamium:home/delete_run

execute unless score @s jailed matches 1.. if score @s del_home matches -3 if score @s gameplay_perms matches 2.. run function pandamium:home/delete_run

execute unless score @s jailed matches 1.. if score @s del_home matches -4 if score @s gameplay_perms matches 3.. run function pandamium:home/delete_run

execute unless score @s jailed matches 1.. if score @s del_home matches -5 if score @s gameplay_perms matches 4.. run function pandamium:home/delete_run

execute unless score @s jailed matches 1.. if score @s del_home matches -10..-6 if score @s gameplay_perms matches 5.. run function pandamium:home/delete_run

execute unless score @s jailed matches 1.. if score @s del_home matches ..-11 run tellraw @s [{"text":"[Home]","color":"dark_red"},{"text":" This is not a valid home ID! You need to set a number between 1 and 10.","color":"red"}]
execute if score @s jailed matches 1.. run tellraw @s [{"text":"","color":"red"},{"text":"[Info]","color":"dark_red"}," You cannot use this trigger in jail!"]
