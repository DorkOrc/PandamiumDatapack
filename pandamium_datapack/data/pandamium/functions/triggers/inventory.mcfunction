scoreboard players set @s temp_1 0
execute at @a if score @s inventory = @p id run scoreboard players set @s temp_1 1
execute if score @s temp_1 matches 0 run tellraw @s [{"text":"","color":"red"},{"text": "[Inventory]", "color":"dark_red"}," No player found with that ID."]

execute if score @s temp_1 matches 1 run tellraw @s [{"text":"===================== ","color":"yellow"},{"text":"Inventory","color":"gold"},{"text":" ===================="}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[0].id run tellraw @s [{"text":"Slot 0: ","color":"green"},{"nbt":"Inventory[0].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[0].Count","entity":"@p","color":""},{"text":" | Name: "},{"nbt":"Inventory[0].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[0].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[0].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[1].id run tellraw @s [{"text":"Slot 1: ","color":"green"},{"nbt":"Inventory[1].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[1].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[1].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[1].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[1].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[2].id run tellraw @s [{"text":"Slot 2: ","color":"green"},{"nbt":"Inventory[2].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[2].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[2].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[2].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[2].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[3].id run tellraw @s [{"text":"Slot 3: ","color":"green"},{"nbt":"Inventory[3].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[3].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[3].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[3].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[3].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[4].id run tellraw @s [{"text":"Slot 4: ","color":"green"},{"nbt":"Inventory[4].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[4].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[4].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[4].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[4].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[5].id run tellraw @s [{"text":"Slot 5: ","color":"green"},{"nbt":"Inventory[5].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[5].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[5].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[5].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[5].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[6].id run tellraw @s [{"text":"Slot 6: ","color":"green"},{"nbt":"Inventory[6].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[6].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[6].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[6].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[6].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[7].id run tellraw @s [{"text":"Slot 7: ","color":"green"},{"nbt":"Inventory[7].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[7].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[7].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[7].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[7].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[8].id run tellraw @s [{"text":"Slot 8: ","color":"green"},{"nbt":"Inventory[8].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[8].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[8].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[8].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[8].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[9].id run tellraw @s [{"text":"Slot 9: ","color":"green"},{"nbt":"Inventory[9].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[9].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[9].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[9].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[9].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[10].id run tellraw @s [{"text":"Slot 10: ","color":"green"},{"nbt":"Inventory[10].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[10].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[10].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[10].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[10].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[11].id run tellraw @s [{"text":"Slot 11: ","color":"green"},{"nbt":"Inventory[11].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[11].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[11].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[11].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[11].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[12].id run tellraw @s [{"text":"Slot 12: ","color":"green"},{"nbt":"Inventory[12].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[12].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[12].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[12].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[12].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[13].id run tellraw @s [{"text":"Slot 13: ","color":"green"},{"nbt":"Inventory[13].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[13].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[13].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[13].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[13].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[14].id run tellraw @s [{"text":"Slot 14: ","color":"green"},{"nbt":"Inventory[14].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[14].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[14].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[14].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[14].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[15].id run tellraw @s [{"text":"Slot 15: ","color":"green"},{"nbt":"Inventory[15].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[15].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[15].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[15].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[15].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[16].id run tellraw @s [{"text":"Slot 16: ","color":"green"},{"nbt":"Inventory[16].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[16].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[16].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[16].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[16].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[17].id run tellraw @s [{"text":"Slot 17: ","color":"green"},{"nbt":"Inventory[17].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[17].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[17].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[17].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[17].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[18].id run tellraw @s [{"text":"Slot 18: ","color":"green"},{"nbt":"Inventory[18].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[18].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[18].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[18].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[18].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[19].id run tellraw @s [{"text":"Slot 19: ","color":"green"},{"nbt":"Inventory[19].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[19].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[19].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[19].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[19].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[20].id run tellraw @s [{"text":"Slot 20: ","color":"green"},{"nbt":"Inventory[20].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[20].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[20].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[20].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[20].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[21].id run tellraw @s [{"text":"Slot 21: ","color":"green"},{"nbt":"Inventory[21].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[21].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[21].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[21].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[21].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[22].id run tellraw @s [{"text":"Slot 22: ","color":"green"},{"nbt":"Inventory[22].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[22].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[22].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[22].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[22].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[23].id run tellraw @s [{"text":"Slot 23: ","color":"green"},{"nbt":"Inventory[23].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[23].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[23].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[23].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[23].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[24].id run tellraw @s [{"text":"Slot 24: ","color":"green"},{"nbt":"Inventory[24].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[24].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[24].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[24].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[24].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[25].id run tellraw @s [{"text":"Slot 25: ","color":"green"},{"nbt":"Inventory[25].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[25].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[25].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[25].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[25].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[26].id run tellraw @s [{"text":"Slot 26: ","color":"green"},{"nbt":"Inventory[26].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[26].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[26].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[26].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[26].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[27].id run tellraw @s [{"text":"Slot 27: ","color":"green"},{"nbt":"Inventory[27].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[27].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[27].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[27].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[27].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[28].id run tellraw @s [{"text":"Slot 28: ","color":"green"},{"nbt":"Inventory[28].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[28].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[28].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[28].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[28].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[29].id run tellraw @s [{"text":"Slot 29: ","color":"green"},{"nbt":"Inventory[29].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[29].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[29].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[29].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[29].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[30].id run tellraw @s [{"text":"Slot 30: ","color":"green"},{"nbt":"Inventory[30].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[30].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[30].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[30].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[30].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[31].id run tellraw @s [{"text":"Slot 31: ","color":"green"},{"nbt":"Inventory[31].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[31].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[31].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[31].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[31].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[32].id run tellraw @s [{"text":"Slot 32: ","color":"green"},{"nbt":"Inventory[32].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[32].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[32].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[32].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[32].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[33].id run tellraw @s [{"text":"Slot 33: ","color":"green"},{"nbt":"Inventory[33].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[33].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[33].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[33].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[33].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[34].id run tellraw @s [{"text":"Slot 34: ","color":"green"},{"nbt":"Inventory[34].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[34].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[34].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[34].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[34].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[35].id run tellraw @s [{"text":"Slot 35: ","color":"green"},{"nbt":"Inventory[35].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[35].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[35].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[35].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[35].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[36].id run tellraw @s [{"text":"Slot 36: ","color":"green"},{"nbt":"Inventory[36].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[36].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[36].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[36].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[36].tag.Enchantments","entity":"@p","color":"aqua"}]



execute at @a if score @s inventory = @p id if data entity @p Inventory[100].id run tellraw @s [{"text":"Slot 100: ","color":"green"},{"nbt":"Inventory[100].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[100].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[100].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[100].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[100].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[101].id run tellraw @s [{"text":"Slot 101: ","color":"green"},{"nbt":"Inventory[101].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[101].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[101].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[101].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[101].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[102].id run tellraw @s [{"text":"Slot 102: ","color":"green"},{"nbt":"Inventory[102].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[102].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[102].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[102].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[102].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[103].id run tellraw @s [{"text":"Slot 103: ","color":"green"},{"nbt":"Inventory[103].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[103].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[103].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[103].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[103].tag.Enchantments","entity":"@p","color":"aqua"}]

execute at @a if score @s inventory = @p id if data entity @p Inventory[-106].id run tellraw @s [{"text":"Slot -106: ","color":"green"},{"nbt":"Inventory[-106].id","entity":"@p","color":"aqua","bold":"false"},{"text":" | Count: "},{"nbt":"Inventory[-106].Count","entity":"@p","color":"aqua"},{"text":" | Name: "},{"nbt":"Inventory[-106].tag.display.Name","entity":"@p","interpret":true,"color":"aqua"}]
execute at @a if score @s inventory = @p id if data entity @p Inventory[-106].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"Inventory[-106].tag.Enchantments","entity":"@p","color":"aqua"}]

execute if score @s temp_1 matches 1 run tellraw @s [{"text":"======================= ","color":"yellow"},{"text":"End","color":"gold"},{"text":" ======================="}]

scoreboard players reset @s inventory
scoreboard players enable @s inventory
