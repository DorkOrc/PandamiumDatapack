scoreboard players set <inv_check> variable 0
scoreboard players set <inv_check> temp_1 0

execute at @a if score @s take_inv = @p id as @p run function pandamium:take/check_inv

execute if block 0 52 2 chest{Items:[]} run scoreboard players add <inv_check> temp_1 1
execute if block 0 52 1 chest{Items:[]} run scoreboard players add <inv_check> temp_1 1

execute at @a if score @s take_inv = @p id if score <inv_check> variable matches 1.. if score <inv_check> temp_1 matches 1.. as @p run function pandamium:take/move_inv
execute at @a if score @s take_inv = @p id if score <inv_check> variable matches 1.. if score <inv_check> temp_1 matches 1.. run tellraw @s [{"text":"You took ","color":"green"},{"selector":"@p"},{"text":"'s inventory.","color":"green"}]

execute at @a if score @s take_inv = @p id if score <inv_check> variable matches 0 if score <inv_check> temp_1 matches 1.. run tellraw @s [{"selector":"@p"},{"text":"'s inventory has nothing to transfer.","color":"red"}]
execute at @a if score @s take_inv = @p id if score <inv_check> temp_1 matches 0 run tellraw @s [{"text":"The chest under spawn must be emptied.","color":"red"}]

scoreboard players reset @s take_inv
scoreboard players enable @s take_inv
