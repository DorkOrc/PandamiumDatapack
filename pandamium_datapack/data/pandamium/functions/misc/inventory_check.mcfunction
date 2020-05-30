scoreboard players set @s temp_1 0

execute if data entity @s Inventory[0].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[1].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[2].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[3].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[4].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[5].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[6].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[7].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[8].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[9].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[10].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[11].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[12].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[13].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[14].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[15].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[16].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[17].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[18].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[19].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[20].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[21].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[22].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[23].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[24].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[25].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[26].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[27].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[28].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[29].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[30].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[31].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[32].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[33].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[34].id run scoreboard players add @s temp_1 1
execute if data entity @s Inventory[35].id run scoreboard players add @s temp_1 1

execute if score @s temp_1 matches 36.. unless score @s vote_shop matches 1 unless score @s vote_shop matches -9 unless score @s vote_shop matches -8 run tellraw @s [{"text":"Error: Your inventory is full! ","color":"red"}]
execute if score @s temp_1 matches 36.. run scoreboard players reset @s vote_shop
