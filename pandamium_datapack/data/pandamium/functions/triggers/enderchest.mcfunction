tellraw @s [{"text":"==================== ","color":"yellow"},{"text":"Ender Chest","color":"gold"},{"text":" ==================="}]

execute at @a if score @s enderchest = @p id if data entity @p EnderItems[0].id run tellraw @s [{"text":"Slot 0: ","color":"green"},{"nbt":"EnderItems[0].id","entity":"@p","color":"dark_green","bold":"false"},{"text":" | Count: "},{"nbt":"EnderItems[0].Count","entity":"@p","color":"dark_green"},{"text":" | Name: "},{"nbt":"EnderItems[0].tag.display.Name","entity":"@p","interpret":true,"color":"dark_green"}]
execute at @a if score @s enderchest = @p id if data entity @p EnderItems[0].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"EnderItems[0].tag.Enchantments","entity":"@p","color":"dark_green"}]

execute at @a if score @s enderchest = @p id if data entity @p EnderItems[1].id run tellraw @s [{"text":"Slot 1: ","color":"green"},{"nbt":"EnderItems[1].id","entity":"@p","color":"dark_green","bold":"false"},{"text":" | Count: "},{"nbt":"EnderItems[1].Count","entity":"@p","color":"dark_green"},{"text":" | Name: "},{"nbt":"EnderItems[1].tag.display.Name","entity":"@p","interpret":true,"color":"dark_green"}]
execute at @a if score @s enderchest = @p id if data entity @p EnderItems[1].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"EnderItems[1].tag.Enchantments","entity":"@p","color":"dark_green"}]

execute at @a if score @s enderchest = @p id if data entity @p EnderItems[2].id run tellraw @s [{"text":"Slot 2: ","color":"green"},{"nbt":"EnderItems[2].id","entity":"@p","color":"dark_green","bold":"false"},{"text":" | Count: "},{"nbt":"EnderItems[2].Count","entity":"@p","color":"dark_green"},{"text":" | Name: "},{"nbt":"EnderItems[2].tag.display.Name","entity":"@p","interpret":true,"color":"dark_green"}]
execute at @a if score @s enderchest = @p id if data entity @p EnderItems[2].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"EnderItems[2].tag.Enchantments","entity":"@p","color":"dark_green"}]

execute at @a if score @s enderchest = @p id if data entity @p EnderItems[3].id run tellraw @s [{"text":"Slot 3: ","color":"green"},{"nbt":"EnderItems[3].id","entity":"@p","color":"dark_green","bold":"false"},{"text":" | Count: "},{"nbt":"EnderItems[3].Count","entity":"@p","color":"dark_green"},{"text":" | Name: "},{"nbt":"EnderItems[3].tag.display.Name","entity":"@p","interpret":true,"color":"dark_green"}]
execute at @a if score @s enderchest = @p id if data entity @p EnderItems[3].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"EnderItems[3].tag.Enchantments","entity":"@p","color":"dark_green"}]

execute at @a if score @s enderchest = @p id if data entity @p EnderItems[4].id run tellraw @s [{"text":"Slot 4: ","color":"green"},{"nbt":"EnderItems[4].id","entity":"@p","color":"dark_green","bold":"false"},{"text":" | Count: "},{"nbt":"EnderItems[4].Count","entity":"@p","color":"dark_green"},{"text":" | Name: "},{"nbt":"EnderItems[4].tag.display.Name","entity":"@p","interpret":true,"color":"dark_green"}]
execute at @a if score @s enderchest = @p id if data entity @p EnderItems[4].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"EnderItems[4].tag.Enchantments","entity":"@p","color":"dark_green"}]

execute at @a if score @s enderchest = @p id if data entity @p EnderItems[5].id run tellraw @s [{"text":"Slot 5: ","color":"green"},{"nbt":"EnderItems[5].id","entity":"@p","color":"dark_green","bold":"false"},{"text":" | Count: "},{"nbt":"EnderItems[5].Count","entity":"@p","color":"dark_green"},{"text":" | Name: "},{"nbt":"EnderItems[5].tag.display.Name","entity":"@p","interpret":true,"color":"dark_green"}]
execute at @a if score @s enderchest = @p id if data entity @p EnderItems[5].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"EnderItems[5].tag.Enchantments","entity":"@p","color":"dark_green"}]

execute at @a if score @s enderchest = @p id if data entity @p EnderItems[6].id run tellraw @s [{"text":"Slot 6: ","color":"green"},{"nbt":"EnderItems[6].id","entity":"@p","color":"dark_green","bold":"false"},{"text":" | Count: "},{"nbt":"EnderItems[6].Count","entity":"@p","color":"dark_green"},{"text":" | Name: "},{"nbt":"EnderItems[6].tag.display.Name","entity":"@p","interpret":true,"color":"dark_green"}]
execute at @a if score @s enderchest = @p id if data entity @p EnderItems[6].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"EnderItems[6].tag.Enchantments","entity":"@p","color":"dark_green"}]

execute at @a if score @s enderchest = @p id if data entity @p EnderItems[7].id run tellraw @s [{"text":"Slot 7: ","color":"green"},{"nbt":"EnderItems[7].id","entity":"@p","color":"dark_green","bold":"false"},{"text":" | Count: "},{"nbt":"EnderItems[7].Count","entity":"@p","color":"dark_green"},{"text":" | Name: "},{"nbt":"EnderItems[7].tag.display.Name","entity":"@p","interpret":true,"color":"dark_green"}]
execute at @a if score @s enderchest = @p id if data entity @p EnderItems[7].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"EnderItems[7].tag.Enchantments","entity":"@p","color":"dark_green"}]

execute at @a if score @s enderchest = @p id if data entity @p EnderItems[8].id run tellraw @s [{"text":"Slot 8: ","color":"green"},{"nbt":"EnderItems[8].id","entity":"@p","color":"dark_green","bold":"false"},{"text":" | Count: "},{"nbt":"EnderItems[8].Count","entity":"@p","color":"dark_green"},{"text":" | Name: "},{"nbt":"EnderItems[8].tag.display.Name","entity":"@p","interpret":true,"color":"dark_green"}]
execute at @a if score @s enderchest = @p id if data entity @p EnderItems[8].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"EnderItems[8].tag.Enchantments","entity":"@p","color":"dark_green"}]

execute at @a if score @s enderchest = @p id if data entity @p EnderItems[9].id run tellraw @s [{"text":"Slot 9: ","color":"green"},{"nbt":"EnderItems[9].id","entity":"@p","color":"dark_green","bold":"false"},{"text":" | Count: "},{"nbt":"EnderItems[9].Count","entity":"@p","color":"dark_green"},{"text":" | Name: "},{"nbt":"EnderItems[9].tag.display.Name","entity":"@p","interpret":true,"color":"dark_green"}]
execute at @a if score @s enderchest = @p id if data entity @p EnderItems[9].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"EnderItems[9].tag.Enchantments","entity":"@p","color":"dark_green"}]

execute at @a if score @s enderchest = @p id if data entity @p EnderItems[10].id run tellraw @s [{"text":"Slot 10: ","color":"green"},{"nbt":"EnderItems[10].id","entity":"@p","color":"dark_green","bold":"false"},{"text":" | Count: "},{"nbt":"EnderItems[10].Count","entity":"@p","color":"dark_green"},{"text":" | Name: "},{"nbt":"EnderItems[10].tag.display.Name","entity":"@p","interpret":true,"color":"dark_green"}]
execute at @a if score @s enderchest = @p id if data entity @p EnderItems[10].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"EnderItems[10].tag.Enchantments","entity":"@p","color":"dark_green"}]

execute at @a if score @s enderchest = @p id if data entity @p EnderItems[11].id run tellraw @s [{"text":"Slot 11: ","color":"green"},{"nbt":"EnderItems[11].id","entity":"@p","color":"dark_green","bold":"false"},{"text":" | Count: "},{"nbt":"EnderItems[11].Count","entity":"@p","color":"dark_green"},{"text":" | Name: "},{"nbt":"EnderItems[11].tag.display.Name","entity":"@p","interpret":true,"color":"dark_green"}]
execute at @a if score @s enderchest = @p id if data entity @p EnderItems[11].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"EnderItems[11].tag.Enchantments","entity":"@p","color":"dark_green"}]

execute at @a if score @s enderchest = @p id if data entity @p EnderItems[12].id run tellraw @s [{"text":"Slot 12: ","color":"green"},{"nbt":"EnderItems[12].id","entity":"@p","color":"dark_green","bold":"false"},{"text":" | Count: "},{"nbt":"EnderItems[12].Count","entity":"@p","color":"dark_green"},{"text":" | Name: "},{"nbt":"EnderItems[12].tag.display.Name","entity":"@p","interpret":true,"color":"dark_green"}]
execute at @a if score @s enderchest = @p id if data entity @p EnderItems[12].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"EnderItems[12].tag.Enchantments","entity":"@p","color":"dark_green"}]

execute at @a if score @s enderchest = @p id if data entity @p EnderItems[13].id run tellraw @s [{"text":"Slot 13: ","color":"green"},{"nbt":"EnderItems[13].id","entity":"@p","color":"dark_green","bold":"false"},{"text":" | Count: "},{"nbt":"EnderItems[13].Count","entity":"@p","color":"dark_green"},{"text":" | Name: "},{"nbt":"EnderItems[13].tag.display.Name","entity":"@p","interpret":true,"color":"dark_green"}]
execute at @a if score @s enderchest = @p id if data entity @p EnderItems[13].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"EnderItems[13].tag.Enchantments","entity":"@p","color":"dark_green"}]

execute at @a if score @s enderchest = @p id if data entity @p EnderItems[14].id run tellraw @s [{"text":"Slot 14: ","color":"green"},{"nbt":"EnderItems[14].id","entity":"@p","color":"dark_green","bold":"false"},{"text":" | Count: "},{"nbt":"EnderItems[14].Count","entity":"@p","color":"dark_green"},{"text":" | Name: "},{"nbt":"EnderItems[14].tag.display.Name","entity":"@p","interpret":true,"color":"dark_green"}]
execute at @a if score @s enderchest = @p id if data entity @p EnderItems[14].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"EnderItems[14].tag.Enchantments","entity":"@p","color":"dark_green"}]

execute at @a if score @s enderchest = @p id if data entity @p EnderItems[15].id run tellraw @s [{"text":"Slot 15: ","color":"green"},{"nbt":"EnderItems[15].id","entity":"@p","color":"dark_green","bold":"false"},{"text":" | Count: "},{"nbt":"EnderItems[15].Count","entity":"@p","color":"dark_green"},{"text":" | Name: "},{"nbt":"EnderItems[15].tag.display.Name","entity":"@p","interpret":true,"color":"dark_green"}]
execute at @a if score @s enderchest = @p id if data entity @p EnderItems[15].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"EnderItems[15].tag.Enchantments","entity":"@p","color":"dark_green"}]

execute at @a if score @s enderchest = @p id if data entity @p EnderItems[16].id run tellraw @s [{"text":"Slot 16: ","color":"green"},{"nbt":"EnderItems[16].id","entity":"@p","color":"dark_green","bold":"false"},{"text":" | Count: "},{"nbt":"EnderItems[16].Count","entity":"@p","color":"dark_green"},{"text":" | Name: "},{"nbt":"EnderItems[16].tag.display.Name","entity":"@p","interpret":true,"color":"dark_green"}]
execute at @a if score @s enderchest = @p id if data entity @p EnderItems[16].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"EnderItems[16].tag.Enchantments","entity":"@p","color":"dark_green"}]

execute at @a if score @s enderchest = @p id if data entity @p EnderItems[17].id run tellraw @s [{"text":"Slot 17: ","color":"green"},{"nbt":"EnderItems[17].id","entity":"@p","color":"dark_green","bold":"false"},{"text":" | Count: "},{"nbt":"EnderItems[17].Count","entity":"@p","color":"dark_green"},{"text":" | Name: "},{"nbt":"EnderItems[17].tag.display.Name","entity":"@p","interpret":true,"color":"dark_green"}]
execute at @a if score @s enderchest = @p id if data entity @p EnderItems[17].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"EnderItems[17].tag.Enchantments","entity":"@p","color":"dark_green"}]

execute at @a if score @s enderchest = @p id if data entity @p EnderItems[18].id run tellraw @s [{"text":"Slot 18: ","color":"green"},{"nbt":"EnderItems[18].id","entity":"@p","color":"dark_green","bold":"false"},{"text":" | Count: "},{"nbt":"EnderItems[18].Count","entity":"@p","color":"dark_green"},{"text":" | Name: "},{"nbt":"EnderItems[18].tag.display.Name","entity":"@p","interpret":true,"color":"dark_green"}]
execute at @a if score @s enderchest = @p id if data entity @p EnderItems[18].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"EnderItems[18].tag.Enchantments","entity":"@p","color":"dark_green"}]

execute at @a if score @s enderchest = @p id if data entity @p EnderItems[19].id run tellraw @s [{"text":"Slot 19: ","color":"green"},{"nbt":"EnderItems[19].id","entity":"@p","color":"dark_green","bold":"false"},{"text":" | Count: "},{"nbt":"EnderItems[19].Count","entity":"@p","color":"dark_green"},{"text":" | Name: "},{"nbt":"EnderItems[19].tag.display.Name","entity":"@p","interpret":true,"color":"dark_green"}]
execute at @a if score @s enderchest = @p id if data entity @p EnderItems[19].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"EnderItems[19].tag.Enchantments","entity":"@p","color":"dark_green"}]

execute at @a if score @s enderchest = @p id if data entity @p EnderItems[20].id run tellraw @s [{"text":"Slot 20: ","color":"green"},{"nbt":"EnderItems[20].id","entity":"@p","color":"dark_green","bold":"false"},{"text":" | Count: "},{"nbt":"EnderItems[20].Count","entity":"@p","color":"dark_green"},{"text":" | Name: "},{"nbt":"EnderItems[20].tag.display.Name","entity":"@p","interpret":true,"color":"dark_green"}]
execute at @a if score @s enderchest = @p id if data entity @p EnderItems[20].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"EnderItems[20].tag.Enchantments","entity":"@p","color":"dark_green"}]

execute at @a if score @s enderchest = @p id if data entity @p EnderItems[21].id run tellraw @s [{"text":"Slot 21: ","color":"green"},{"nbt":"EnderItems[21].id","entity":"@p","color":"dark_green","bold":"false"},{"text":" | Count: "},{"nbt":"EnderItems[21].Count","entity":"@p","color":"dark_green"},{"text":" | Name: "},{"nbt":"EnderItems[21].tag.display.Name","entity":"@p","interpret":true,"color":"dark_green"}]
execute at @a if score @s enderchest = @p id if data entity @p EnderItems[21].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"EnderItems[21].tag.Enchantments","entity":"@p","color":"dark_green"}]

execute at @a if score @s enderchest = @p id if data entity @p EnderItems[22].id run tellraw @s [{"text":"Slot 22: ","color":"green"},{"nbt":"EnderItems[22].id","entity":"@p","color":"dark_green","bold":"false"},{"text":" | Count: "},{"nbt":"EnderItems[22].Count","entity":"@p","color":"dark_green"},{"text":" | Name: "},{"nbt":"EnderItems[22].tag.display.Name","entity":"@p","interpret":true,"color":"dark_green"}]
execute at @a if score @s enderchest = @p id if data entity @p EnderItems[22].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"EnderItems[22].tag.Enchantments","entity":"@p","color":"dark_green"}]

execute at @a if score @s enderchest = @p id if data entity @p EnderItems[23].id run tellraw @s [{"text":"Slot 23: ","color":"green"},{"nbt":"EnderItems[23].id","entity":"@p","color":"dark_green","bold":"false"},{"text":" | Count: "},{"nbt":"EnderItems[23].Count","entity":"@p","color":"dark_green"},{"text":" | Name: "},{"nbt":"EnderItems[23].tag.display.Name","entity":"@p","interpret":true,"color":"dark_green"}]
execute at @a if score @s enderchest = @p id if data entity @p EnderItems[23].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"EnderItems[23].tag.Enchantments","entity":"@p","color":"dark_green"}]

execute at @a if score @s enderchest = @p id if data entity @p EnderItems[24].id run tellraw @s [{"text":"Slot 24: ","color":"green"},{"nbt":"EnderItems[24].id","entity":"@p","color":"dark_green","bold":"false"},{"text":" | Count: "},{"nbt":"EnderItems[24].Count","entity":"@p","color":"dark_green"},{"text":" | Name: "},{"nbt":"EnderItems[24].tag.display.Name","entity":"@p","interpret":true,"color":"dark_green"}]
execute at @a if score @s enderchest = @p id if data entity @p EnderItems[24].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"EnderItems[24].tag.Enchantments","entity":"@p","color":"dark_green"}]

execute at @a if score @s enderchest = @p id if data entity @p EnderItems[25].id run tellraw @s [{"text":"Slot 25: ","color":"green"},{"nbt":"EnderItems[25].id","entity":"@p","color":"dark_green","bold":"false"},{"text":" | Count: "},{"nbt":"EnderItems[25].Count","entity":"@p","color":"dark_green"},{"text":" | Name: "},{"nbt":"EnderItems[25].tag.display.Name","entity":"@p","interpret":true,"color":"dark_green"}]
execute at @a if score @s enderchest = @p id if data entity @p EnderItems[25].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"EnderItems[25].tag.Enchantments","entity":"@p","color":"dark_green"}]

execute at @a if score @s enderchest = @p id if data entity @p EnderItems[26].id run tellraw @s [{"text":"Slot 26: ","color":"green"},{"nbt":"EnderItems[26].id","entity":"@p","color":"dark_green","bold":"false"},{"text":" | Count: "},{"nbt":"EnderItems[26].Count","entity":"@p","color":"dark_green"},{"text":" | Name: "},{"nbt":"EnderItems[26].tag.display.Name","entity":"@p","interpret":true,"color":"dark_green"}]
execute at @a if score @s enderchest = @p id if data entity @p EnderItems[26].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"EnderItems[26].tag.Enchantments","entity":"@p","color":"dark_green"}]

execute at @a if score @s enderchest = @p id if data entity @p EnderItems[27].id run tellraw @s [{"text":"Slot 27: ","color":"green"},{"nbt":"EnderItems[27].id","entity":"@p","color":"dark_green","bold":"false"},{"text":" | Count: "},{"nbt":"EnderItems[27].Count","entity":"@p","color":"dark_green"},{"text":" | Name: "},{"nbt":"EnderItems[27].tag.display.Name","entity":"@p","interpret":true,"color":"dark_green"}]
execute at @a if score @s enderchest = @p id if data entity @p EnderItems[27].tag.Enchantments run tellraw @s [{"text":"└Ench: ","color":"green"},{"nbt":"EnderItems[27].tag.Enchantments","entity":"@p","color":"dark_green"}]



tellraw @s [{"text":"======================= ","color":"yellow"},{"text":"End","color":"gold"},{"text":" ======================="}]

scoreboard players reset @s enderchest
scoreboard players enable @s enderchest
