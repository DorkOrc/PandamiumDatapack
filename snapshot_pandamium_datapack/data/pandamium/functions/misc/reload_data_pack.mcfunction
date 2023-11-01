reload

execute if score <reload_data_pack> global matches 1 run tellraw @a[scores={staff_perms=1..}] [{"text":"[Staff Info]","color":"dark_gray"},{"text":" Data pack was reloaded.","color":"gray"}]
scoreboard players reset <reload_data_pack> global 
