tellraw @s [{"text":" =============== Inventory ===============","color":"green"}]
execute at @a if score @s inventory = @p id run tellraw @s [{"text":"Slot 0: ","color":"aqua"},{"nbt":"Inventory[0].id","entity":"@s","color":"gold","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[0].Count","entity":"@s","color":"gold"},{"text":" | Name: "},{"nbt":"Inventory[0].tag.display.Name","entity":"@s","interpret":true}]



scoreboard players reset @s inventory
scoreboard players enable @s inventory