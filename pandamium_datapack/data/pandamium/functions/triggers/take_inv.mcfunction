execute at @a if score @s take_inv = @p id run scoreboard players set @p temp_1 0
execute at @a if score @s take_inv = @p id run scoreboard players set @p temp_2 0

execute at @a if score @s take_inv = @p id if data entity @p Inventory[0] run scoreboard players add @p temp_1 1

execute at @a if score @s take_inv = @p id if block -1 52 -1 chest{Items:[]} run scoreboard players add @p temp_2 1
execute at @a if score @s take_inv = @p id if block 0 52 -1 chest{Items:[]} run scoreboard players add @p temp_2 1

execute at @a if score @s take_inv = @p id if score @p temp_1 matches 1.. if score @p temp_2 matches 2 as @p run function pandamium:take/move_inv
execute at @a if score @s take_inv = @p id if score @p temp_1 matches 1.. if score @p temp_2 matches 2 run tellraw @s [{"text":"You took ","color":"green"},{"selector":"@p"},{"text":"'s inventory.","color":"green"}]

execute at @a if score @s take_inv = @p id if score @p temp_1 matches 0 if score @p temp_2 matches 1.. run tellraw @s [{"selector":"@p"},{"text":"'s inventory has nothing to transfer.","color":"red"}]
execute at @a if score @s take_inv = @p id if score @p temp_2 matches 0..1 run tellraw @s [{"text":"The chest under spawn must be emptied.","color":"red"}]

scoreboard players reset @s take_inv
scoreboard players enable @s take_inv
