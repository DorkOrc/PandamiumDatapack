scoreboard players set @s temp_1 0
scoreboard players set @s temp_2 0
scoreboard players set @s temp_3 0

execute at @a if score @s take_binding = @p id run scoreboard players set @s temp_3 1

execute at @a if score @s id = @p id as @p if data entity @p Inventory[{Slot:100b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run scoreboard players set @p temp_1 1
execute at @a if score @s id = @p id as @p if data entity @p Inventory[{Slot:101b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run scoreboard players set @p temp_1 1
execute at @a if score @s id = @p id as @p if data entity @p Inventory[{Slot:102b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run scoreboard players set @p temp_1 1
execute at @a if score @s id = @p id as @p if data entity @p Inventory[{Slot:103b}].tag.Enchantments[{id:"minecraft:binding_curse"}] run scoreboard players set @p temp_1 1

execute if block -4 39 -1 chest{Items:[]} run scoreboard players set @s temp_2 1

execute if score @s temp_3 matches 1 if score @s temp_2 matches 1 if score @s temp_1 matches 1 at @a if score @s take_binding = @p id as @p run function pandamium:take/move_binding
execute if score @s temp_3 matches 1 if score @s temp_2 matches 1 if score @s temp_1 matches 1 at @a if score @s take_binding = @p id as @p run tellraw @s [{"text":"You took ","color":"green"},{"selector":"@p"},"'s bound items."]

execute if score @s temp_3 matches 1 if score @p temp_2 matches 1 if score @s temp_1 matches 0 run tellraw @s [{"text": "[Take Binding] ", "color":"dark_red"},{"selector":"@p"},{"text":" has no bound items to transfer.","color":"red"}]
execute if score @s temp_3 matches 1 if score @s temp_2 matches 0 run tellraw @s [{"text": "[Take Binding]", "color":"dark_red"},{"text":" The chest under spawn must be emptied.","color":"red"}]
execute if score @s temp_3 matches 0 run tellraw @s [{"text":"","color":"red"},{"text": "[Take Binding]", "color":"dark_red"}," No player found with that ID."]



scoreboard players reset @s take_binding
scoreboard players enable @s take_binding
