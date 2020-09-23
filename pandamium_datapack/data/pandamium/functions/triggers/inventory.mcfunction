
execute if score @s inventory matches 1 run scoreboard players operation @s inventory = @s id

scoreboard players set @s temp_1 0
execute at @a if score @s inventory = @p id run scoreboard players set @s temp_1 1
scoreboard players operation @s selected_player = @s inventory

execute if score @s temp_1 matches 0 run tellraw @s [{"text":"[Inventory]","color":"dark_red"}," ",{"text":"No player found.","color":"red"}]
execute if score @s temp_1 matches 1 at @a if score @s inventory = @p id unless data entity @p Inventory[0] run tellraw @s [{"text":"[Inventory]","color":"dark_red"}," ",{"text":"This player has no items in their inventory.","color":"red"}]
execute if score @s temp_1 matches 1 at @a if score @s inventory = @p id if data entity @p Inventory[0] run tellraw @s [{"text":"","color":"aqua"},{"text":"======== Inventory Items ========","color":"gold","bold":true},{"text":"\nPlayer: ","bold":true},{"selector":"@p"}]
execute if score @s temp_1 matches 1 at @a if score @s inventory = @p id if data entity @p Inventory[0] run function pandamium:see_containers/inventory
execute if score @s temp_1 matches 1 at @a if score @s inventory = @p id if data entity @p Inventory[0] run tellraw @s [{"text":"===============================","color":"gold","bold":true}]

scoreboard players reset @s inventory
scoreboard players enable @s inventory
