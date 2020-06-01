execute at @a if score @s take_ec = @p id run scoreboard players set @p variable 0
execute at @a if score @s take_ec = @p id run scoreboard players set @p temp_1 0

execute at @a if score @s take_ec = @p id as @p run function pandamium:take/check_ec

execute at @a if score @s take_ec = @p id if block 1 52 0 chest{Items:[]} run scoreboard players set @p temp_1 1

execute at @a if score @s take_ec = @p id if score @p variable matches 1.. if score @p temp_1 matches 1 as @p run function pandamium:take/move_ec
execute at @a if score @s take_ec = @p id if score @p variable matches 1.. if score @p temp_1 matches 1 run tellraw @s [{"text":"You took ","color":"green"},{"selector":"@p"},{"text":"'s enderchest.","color":"green"}]

execute at @a if score @s take_ec = @p id if score @p variable matches 0 if score @p temp_1 matches 1 run tellraw @s [{"selector":"@p"},{"text":"'s enderchest has nothing to transfer.","color":"red"}]
execute at @a if score @s take_ec = @p id if score @p temp_1 matches 0 run tellraw @s [{"text":"The chest under spawn must be emptied.","color":"red"}]

scoreboard players reset @s take_ec
scoreboard players enable @s take_ec
