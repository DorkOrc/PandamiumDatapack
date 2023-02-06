execute in pandamium:staff_world run setblock 0 0 0 oak_sign
data modify storage pandamium:containers enchantments set value []
execute in pandamium:staff_world run function pandamium:containers/run/enchantments/iter

execute if data storage pandamium:containers {item:{id:'minecraft:enchanted_book'}} in pandamium:staff_world run tellraw @s [{"text":"└StoredEnchantments: ","color":"aqua"},{"text":"[Stored Enchantments]","color":"dark_purple","hoverEvent":{"action":"show_text","value":[{"nbt":"enchantments[]","storage":"pandamium:containers","interpret":true,"separator":"\n"}]}}]
execute unless data storage pandamium:containers {item:{id:'minecraft:enchanted_book'}} in pandamium:staff_world run tellraw @s [{"text":"└Enchantments: ","color":"aqua"},{"text":"[Enchantments]","color":"dark_purple","hoverEvent":{"action":"show_text","value":[{"nbt":"enchantments[]","storage":"pandamium:containers","interpret":true,"separator":"\n"}]}}]
