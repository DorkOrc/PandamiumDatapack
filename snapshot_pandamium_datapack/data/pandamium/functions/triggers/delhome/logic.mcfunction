execute store success score <confirm> variable if score @s delhome matches ..-1
execute if score @s delhome matches ..-1 run scoreboard players operation @s delhome *= #-1 constant

# delete own home
execute if score @s delhome matches 1..999999 run function pandamium:triggers/delhome/delete_own_home/main
execute if score @s delhome matches 1..999999 run return 0

# delete target's home (srmod+ only)
execute if score @s delhome matches 1000000.. if score @s staff_perms matches 3.. run function pandamium:triggers/delhome/delete_target_home/main
execute if score @s delhome matches 1000000.. if score @s staff_perms matches 3.. run return 0

# else
tellraw @s [{"text":"[Homes]","color":"dark_red"},{"text":" That is not a valid option!","color":"red"}]
