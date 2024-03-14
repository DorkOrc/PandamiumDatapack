execute if score @s jailed matches 1.. run return run tellraw @s [{"text":"[Hide]","color":"dark_red"},{"text":" You cannot use this trigger in jail!","color":"red"}]

scoreboard players set <returned> variable 0

execute store success score <is_hidden> variable if score @s hidden matches 1..

execute if score <is_hidden> variable matches 1 run function pandamium:triggers/hide/do_unhide
execute if score <is_hidden> variable matches 0 run function pandamium:triggers/hide/try_hide
