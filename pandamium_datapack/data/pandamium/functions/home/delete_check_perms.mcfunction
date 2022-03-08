scoreboard players set <cannot_delete> variable 0
execute if score <cannot_delete> variable matches 0 store success score <cannot_delete> variable if score @s jailed matches 1.. run tellraw @s [{"text":"[Delhome]","color":"dark_red"},{"text":" You cannot use this trigger in jail!","color":"red"}]

execute if score <cannot_delete> variable matches 0 run function pandamium:home/delete_run
