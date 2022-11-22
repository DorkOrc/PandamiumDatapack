execute in pandamium:staff_world run setblock 0 0 0 air

execute in pandamium:staff_world run setblock 0 0 0 oak_sign{Text1:'[{"nbt":"item.tag.Enchantments[0].id","storage":"pandamium:containers","color":"green"}," ",{"nbt":"item.tag.Enchantments[0].lvl","storage":"pandamium:containers","color":"gold"}]'}
data remove storage pandamium:containers item.tag.Enchantments[0]
execute if data storage pandamium:containers item.tag.Enchantments[0] in pandamium:staff_world run function pandamium:containers/run/enchantments/iter

execute if data storage pandamium:containers {item:{id:'minecraft:enchanted_book'}} in pandamium:staff_world run tellraw @s [{"text":"└StoredEnchantments: ","color":"aqua"},{"text":"[Stored Enchantments]","color":"dark_purple","hoverEvent":{"action":"show_text","value":[{"nbt":"Text1","block":"0 0 0","interpret":true}]}}]
execute unless data storage pandamium:containers {item:{id:'minecraft:enchanted_book'}} in pandamium:staff_world run tellraw @s [{"text":"└Enchantments: ","color":"aqua"},{"text":"[Enchantments]","color":"dark_purple","hoverEvent":{"action":"show_text","value":[{"nbt":"Text1","block":"0 0 0","interpret":true}]}}]
